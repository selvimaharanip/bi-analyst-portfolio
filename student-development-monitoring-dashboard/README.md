# 📊 Student Development Monitoring Dashboard

## Overview

This repository presents a **student development monitoring analysis** focused on academic performance, risk identification, and program intervention strategy.

The analysis evaluates whether student outcomes are primarily influenced by **learning behavior, attendance patterns, or academic risk factors**. Instead of focusing only on final grades, this project examines **performance distribution, progress trends, and risk indicators** to uncover students who require targeted support.

The objective is to simulate how data can support **education programs (NGO / scholarship / child development programs)** in monitoring beneficiaries and improving learning outcomes through **data-driven decision making**.

All data was processed using **Python (Google Colab)** and visualized through an **Excel-based dashboard**.

---

## Analysis Focus

This analysis identifies **students at academic risk** and explores key drivers of performance.

Key areas covered:

- Academic performance distribution  
- Student risk segmentation (At Risk vs Normal)  
- Academic progress (Improved / Stable / Declined)  
- Study behavior and engagement  
- Attendance (absences) patterns  
- Academic failure impact  
- Socio-economic influence (parent education)  

The objective is to support **early intervention and program monitoring strategies**.

---

## Data Pipeline & Workflow

This project follows an end-to-end analytical workflow:

- Exploratory Data Analysis (EDA)  
- Data Cleaning & Transformation (Python – Google Colab)  
- Feature Engineering (risk indicators & segmentation)  
- Dataset Structuring for dashboard use  
- Dashboard visualization in Excel  

This workflow reflects a simplified **program monitoring system pipeline**, from raw data to actionable insights.

---

## Google Colab (EDA & Preprocessing)

The included notebook documents the full analytical process, including:

- Data profiling and validation (395 students, no missing values)  
- Data type formatting and optimization  
- Univariate and bivariate analysis  
- Outlier identification  
- Feature engineering:

  - Performance category  
  - Risk flag  
  - Absence level  
  - Study time category  
  - Academic progress indicator  

- Final dataset preparation for dashboard visualization  

This notebook demonstrates how raw student data can be transformed into a **structured monitoring dataset**.

---

## Data & Tools

### Data Source

Student Performance Dataset (Secondary School Students)  
https://www.kaggle.com/datasets/devansodariya/student-performance-data  

This dataset contains student demographic, behavioral, and academic performance data.

---

### Dataset Information

RangeIndex: 395 entries  
Total Columns: 35 (after feature engineering)

---

### Core Variables

**Demographic**

- school  
- gender  
- age  
- address  
- family size  

**Family Background**

- mother_education  
- father_education  
- parent occupation  

**Student Behavior**

- study_time  
- activities  
- internet access  
- free time  
- going out  

**Academic Performance**

- academic_failures  
- absences  
- grade_period1  
- grade_period2  
- final_grade  

**Feature Engineered Variables**

- performance_category  
- risk_flag  
- absence_level  
- study_time_category  
- grade_progress  
- progress_category  

---

### Data Types

- int64 (numerical variables)  
- category (categorical variables)  

No missing values were found in the dataset.

---

## Tools Used

- Python (Google Colab – EDA & data processing)  
- Pandas, NumPy  
- Seaborn, Matplotlib  
- Microsoft Excel (dashboard visualization)  

---

## Repository Contents

This repository includes:

- This README file  
- Google Colab notebook (EDA & preprocessing)  
- Cleaned dataset for dashboard  
- Excel dashboard file  
- Dashboard preview image (`dashboard.png`)  
- Full analysis report (`Student_Monitoring_Dashboard_Portfolio.pdf`)  

Together, these components represent a complete analytical workflow:

Raw data → EDA → Cleaning → Feature Engineering → Dataset Structuring → Dashboard → Insight Generation

For detailed insights, interpretation, and program recommendations, please refer to:

- `dashboard.png` (visual dashboard)  
- `Student_Monitoring_Dashboard_Portfolio.pdf` (full analysis report)  

---

## Key Takeaway

This project demonstrates how student data can be transformed into a **program monitoring framework**.

Rather than focusing solely on academic scores, the analysis emphasizes:

- Early risk identification  
- Academic progress monitoring  
- Behavioral and engagement analysis  
- Evidence-based intervention planning  

The framework supports:

- Targeted academic support strategies  
- Data-driven program evaluation  
- Efficient resource allocation in education programs  

This approach is highly relevant for roles such as:

**Program Officer / Monitoring & Evaluation (M&E) / Education Data Analyst / NGO Analyst**
