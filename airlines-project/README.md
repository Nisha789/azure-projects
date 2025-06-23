# ✈️ Airlines Data Incremental Processing with CI/CD

**Author**: Nisha S  
**Date**: February 2025  

---

## 🎯 Project Overview

An Azure-based data engineering solution that incrementally ingests and transforms daily airlines flight data. Built using Azure Data Factory (ADF) and Azure DevOps CI/CD pipelines, the solution automatically processes new data files, enriches them with airport metadata, and writes the results to Azure Data Lake Store (ADLS).

---

## 🔧 Tech Stack

| Component         | Purpose                                               |
|------------------|--------------------------------------------------------|
| Azure Data Factory | Orchestrate data workflows (GetMetadata, If Condition, Data Flow) |
| Azure Data Lake Storage Gen2 | Source and sink storage for raw and processed data |
| Azure DevOps      | Git repo, CI/CD pipelines, release triggers           |
| ARM Templates     | Infrastructure as Code for ADF factory deployment     |

---

## 🧩 Pipeline Architecture

```text
ADLS (raw daily flights files)
    └─(GetMetadata → checks new files exist)

    If Exists? ──▶ Data Flow (join transformation) ──▶ ADLS (processed output)
         │
         └─▶ End (no new data)
```

## 🔗 Linked Services

- Connect to **ADLS Gen2**

---

## 📊 Datasets

- **AirportDimData** – Airport metadata  
- **DailyFlightsData** – New/daily flight CSV/JSON files  
- **ProcessedData** – Sink for enriched output results  

---

## 🧪 Pipeline: `airPipeline`

### Components:

- **GetMetadata**  
  - Detects new daily flight file(s) in ADLS  

- **If Condition**  
  - Proceeds only if a new file exists  

- **Set Variable**  
  - Stores metadata results for control flow  

- **Data Flow**  
  - Reads: `AirportDimData`, `DailyFlightsData`  
  - Joins: On airport IDs  
  - Outputs:  
    - `Carrier`, `DepDelay`, `ArrDelay`  
    - `DepCity`, `DepState`, `DepAirportName`  
    - `ArrCity`, `ArrState`, `ArrAirportName`  
  - Writes: To `ProcessedData`  

---

## 🛠️ CI/CD Implementation (Azure DevOps)

### 🔁 Repository Setup

- Created project: `airlines_data_pipeline_project`  
- Git repo: `airlines_cicd` (default branch: `main`)  
- ADF "Publish" pushes to `adf_publish` branch  

### 📦 ARM Template Generation

- ADF `Publish` generates:
  - `ARMTemplateForFactory.json`
  - `ARMTemplateParametersForFactory.json`
- Stored under: `airlinesadfdev/`  

### 🚀 Release Pipeline

- **Trigger**: Push to `adf_publish`  
- **Artifact**: `airlines_cicd` repo  
- **Stage**: `ProdDeployment` using **Azure Resource Group Deployment**  
  - Deploys ARM template to target RG: `rg-demo-neu` (North Europe)  
  - Overrides parameters: Factory name, ADLS linked service, credentials  

### 👷 Agent Pools

- Used both:
  - Microsoft-hosted agents (`Azure Pipelines`)  
  - Self-hosted agents (`MyLaptop`)  

### 🔄 Continuous Deployment

- Enabled "Continuous deployment trigger"  
- Automatically deploys to Prod on `adf_publish` commit  

---

## 🚀 How to Use

1. Place new daily flight file in **ADLS raw folder**  
2. Commit code changes in ADF  
3. Click **Publish** → pushes to `adf_publish`  
4. DevOps release is triggered → Deploys updated ADF  
5. ADF pipeline runs (manual/scheduled) → Writes enriched output to ADLS  

---

## ✅ Key Highlights

- ✅ **Incremental processing** using `GetMetadata` → `If Condition`  
- ✅ **Schema-agnostic transformation** via ADF **Data Flows**  
- ✅ **Fully automated CI/CD:** ADF → ARM → Azure DevOps  
- ✅ Infrastructure as Code (IaC) using **ARM templates**  
- ✅ **Hybrid agents** for flexibility across dev/test/prod environments  

## 📁 Repo Structure
```
/
└── airlines_cicd/
    ├── dataflow/
    │   └─ AirlineDataTransformation.json         ← ADF Data Flow definition
    ├── dataset/
    │   ├─ AirportDimData.json
    │   ├─ DailyFlightsData.json
    │   └─ ProcessedData_DS.json                 ← Dataset configs
    ├── factory/
    │   └─ airlinesadfdev.json                   ← ADF Factory metadata
    ├── linkedService/
    │   └─ ADLS_LS.json                          ← ADLS linked service
    ├── pipeline/
    │   ├─ airlinePipeline.json
    │   ├─ NewDemoPipeline.json
    │   └─ WaitPipeline.json
    ├── airlinesadfdev/                          ← ARM artifacts published
    │   ├─ ARMTemplateForFactory.json
    │   └─ ARMTemplateParametersForFactory.json
    └── README.md                                ← (this file)
```

## 📌 Future Improvements

- Add **parameterized scheduling** for dynamic file arrival windows  
- Implement **unit tests** for Data Flow logic using custom datasets  
- Extend to **multi-environment CI/CD** (dev/test/prod branches)  
- Introduce **logging & alerting** for pipeline failures or high latency  

---

## ✅ Getting Started

1. **Clone** the repository  
2. Link **Azure Data Factory UI** to Azure DevOps repo  
3. **Publish** from ADF → generates `adf_publish` branch with ARM code  
4. Configure **Azure DevOps Release pipeline**:  
   - Connect artifact (from Git repo)  
   - Add ARM deployment task  
5. **Push** code → Release pipeline auto-deploys ADF  
6. Trigger pipeline run manually or on schedule in Azure  

---

## 📚 References

- [Azure Data Factory Documentation: Data Flow & GetMetadata](https://learn.microsoft.com/en-us/azure/data-factory/introduction)  
- [ARM Templates for ADF Deployment](https://learn.microsoft.com/en-us/azure/data-factory/continuous-integration-deployment)  
- [Azure DevOps Release Pipelines with ARM Templates](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/artifacts)  

## 🤝 Contributions

Contributions are welcome!  
If you'd like to contribute, please **fork** the repository and submit a **pull request** with your enhancements.

---

## 📄 License

This project is licensed under the **MIT License** – see the [LICENSE](./LICENSE) file for details.

---

## 🙏 Acknowledgments

Special thanks to:

- **Microsoft Azure** – for providing a comprehensive cloud platform including Data Factory, ADLS, and DevOps services.  
- **Azure Data Factory (ADF)** – for its powerful visual interface and scalable data integration capabilities.  
- **Azure DevOps** – for enabling smooth CI/CD automation and version control integration.  
- **ARM Templates** – for supporting infrastructure as code and repeatable deployments.  

Grateful for the rich documentation, tutorials, and community support that helped shape and complete this project successfully.
