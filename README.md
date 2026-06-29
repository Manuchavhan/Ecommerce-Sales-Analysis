# 📊 E-Commerce Sales Analytics Dashboard (PostgreSQL + Power BI)

## 📌 Project Overview

This project analyzes e-commerce sales data using **PostgreSQL** and **Power BI** to generate actionable business insights. It demonstrates the complete data analytics workflow, from data preparation and SQL analysis to interactive dashboard creation.

---

## 🎯 Objectives

* Analyze overall sales performance
* Identify top-performing product categories
* Compare regional sales performance
* Track monthly revenue trends
* Understand customer purchasing behavior
* Analyze payment method usage

---

## 🛠️ Tech Stack

* PostgreSQL
* SQL
* pgAdmin
* Power BI

---

## 📂 Project Structure

```text
E-Commerce-Sales-Analytics/
│
├── dataset/
├── sql_queries/
├── powerbi_dashboard/
├── screenshots/
└── README.md
```

---

## 🧠 SQL Analysis

The SQL queries answer key business questions, including:

* Total revenue and sales performance
* Revenue by region
* Top product categories
* Monthly sales trends
* Top customers by revenue
* Payment method distribution

### Sample Query

```sql
SELECT region, SUM(revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY region
ORDER BY total_revenue DESC;
```

---

## 📊 Power BI Dashboard

The interactive dashboard includes:

* KPI Cards (Total Revenue, Orders, Quantity Sold,Average ratings)
* Monthly Revenue Trend
* Revenue by Region
* Product Category Performance
* Payment Method Distribution
* Top Customers Analysis

---

## 🔍 Key Insights

* West region generated the highest revenue.
* Electronics was the top-performing product category.
* Card was the most preferred payment method.
* Revenue showed not consistent monthly growth.

---

## 💡 Business Recommendations

* Focus marketing efforts on high-performing regions.
* Improve sales strategies for low-performing categories.
* Introduce loyalty programs for high-value customers.
* Optimize payment options to improve customer experience.

---

## 📷 Dashboard Preview

Dashboard screenshots are available in the [https://github.com/Manuchavhan/Ecommerce-Sales-Analysis/blob/main/snapshot_dashboard.pngfolder.]

---

## 🚀 Skills Demonstrated

* SQL
* PostgreSQL
* Data Cleaning
* Data Analysis
* Power BI
* Data Visualization
* Business Intelligence

---

## 📌 Conclusion
This project demonstrates how SQL and Power BI can be used together to transform raw e-commerce data into interactive dashboards and meaningful business insights for data-driven decision-making.


This project demonstrates how SQL and Power BI can be used together to transform raw e-commerce dfor data-driven decision-making.
# Ecommerce-Sales-Analysis# Ecommerce-Sales-Analysis
