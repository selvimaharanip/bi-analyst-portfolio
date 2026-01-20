# Power BI Dashboard — Sales & Shipping Performance

## Overview

**Objective**  
Provide an integrated Year-to-Date (YTD) view of sales and shipping performance to support monitoring of revenue momentum, demand distribution, and delivery reliability.

**Context**  
This dashboard integrates sales and logistics perspectives to illustrate how commercial performance interacts with shipping capacity and service quality. Insights are derived from operational data extracted via SQL, transformed into Excel-based analytical datasets, and visualized using Power BI for executive-level monitoring and analysis.

---

## Data & Tools

- **Data Source:**  
  `bi_reporting_analysis_dataset.xlsx` (derived from SQL query outputs)
  The Excel datasets in the `data/` folder were generated from SQL query results and structured for analytical and visualization purposes.
  These files serve as inputs for Power BI dashboards and business analysis, ensuring transparency and reproducibility of insights.


- **Tools:**  
  - Excel (analytical dataset preparation)  
  - Power BI (dashboarding and visualization)

- **Dashboard Coverage:**  
  - Sales Performance (YTD)  
  - Shipping Performance (YTD)

---

## Key Insights

### Sales Performance (YTD)

- YTD results indicate **strong and stable commercial performance**, with:
  - **~830 total orders**
  - **~1.27M net sales**
  - **~51K units sold**, reflecting consistent demand.
- Sales activity peaks in **Q3 (August–September)**, highlighting clear seasonal momentum.
- Key contributors—**Margaret Peacock, Nancy Davolio, and Janet Leverling**—play a significant role in driving revenue.
- Customer distribution spans multiple countries, indicating a **diversified market base** without reliance on a single geographic region.

**Implication:**  
Sales growth is healthy, but peak-period concentration increases dependency on downstream logistics performance.

---

### Shipping Performance (YTD)

- Four primary destination countries (**USA, Germany, Brazil, and France**) account for **more than 50% of total orders**, making delivery stability in these regions business-critical.
- Overall shipping performance remains strong, with **~91.5% of orders delivered on time**.
- However, **Pending (~4.4%) and Late (~4.0%)** shipments represent early risk signals, particularly during high-volume periods.
- **United Package** shows fluctuating freight allocation patterns, increasing the likelihood of bottlenecks as order volume rises.
- Variability in freight allocation across shippers suggests that logistics capacity is **not yet fully aligned with demand patterns**, especially in high-volume markets.

**Implication:**  
While SLA performance is currently acceptable, shipper imbalance may elevate delivery risk as sales continue to scale.

---

## Cross-Dashboard Interpretation

- Peak sales periods directly increase operational load on shipping partners.
- Demand concentration in a small number of high-volume countries amplifies the impact of shipper inefficiencies.
- Without proactive monitoring and balancing, sustained sales growth may lead to rising late deliveries and reduced customer satisfaction.

---

## Business Value

This dashboard enables stakeholders to:
- Monitor sales momentum alongside logistics readiness  
- Identify high-risk periods, regions, and shippers early  
- Support data-driven decisions related to shipper allocation and capacity planning  

---

## Supporting Materials

Insights are supported by **Power BI dashboards** built from Excel-based analytical outputs.  
The following files are included in this repository for transparency and reproducibility:

- 📊 **Power BI Dashboard:**  
  [`sales_and_shipping_performance_dashboard.pbix`](./sales_and_shipping_performance_dashboard.pbix)
  [`sales_and_shipping_performance_dashboard.pdf`](./sales_and_shipping_performance_dashboard.pdf)

---

## Key Takeaway

By integrating **sales and shipping metrics** into a single analytical view, this dashboard provides early visibility into operational risk—ensuring that strong commercial performance is supported by resilient and scalable logistics execution.
