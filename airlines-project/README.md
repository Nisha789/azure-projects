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
