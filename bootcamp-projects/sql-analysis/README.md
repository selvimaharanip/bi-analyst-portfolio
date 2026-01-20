# SQL Analysis — Problem Solving with SQL

## Overview

**Objective**  
Provide a Year-to-Date (YTD) SQL-based analysis to support executive decision-making across sales performance, logistics quality, product contribution, sales effectiveness, and customer composition.

**Context**  
This project addresses PT X’s need for a concise YTD business brief to close the quarter with the right strategy. The analysis focuses on identifying sales momentum, evaluating delivery service levels (SLA), highlighting key revenue drivers, assessing sales representative performance, and understanding customer acquisition versus retention.

---

## Tools & Approach

- **Tool:** SQL  
- **Approach:** Revenue calculation with discount adjustments, time-based analysis (monthly and YTD), aggregation, segmentation, and multi-table joins.

---

## Analytical Scope

The analysis covers five core business questions:
1. Monthly sales performance and momentum  
2. Shipper SLA and delivery reliability  
3. Top revenue-generating products  
4. Sales representative performance summary  
5. New vs loyal customer contribution  

---

## Data Notes

- **Data Source:** Relational database provided for structured SQL analysis in an academic setting.  
- **Assumptions:**  
  - Revenue is calculated at the order-line level after discounts.  
  - SLA analysis includes only shipped orders.  
  - YTD refers to the current calendar year.  
  - Customer segmentation is based on each customer’s first order date.  
- **Schema Overview:** Orders and order details are joined with products, categories, shippers, employees, and customers to support end-to-end analysis.

---

## Output

- Documented SQL queries aligned with business objectives  
- Executive-ready insights derived from query results  
- **Detailed business questions and corresponding query result tables are documented in the accompanying presentation (PPT) available in this folder, providing structured context and executive-friendly summaries of the analysis.**

---

## Key Takeaway

This project demonstrates how SQL can be applied as a **decision-support tool**, transforming transactional data into clear, actionable insights for business strategy.
