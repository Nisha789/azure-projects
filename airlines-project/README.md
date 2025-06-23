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

- ✅ Incremental processing using `GetMetadata` → `If Condition`  
- ✅ Schema-agnostic transformation via ADF **Data Flows**  
- ✅ Fully automated CI/CD: ADF → ARM → Azure DevOps  
- ✅ Infrastructure as Code (IaC) using **ARM templates**  
- ✅ Hybrid agents for flexibility across dev/test/prod environments  
