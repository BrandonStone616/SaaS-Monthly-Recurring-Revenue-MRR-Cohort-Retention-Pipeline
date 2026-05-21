# SaaS Monthly Recurring Revenue (MRR) Cohort & Retention Pipeline

## Business Scenario
In subscription-based SaaS models, understanding user retention and revenue predictability is critical. This project builds an end-to-end data pipeline that transforms raw, transactional subscription invoice logs into a standardized, relative-timeline cohort matrix. The goal is to isolate revenue leakage, track customer tenure, and analyze month-over-month retention trends.

## Tech Stack & Concepts Covered
* **Database Engine:** SQLite / Standard SQL
* **BI Visualization:** Tableau Public
* **Advanced SQL Concepts:** Advanced date manipulation (`STRFTIME`), data type conversion (`CAST`), multi-dimensional aggregation (`GROUP BY`), and chronological data sorting.
* **Business Metrics:** Monthly Recurring Revenue (MRR), Customer Churn, Cohort Indexes.

## Data Pipeline Logic: Shifting Timelines
To evaluate customer retention accurately, absolute calendar payment dates were converted into a relative asset lifestyle matrix (**Cohort Indexes**). 
* **Month 0** represents a user's initial signup month regardless of calendar time.
* The SQL pipeline explicitly calculates the relative month integer: `(Current Year - Signup Year) * 12 + (Current Month - Signup Month)`.


🔗 **Live Interactive Dashboard:** [View on Tableau Public](https://public.tableau.com/app/profile/brandon.stone8552/viz/SaaSMonthlyRecurringRevenueMRRCohortRetentionPipeline/Dashboard-SaaSMRR#1)
