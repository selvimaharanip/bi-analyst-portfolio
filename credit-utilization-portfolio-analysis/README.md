# Credit Utilization & Customer Usage Analysis

## Overview

This repository contains a credit portfolio analysis focused on utilization efficiency, capital productivity, and revenue optimization strategy.

The analysis evaluates whether portfolio growth is constrained by credit limits or by customer spending behavior. Rather than focusing solely on total spend, the project examines utilization depth, segment imbalance, and revenue concentration risk.

All analytical datasets were extracted using SQL, transformed for analysis, and visualized in Power BI.

---

## Analysis Focus

This analysis identifies structural underutilization patterns within a 5,000-customer portfolio.

Key areas covered:

- Credit utilization performance  
- Spend vs credit limit relationship  
- Usage segment distribution (Low / Moderate / High)  
- Engagement duration vs utilization  
- Revenue concentration risk  

The objective is to uncover hidden capital inefficiencies masked by strong top-line metrics.

---

## Data Pipeline & Workflow

This project follows an end-to-end analytical workflow:

1. Exploratory Data Analysis (EDA)  
2. Data Cleaning & Transformation (Google Colab – Python)  
3. Data Structuring & Aggregation for SQL Modeling  
4. SQL Query Extraction  
5. Dashboard Modeling in Power BI  

---

## Google Colab (EDA & Preprocessing)

The notebook included in this repository documents:

- Data profiling  
- Missing value handling  
- Feature engineering  
- Date transformation  
- Aggregation logic  
- Utilization metric calculation  
- Customer-level summarization  
- Dataset preparation for SQL ingestion  

This notebook demonstrates the full preprocessing pipeline before the dataset was structured for analytical querying.

---

## Data & Tools

### Data Source

Transactional credit portfolio dataset extracted via SQL.

⚠️ Due to file size limitations, raw and cleaned datasets are not uploaded to this repository.

However, dataset structure is documented below for transparency and reproducibility.

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

Data types:
- int64 (6 columns)  
- float64 (5 columns)  
- object (9 columns)  
- bool (3 columns)  

---

## Tools Used

- Python (Google Colab – EDA & data cleaning)  
- SQL (data extraction & transformation)  
- Excel (intermediate analytical dataset preparation)  
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

Raw data → EDA → Cleaning → Transformation → SQL modeling → Dashboard → Strategic recommendation.

---

## Key Takeaway

This project demonstrates how credit portfolio data can be transformed into a structured monetization strategy.

Rather than focusing solely on revenue volume or credit expansion, the analysis highlights the importance of:

- Utilization efficiency  
- Behavioral activation  
- Capital productivity  
- Portfolio balance  

The framework supports risk-aware, data-driven, and sustainable revenue optimization.
