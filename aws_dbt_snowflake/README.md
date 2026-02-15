## 📋 Overview
This project implements a complete end-to-end data engineering pipeline for Airbnb data using modern cloud technologies. The solution demonstrates best practices in data warehousing, transformation, and analytics using Snowflake, dbt (Data Build Tool), and AWS.

The pipeline processes Airbnb listings, bookings, and hosts data through a medallion architecture (Bronze → Silver → Gold), implementing incremental loading, slowly changing dimensions (SCD Type 2), and creating analytics-ready datasets.

## 🏗️ Architecture

### 🔁 Data Pipeline Flow

```mermaid
flowchart LR
    A[CSV Files] --> B[AWS S3 Bucket]
    B --> C[Snowflake Stage]
    C --> D[Bronze Layer - Raw Tables]
    D --> E[Silver Layer - Cleaned Data]
    E --> F[Gold Layer - Analytics]
```
