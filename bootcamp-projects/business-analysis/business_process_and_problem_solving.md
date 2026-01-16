# Business Process & Problem-Solving Analysis

## Overview

**Objective**  
Identify the root causes of delivery performance issues and shipper imbalance, and propose process-level improvements to enhance SLA compliance, operational efficiency, and customer satisfaction.

**Context**  
This analysis focuses on an FMCG distribution operation using multiple logistics partners. Despite having alternative shippers with better cost and delivery performance, shipments are heavily concentrated on a single dominant shipper. This imbalance has led to higher logistics costs, recurring late deliveries, and increased operational risk.

The analysis uses Power BI visualizations built from Excel datasets derived from SQL query outputs.

---

## Tools & Approach

- **Tools:** Power BI, Excel  
- **Methods & Frameworks:**  
  - Business Process Mapping  
  - IMPACT Framework  
  - Root Cause Analysis (5 Whys & Fishbone Diagram)

---

## Key Findings

- A single shipper handles a disproportionate share of total deliveries, despite having the highest freight cost and late shipment rate.
- Alternative shippers demonstrate better SLA performance but are underutilized.
- Late deliveries are concentrated in specific routes and countries, indicating structural issues rather than random failures.
- Shipper assignment relies on static routing rules that do not account for cost, SLA performance, or geographic risk.

---

## Root Cause Summary

Delivery performance issues are systemic and driven by:
- Default routing rules that favor a dominant shipper
- Absence of allocation thresholds and performance-based controls
- Lack of continuous monitoring through BI dashboards

---

## Recommendations

- Introduce shipper load balancing with maximum allocation limits  
- Apply SLA- and cost-based routing rules, including country-level adjustments  
- Implement shipper performance scoring and monitoring dashboards  

---

## Key Takeaway

This analysis demonstrates how business process analysis can uncover structural inefficiencies and translate data insights into practical, operational improvement initiatives.
