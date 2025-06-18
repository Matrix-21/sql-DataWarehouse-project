📊 Data Warehouse and Analytics Project (SQL Server – Medallion Architecture)

A full-cycle Data Engineering and Analytics portfolio project showcasing the design, implementation, and validation of a modern data warehouse using SQL Server. The project simulates an enterprise-grade pipeline using Medallion Architecture (Bronze → Silver → Gold) and demonstrates core skills in ETL, data modeling, quality checks, and reporting.

🚀 Key Highlights

    ✅ Built using Microsoft SQL Server and follows best practices for scalable data warehousing.
    ✅ Implemented ETL pipelines to ingest, cleanse, and transform raw ERP and CRM datasets from CSV files.
    ✅ Designed star schema models and created analytical views ready for BI consumption.
    ✅ Integrated data quality validation scripts to ensure trust and integrity in the pipeline.
    ✅ Fully documented, modular, and ideal for recruiters to evaluate real-world, production-like skills.


🧱 Data Architecture: Medallion Pattern

This project implements the Medallion Architecture with three progressive layers:
![Data Architecture](docs/architecture.png)
Layer	Purpose	Contents
🥉 Bronze	Raw staging layer	Data loaded directly from ERP/CRM CSVs
🥈 Silver	Cleansed & transformed	Standardized, typed, deduplicated tables
🥇 Gold	Analytics-ready	Dimension & fact views in star schema for BI tools

Architecture
📘 Project Modules
🔹 1. Bronze Layer – Raw Data Ingestion

      Loads raw data using BULK INSERT.
      Data stored as-is in staging tables.
      Adds dwh_create_date for tracking load timestamps.

🔸 2. Silver Layer – Data Transformation

      Truncates and reloads clean data using stored procedures.
      Handles nulls, standardizes formats, and maps codes to business-friendly terms.
      Applies business logic to enrich data.

⭐ 3. Gold Layer – Analytical Modeling

      Creates dim_ and fact_ views using joins and aggregations.
      Structured for direct use in Power BI, Tableau, and Excel.
      Follows star schema best practices for performance and usability.


✅ Data Quality Checks

Robust quality checks were implemented in both silver and gold layers:
    Null and duplicate primary keys
    Invalid date ranges
    Referencing consistency (e.g., FK–PK relationships)
    Field-level standardization (e.g., trimmed strings, coded fields)

📊 Sample Insights Enabled

    Customer segmentation and behavior analysis
    Product sales performance trends
    Sales pipeline analysis using clean, trusted data
    Ready for extension to BI dashboards



## 🧪 Tools & Technologies

| Category           | Stack                                               |
|--------------------|-----------------------------------------------------|
| Database           | Microsoft SQL Server                                |
| ETL                | T-SQL, Stored Procedures, BULK INSERT               |
| Modeling           | Star Schema, Medallion Architecture                 |
| Validation         | SQL Quality Checks (manual + automated)            |
| Diagramming        | Draw.io (Architecture & Data Flow)                 |
| Docs & Planning    | Notion, Markdown                                    |
| Source Control     | Git, GitHub                                         |



📂 Repository Structure

  data-warehouse-project/
  │
  ├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
  │
  ├── docs/                               # Project documentation and architecture details
  │   ├── etl.drawio                      # Draw.io file shows all different techniquies and methods of ETL
  │   ├── data_architecture.drawio        # Draw.io file shows the project's architecture
  │   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
  │   ├── data_flow.drawio                # Draw.io file for the data flow diagram
  │   ├── data_models.drawio              # Draw.io file for data models (star schema)
  │   ├── naming-conventions.md           # Consistent naming guidelines for tables, columns, and files
  │
  ├── scripts/                            # SQL scripts for ETL and transformations
  │   ├── bronze/                         # Scripts for extracting and loading raw data
  │   ├── silver/                         # Scripts for cleaning and transforming data
  │   ├── gold/                           # Scripts for creating analytical models
  │
  ├── tests/                              # Test scripts and quality files
  │
  ├── README.md                           # Project overview and instructions
  ├── LICENSE                             # License information for the repository
  ├── .gitignore                          # Files and directories to be ignored by Git
  └── requirements.txt                    # Dependencies and requirements for the project



🧠 What I Learned

    End-to-end design of a modern SQL-based data warehouse
    Applying Medallion architecture to real-world scenarios
    Writing reusable, production-level SQL stored procedures
    Building audit-friendly ETL pipelines using timestamps and quality checks
    Documenting and structuring data projects for team handoff or GitHub showcasing
