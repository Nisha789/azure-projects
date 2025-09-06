# 💳 Fintech SQL Data Migration Pipeline

## 📖 Project Overview
The **Fintech SQL Data Migration Pipeline** is designed to extract financial datasets (Customers, Accounts, Loans, Payments, and Transactions) from **Azure SQL Database**, stage them in **Azure Data Lake Storage (ADLS)**, and transform them into optimized, analytics-ready **Delta tables** using **Azure Synapse** and **PySpark notebooks**.

This project demonstrates a **modern data lakehouse approach**, following the **Bronze → Silver → Gold** architecture for reliability, scalability, and performance.

<!-- --- -->

## 🛠️ Tools and Technologies

- Azure Data Lake Storage (ADLS) – Hierarchical data lake with bronze, silver, and gold containers  
- Azure SQL Database – Source system for financial datasets  
- Azure Synapse Analytics – Orchestration and pipeline management  
- PySpark – Data transformation and enrichment (Bronze → Silver → Gold)  
- Delta Lake – Storage format for reliable, ACID-compliant tables  
- Azure Notifications – Email alerts for pipeline success or failure  
- SQL – Schema creation and downstream analytical queries  

<!-- --- -->

## 🚀 Architecture Overview
```plaintext

         ┌────────────────────┐
         │ Azure SQL Database │
         │ (Source Tables)    │
         └─────────┬──────────┘
                   │
           [Synapse Pipeline]
                   │
     ┌─────────────┴──────────────┐
     │ 1. Lookup Activity         │
     │ 2. ForEach Copy to Bronze  │
     │ 3. PySpark Notebooks       │
     │    (Bronze → Silver → Gold)│
     │ 4. Notifications (Email)   │
     └─────────────┬──────────────┘
                   │
      ┌────────────┴───────────────┐
      │ Azure Data Lake Storage     │
      │ bronze/ → silver/ → gold/   │
      └────────────────────────────┘
```

<!-- --- -->

## 📊 Data Flow Steps

### 1. Ingestion – Azure SQL → Bronze
- Source tables: Customers, Accounts, Loans, Payments, Transactions  
- Synapse pipeline Lookup activity retrieves the table list dynamically  
- ForEach activity copies data from SQL to Bronze ADLS containers in Parquet format  

### 2. Transformation – Bronze → Silver
- Data cleaning and enrichment performed using PySpark notebooks  
- Sensitive fields such as emails are masked  
- Derived fields such as total interest, loan duration, and transaction category are calculated  

### 3. Data Modeling – Silver → Gold
- Transforms data into a dimensional star schema for analytics  
- Dimension tables: dim_customers, dim_accounts, dim_loans  
- Fact tables: fact_payments, fact_transactions  
- Designed for BI and reporting tools to consume efficiently  

### 4. Notification & Monitoring
- Success and failure events trigger email notifications  
- Provides operational visibility for data engineers  

<!-- --- -->

## ⚙️ Project Workflow

1. Setup ADLS: Create bronze, silver, and gold containers  
2. Deploy Azure SQL Source: Create tables and populate with mock financial data  
3. Create Synapse Pipeline: Lookup + ForEach activities for ingestion, notebook activities for transformations  
4. Run PySpark Notebooks: Bronze → Silver for cleaning, Silver → Gold for modeling  
5. Verify Output: Confirm curated data in the gold container ready for analytics  

<!-- --- -->

## 🧠 Key Optimizations & Design Decisions

- Layered Architecture (Bronze → Silver → Gold) improves governance and quality  
- Delta format ensures ACID compliance, schema evolution, and time travel  
- Modular notebooks allow each dataset to be transformed independently  
- Scalable Synapse pipeline pattern can easily extend to more datasets  

<!-- --- -->

## 🔮 Future Enhancements

- Power BI integration for real-time dashboards  
- Data quality framework with automated validation rules  
- Parameterization to make table list and paths fully dynamic  
- CI/CD automation using Azure DevOps pipelines  

## 📂 Repository Link

🔗 [GitHub Repository](https://github.com/Nisha789/azure-projects/tree/main/fintech-data-migration-project)


## 🤝 Contributions

Contributions are welcome!  
If you'd like to contribute, please **fork** the repository and submit a **pull request** with your enhancements.


## 📄 License

This project is licensed under the **MIT License** – see the [LICENSE](./LICENSE) file for details.

## 📚 References

- [Azure Data Lake Storage Documentation](https://learn.microsoft.com/en-us/azure/storage/data-lake-storage/)  
- [Azure Synapse Analytics Documentation](https://learn.microsoft.com/en-us/azure/synapse-analytics/)  
- [PySpark Official Documentation](https://spark.apache.org/docs/latest/api/python/)  
- [Delta Lake Documentation](https://delta.io/)  
- [Azure SQL Database Documentation](https://learn.microsoft.com/en-us/azure/azure-sql/)

## 🙏 Acknowledgments

- Special thanks to the **Azure team** for providing services like **Synapse Analytics**, **Data Lake Storage**, and **Azure SQL Database**.  
- Thanks to the **open-source community** for PySpark and Delta Lake, which make large-scale data transformation efficient.  
- Inspired by modern **data lakehouse architecture patterns** for designing scalable ETL pipelines.


## 🙋‍♀️ Author

**Nisha S**  
Azure Data Engineer | Designing and optimizing real-time data pipelines and scalable analytics solutions.

📫 [LinkedIn](https://www.linkedin.com/in/nisha-data-ai/)
