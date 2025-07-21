# 🧾 Dunder Mifflin Acquisition Analysis

## 📊 Description

Exploratory data analysis (EDA) project to support Dunder Mifflin's potential acquisition of Parch & Posey. This analysis examines customer base, revenue streams, growth trends, regional performance, and resource allocation to guide the business decision.

---

## 🧠 Business Context

In January 2017, Dunder Mifflin began evaluating a strategic acquisition of a smaller competitor, **Parch & Posey**, to expand its customer base and regional market share. As a data analyst, I was tasked with leading the exploratory analysis to assess the company's performance and uncover insights that would inform the leadership team’s decision.

This SQL-based project dives into Parch & Posey’s historical data to assess growth patterns, sales performance, and regional activity, as well as identify potential areas for sales force optimization and marketing reprioritization.

---

## 📌 Analysis Overview

### 🧍‍♂️ Customer & Market Presence

Parch & Posey serves **351 distinct customer accounts** across **7 sales regions**, indicating a moderately sized but nationally distributed operation. Understanding this customer footprint was foundational in evaluating acquisition scale.

---

### 📦 Product Performance

The company sells three types of paper: **Standard**, **Gloss**, and **Poster**. A breakdown of volume and revenue share reveals the following:

- **Volume Sold (% of Total Units):**
  - Standard: 52.73%
  - Gloss: 27.58%
  - Poster: 19.69%

- **Revenue Contribution (% of Total Revenue):**
  - Standard: 41.80%
  - Gloss: 32.81%
  - Poster: 25.39%

📈 **Insight:** While standard paper dominates in unit volume, gloss and poster papers punch above their weight in revenue — suggesting opportunities for margin-focused sales strategies.

---

### 📈 Growth Trends (2014–2016)

A year-over-year analysis of revenue and sales volume demonstrates strong growth:

- **Annual Revenue:**
  - 2014: $4.07M  
  - 2015: $5.75M  
  - 2016: $12.86M  

- **Annual Units Sold:**
  - 2014: 650,896  
  - 2015: 912,972  
  - 2016: 2,041,600  

- **Growth by Product Type:**  
  Revenue and unit sales for all paper types nearly tripled between 2014 and 2016, with **Standard paper** accounting for the bulk of the growth.

🚀 **Conclusion:** Parch & Posey is experiencing exponential growth in both sales and volume, especially in the most recent year. This positions the company as an attractive acquisition target with accelerating momentum.

---

### 👥 Sales Rep Distribution & Optimization

Sales rep headcount by region reveals uneven distribution:

| Region       | Sales Reps |
|--------------|------------|
| International| 1          |
| Midwest      | 9          |
| North        | 0          |
| Northeast    | 21         |
| South        | 0          |
| Southeast    | 10         |
| West         | 10         |

Based on 2016 performance, **Northeast** has the highest rep count and relatively high coverage compared to revenue and account activity. This makes it the most suitable region to **reallocate sales reps** from — particularly to the newer **North, South, and International** regions, which are currently under- or unstaffed.

📤 **Recommendation:** Reallocate some Northeast sales reps to support expansion in the new regions and ensure nationwide coverage.

---

### 🧠 Account Quality: “Group” vs. “Non-Group”

It was hypothesized that customer accounts ending in "Group" (e.g., representing group businesses) might generate higher revenue. A classification using SQL `CASE` logic and aggregation disproved this:

| Account Type | Count | Avg Revenue |
|--------------|-------|-------------|
| Group        | 18    | $61,831.74  |
| Not Group    | 332   | $66,351.02  |

❌ **Insight:** Contrary to expectations, “Group” accounts generate slightly less revenue on average than others, and therefore do not warrant prioritization.

---

### 📣 Marketing Channel Strategy

To focus resources on new regions, Marketing planned to deactivate the **least-used web channels** in legacy regions. A window function using `RANK()` identified the lowest-performing channel in each:

| Region    | Channel to Deactivate |
|-----------|------------------------|
| Midwest   | Banner                |
| Northeast | Twitter               |
| Southeast | Twitter               |
| West      | Banner                |

📌 **Actionable Step:** These channels can be deprioritized in 2017 to support efforts in high-growth areas like North, South, and International.

---

## 🛠️ Tools & Technologies

- **SQL** (PostgreSQL syntax)
- SQL features used:
  - `JOIN` (LEFT, RIGHT, FULL)
  - `GROUP BY`, `ORDER BY`
  - Aggregations: `SUM`, `COUNT`, `AVG`, `ROUND`
  - `CASE` statements
  - `EXTRACT()` (date function)
  - `WITH` clauses (CTEs)
  - **Window functions**: `RANK() OVER (PARTITION BY ...)`
  - `HAVING` clause



---

## ✅ Summary of Recommendations

- **Move forward** with the acquisition based on strong growth signals.
- **Reallocate** sales reps from the Northeast to under-supported new regions.
- **Disregard “Group” account bias**, as revenue does not support the hypothesis.
- **Deactivate least-used marketing channels** in legacy regions to free up resources for expansion.

---

## 🙋‍♂️ Author

Sam Sithimolada  
[LinkedIn](https://linkedin.com/in/sam-sithimolada) • [GitHub](https://github.com/your-username)

---

## 🧾 License

This project is for educational purposes only. Dunder Mifflin and Parch & Posey are fictional companies.

