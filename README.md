# ☁️ Azure Data Engineering Projects

Welcome to my **Azure Data Engineering Projects** repository!  
This repository contains multiple end-to-end projects demonstrating **data ingestion, transformation, and analytics workflows** using **Azure Data Factory, Azure Data Lake Storage (ADLS), Azure Synapse Analytics, PySpark, and SQL**.

Each project showcases real-world scenarios and implements scalable **data pipeline architectures** for batch and real-time processing.

---

## 📂 Projects Overview

### 1. [AirBnB CDC Ingestion Pipeline](./airbnb-project)
- Ingests and aggregates **Customer** and **Booking** data using **ADLS, Cosmos DB, ADF, and Synapse**.  
- Implements **Change Data Capture (CDC)** for efficient incremental data loads.  
- Applies transformations and aggregation for analytics-ready data tables.  

### 2. [Airlines Data Pipeline Project](./airlines-project)
- Processes **flight schedules, bookings, and passenger data** from multiple sources.  
- Uses **Azure Data Factory** and **Synapse Analytics** for batch and streaming ingestion.  
- Provides clean, curated datasets for reporting and visualization.  

### 3. [BookMyShow Real-Time Ticket Streaming](./bookmyshow-project)
- Ingests **booking and payment events** in real-time using **Azure Event Hub and Stream Analytics**.  
- Transforms and joins streams to generate **analytics-ready tables in Synapse**.  
- Implements window-based joins and event-time processing for **real-time ticket insights**.  

### 4. [Fintech SQL Data Migration Pipeline](./fintech-data-migration-project)
- Migrates **financial datasets** (Customers, Accounts, Loans, Payments, Transactions) from **Azure SQL** to **ADLS** and **Synapse**.  
- Implements a **Bronze → Silver → Gold** layered architecture for scalable analytics.  
- Uses **PySpark notebooks** for transformations and **Delta Lake** for ACID-compliant storage.  

---

## 🛠️ Tools & Technologies Across Projects

- **Azure Data Lake Storage (ADLS)** – Raw, staged, and curated data storage  
- **Azure Data Factory (ADF)** – Orchestration and ETL pipelines  
- **Azure Synapse Analytics** – Data warehousing and SQL transformation  
- **PySpark & Delta Lake** – Scalable data transformation and ACID-compliant tables  
- **Azure Event Hub & Stream Analytics** – Real-time data ingestion (BookMyShow project)  
- **Azure SQL & Cosmos DB** – Source database systems  
- **SQL** – Transformation, aggregation, and analytics  

---

## 🔮 Future Enhancements

- Integration with **Power BI** or other BI tools for interactive dashboards  
- CI/CD automation using **Azure DevOps pipelines**  
- Enhanced **data quality and monitoring frameworks** across pipelines  

---

## 🙋‍♀️ Author

**Nisha S**  
Azure Data Engineer | Passionate about building **scalable and real-time data solutions**  

🔗 [LinkedIn](https://www.linkedin.com/in/nisha-data-ai/)  
🔗 [GitHub Profile](https://github.com/Nisha789)
