# 🎟️ BookMyShow Real-Time Ticket Streaming

## Project Overview

The **BookMyShow Real-Time Ticket Streaming** project demonstrates how to process **live ticket bookings** and **payments** in real time using **Azure Event Hub**, **Stream Analytics**, and **Synapse Analytics**.  

This pipeline simulates high-volume ticketing events (bookings & payments) flowing into an Event Hub, transforms and correlates them in Stream Analytics, and then stores the enriched data in a Synapse Data Warehouse for downstream reporting and analytics.

<!-- --- -->

## 🛠️ Tools and Technologies

- **Azure Event Hub** – High-throughput ingestion of streaming booking and payment events
- **Azure Stream Analytics** – Real-time event transformation, enrichment, and windowed joins
- **Azure Synapse Analytics** – Data warehousing and analytics for downstream BI
- **Python** – Event generation (simulated bookings and payments)
- **SQL** – Stream Analytics query logic for data transformation and joining

<!-- --- -->

## 🚀 Architecture Overview

```plaintext
    +-------------------+           +---------------------+
    | Python Booking &  |           | Python Payment      |
    | Payment Generator |           | Generator Script    |
    +---------+---------+           +----------+----------+
              |                               |
              v                               v
       [Azure Event Hub - Bookings]   [Azure Event Hub - Payments]
              \                               /
               \                             /
                +---------------------------+
                |     Azure Stream Analytics|
                | (Transformation + Windowed|
                |            Join)          |
                +-------------+-------------+
                              |
                              v
                   [Azure Synapse Analytics]
                   (Consolidated Fact Table)
```

<!-- --- -->

## 📊 Data Flow

### **1. Event Generation** (Python Scripts)

- **Bookings** and **Payments** are simulated using Python scripts.
- Both event types are sent to their respective **Event Hub namespaces**.

### **2. Real-Time Processing** (Stream Analytics)

- **Stream Analytics** consumes both streams.
- Key transformations include:
  - **Type casting** (e.g., booking and payment times)
  - **Array expansion** for seats
  - **Event category classification** based on event names
  - **Window-based join** between booking and payment events (within a 2-minute window)

### **3. Data Storage & Analytics** (Synapse DWH)

- Transformed and joined data is persisted into **Synapse Analytics**.
- This data serves as the **single source of truth** for reporting (e.g., bookings per category, peak booking hours, payment methods used).

<!-- --- -->

## ⚙️ Project Workflow

1. **Run the Python Scripts**  
   Generate simulated bookings and payments into **Azure Event Hub**.

   ```bash
   python generate_bookings.py
   python generate_payments.py
   ```

2. **Configure Azure Stream Analytics**  
   - Create inputs (Event Hubs: bookings & payments)
   - Apply the transformation query
   - Configure output to **Azure Synapse Analytics**

3. **Monitor Data in Synapse**  
   - Query the consolidated table to analyze booking & payment trends.

<!-- --- -->

## 🧠 Key Features & Optimizations

- **Windowed Join** – Ensures booking and payment events are correlated within a defined time window.
- **Categorization Logic** – Dynamically classifies events (Concert, Play, Movie, etc.).
- **Scalability** – Designed using Azure native, horizontally scalable components.
- **Real-Time Analytics** – Near-real-time visibility into sales, peak hours, and payment preferences.

<!-- --- -->

## 🔄 Future Enhancements

- **Power BI Dashboards** for real-time ticketing insights.
- **Fraud Detection** rules based on unusual payment behavior.
- **Event Replay** for testing pipeline resilience under high load.

<!-- --- -->

## 📂 Repository Link

🔗 [GitHub Repository](https://github.com/Nisha789/azure-projects/tree/main/bookmyshow-project)


<!-- --- -->
## 🤝 Contributions

Contributions are welcome!  
If you'd like to contribute, please **fork** the repository and submit a **pull request** with your enhancements.

<!-- --- -->

## 📄 License

This project is licensed under the **MIT License** – see the [LICENSE](./LICENSE) file for details.

## 📚 References
- [Azure Event Hubs Documentation](https://learn.microsoft.com/azure/event-hubs/)
- [Azure Stream Analytics Documentation](https://learn.microsoft.com/azure/stream-analytics/)
- [Azure Synapse Analytics Documentation](https://learn.microsoft.com/azure/synapse-analytics/)
- [Python SDK for Azure](https://learn.microsoft.com/azure/developer/python/)

<!-- --- -->

## 🙏 Acknowledgments
Special thanks to:
- The Microsoft Azure team for providing scalable, production-ready cloud data services.
- The open-source community for Python and SQL libraries used in simulating and processing streaming data.
- Inspiration from large-scale ticketing platforms for real-world use case modeling.

<!-- --- -->

## 🙋‍♀️ Author

**Nisha S**  
Azure Data Engineer | Designing and optimizing real-time data pipelines and scalable analytics solutions.

📫 [LinkedIn](https://www.linkedin.com/in/nisha-data-ai/)
