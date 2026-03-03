# Credit Utilization & Customer Usage Analysis

## Overview

This repository presents a credit portfolio analysis focused on utilization efficiency, capital productivity, and revenue optimization strategy.

The analysis evaluates whether portfolio growth is constrained by credit limit allocation or by customer spending behavior. Instead of focusing solely on total spend, this project examines utilization depth, segment imbalance, and revenue concentration risk to uncover structural monetization gaps.

All analytical datasets were extracted using SQL, transformed and validated in Python (Google Colab), and visualized through an interactive Power BI dashboard.

---

## Analysis Focus

This analysis identifies structural underutilization patterns within a 5,000-customer credit portfolio.

Key areas covered:

- Credit utilization performance  
- Spend vs. credit limit relationship  
- Usage segment distribution (Low / Moderate / High)  
- Engagement duration vs. utilization  
- Revenue concentration risk  

The objective is to detect hidden capital inefficiencies that may be masked by strong aggregate performance metrics.

---

## Data Pipeline & Workflow

This project follows an end-to-end analytical workflow:

1. Exploratory Data Analysis (EDA)  
2. Data Cleaning & Transformation (Python – Google Colab)  
3. Data Structuring & Aggregation for SQL Modeling  
4. SQL-Based Query Development  
5. Dashboard Modeling & Visualization in Power BI  

This structure ensures analytical integrity from raw transactional data through strategic insight generation.

---

## Google Colab (EDA & Preprocessing)

The included notebook documents the complete preprocessing and analytical preparation process, including:

- Data profiling and validation  
- Missing value handling  
- Data type correction and formatting  
- Feature engineering  
- Utilization metric calculation  
- Monthly aggregation logic  
- Customer-level summarization  
- Dataset preparation for SQL ingestion  

This notebook demonstrates the transformation of raw transactional data into a structured analytical dataset suitable for portfolio diagnostics and dashboard modeling.

---

## Data & Tools

### Data Source

Transactional credit portfolio dataset extracted via SQL.

⚠️ Due to file size limitations, raw and cleaned datasets are not uploaded to this repository.

However, the dataset structure is documented below for transparency and reproducibility.

---

## Dataset Information

```
RangeIndex: 641,914 entries  
Total Columns: 23  
```

### Core Variables

- accountNumber (int64)  
- customerId (int64)  
- creditLimit (int64)  
- availableMoney (float64)  
- transactionDateTime (object)  
- transactionAmount (float64)  
- merchantName (object)  
- merchantCategoryCode (object)  
- transactionType (object)  
- currentBalance (float64)  
- isFraud (bool)  
- cardPresent (bool)  
- expirationDateKeyInMatch (bool)  
- accountOpenDate (object)  
- dateOfLastAddressChange (object)  

Data types include:
- int64 (6 columns)  
- float64 (5 columns)  
- object (9 columns)  
- bool (3 columns)  

---

## Tools Used

- Python (Google Colab – EDA & data cleaning)  
- SQL (data extraction & transformation)  
- Excel (intermediate analytical preparation)  
- Power BI (dashboard modeling & visualization)  

---

## Repository Contents

This repository includes:

- Analytical insight documentation  
- This README file  
- Google Colab notebook (EDA & preprocessing)  
- SQL query file  
- Power BI (.pbix) dashboard file  
- Dashboard preview image  

Together, these materials demonstrate a complete analytical lifecycle:

Raw data → EDA → Cleaning → Transformation → SQL modeling → Dashboard → Strategic recommendation

---

## Key Takeaway

This project illustrates how credit portfolio data can be transformed into a structured monetization strategy.

Rather than focusing solely on revenue volume or credit expansion, the analysis emphasizes:

- Utilization efficiency  
- Behavioral activation  
- Capital productivity  
- Portfolio balance  

The framework supports risk-aware, data-driven, and sustainable revenue optimization aligned with strategic portfolio management.
