# SQL Insights Summary  
**Project:** Problem Solving with SQL  

## Project Overview

**Objective:**  
Provide a Year-to-Date (YTD) executive brief to support management decisions by analyzing sales performance, delivery quality, product contribution, sales effectiveness, and customer composition using SQL.

**Context:**  
Management of PT X requires a concise yet comprehensive YTD overview to close the current quarter with the right strategy. The analysis focuses on identifying monthly sales momentum, evaluating shipping service levels (SLA), highlighting top revenue-generating products, assessing sales representative performance, and understanding the balance between new customer acquisition and loyal customer retention. These insights are intended to support strategic actions in sales optimization, logistics management, and marketing prioritization.

**Tools & Methods:**  
- **Tools:** SQL  
- **Methods:**  
  - Aggregation and joins across transactional tables  
  - Revenue calculation with discounts  
  - Time-based filtering (YTD, monthly trends)  
  - Customer and performance segmentation  

**Outputs:**  
- SQL query documentation (`business_queries.sql`)  
- CSV outputs for each analytical task (T1–T5)  
- Executive-ready insights summarized below  

---

## Key Insights by Analysis Task

### T1 — Monthly Performance (2025)
**Business Question:**  
How is monthly sales momentum evolving throughout the year?

**Insight:**  
Monthly analysis shows fluctuating but generally increasing sales activity toward the later months of 2025. Both total revenue and average order value (AOV) indicate stronger performance in mid-to-late periods, suggesting improving transaction quality in addition to volume growth.

**Business Implication:**  
- Momentum supports scaling campaigns or inventory planning in high-performing months  
- AOV stability indicates pricing and discount strategies remain effective  

---

### T2 — Shipper SLA (YTD)
**Business Question:**  
How reliable are shipping partners in meeting delivery requirements?

**Insight:**  
Most shipped orders meet SLA expectations, but late delivery rates vary across shippers. One shipper shows a noticeably higher late rate compared to others, even with a similar shipment volume.

**Business Implication:**  
- SLA monitoring should prioritize shippers with higher late rates  
- Renegotiation or performance-based incentives may reduce delivery risk and customer complaints  

---

### T3 — Top 10 Products by Revenue (YTD)
**Business Question:**  
Which products contribute the most to total revenue?

**Insight:**  
Revenue is heavily concentrated among a small set of products, primarily in the mid-to-high price ranges (20–50 and >50). These top products span multiple categories, indicating that revenue concentration is driven by product performance rather than a single category.

**Business Implication:**  
- Protect availability and promotion of top-performing products  
- Use top products as anchors for bundling or cross-selling strategies  

---

### T4 — Sales Rep Scorecard (YTD)
**Business Question:**  
How does performance vary across sales representatives?

**Insight:**  
Sales representatives differ significantly in order volume, average order value, and proportion of high-value orders. Some reps generate fewer orders but maintain higher AOV and a larger share of big orders, indicating quality-focused selling.

**Business Implication:**  
- Best practices from high-performing reps can be standardized  
- Incentive schemes can balance volume and value-based performance  

---

### T5 — New vs Loyal Customers (YTD)
**Business Question:**  
What is the balance between customer acquisition and retention?

**Insight:**  
Loyal customers account for the majority of both orders and revenue, while new customers represent a small share of total transactions. Revenue dependency on existing customers is very high.

**Business Implication:**  
- Retention strategies are critical to sustaining revenue  
- Acquisition efforts should focus on scalable channels to diversify revenue sources  

---

## Executive Summary & Recommendations

- **Sales momentum** is positive, supporting confident quarter-end planning.  
- **Logistics performance** should be closely managed for underperforming shippers to prevent downstream customer dissatisfaction.  
- **Revenue concentration** suggests a need to safeguard and strategically leverage top products.  
- **Sales performance insights** highlight opportunities for coaching and incentive optimization.  
- **Customer mix** indicates strong retention but signals potential growth opportunity through targeted acquisition strategies.

Overall, this SQL-driven analysis demonstrates how transactional data can be transformed into actionable insights for strategic decision-making.
