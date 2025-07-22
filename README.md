# 📊 Credit Card Default Risk Analysis (UCI Dataset)

This project explores credit card default behavior using SQL on the UCI Credit Card Default dataset. All analysis was done using PostgreSQL (via pgAdmin), and focuses on behavioral patterns that influence defaults.

---

## 🧠 Questions Answered

### ✅ 1. Which age group has the highest credit card default rate, and how does it vary by gender?

Grouped 30,000 customers by age buckets and gender to find default trends.

**Key insight:**  
- Most customers fall into the **25–40** age range.  
- Default counts are high for both males and females aged 25–40, especially **females 31–40**.

📄 [Query](queries/default_rate_by_age_gender.sql)  
📊 [Output](results/default_rate_table.csv)

---

### ✅ 2. Do customers with older payment delays default even after recent on-time payments?

Classified users into:
- `No Delays (All Months)`
- `Old Delays Only (4–6 Months Ago)`
- `Recent Delays (0–2 Months Ago)`

**Key insight:**  
> Even customers who had **no recent delays** still defaulted — suggesting **past payment history matters**, not just the latest month.

📄 [Query](queries/defaulters_based_on_payments_dues.sql)  
📊 [Output](results/defaulters_based_on_payments_dues.csv)

---

### ✅ 3. Which education and gender groups have the highest number of **non-defaulters**?

Grouped customers with `default_payment_next_month = 0` by education level and gender.

**Key insight:**  
> Most trusted segment: **university-educated females**, followed by **graduate school females**. Males show similar but slightly lower non-default counts.

📄 [Query](queries/defaulters_based_on_education_gender.sql)  
📊 [Output](results/defaulters_based_on_education_gender.csv)

---

## 🔧 Tools Used

- PostgreSQL (via pgAdmin)
- Raw `.csv` imported from [UCI Dataset](https://archive.ics.uci.edu/ml/datasets/default+of+credit+card+clients)
- SQL only — no external packages
- All queries and outputs stored in `/queries` and `/results`

---

## 💡 Summary

This project demonstrates:
- Use of `CASE`, `GROUP BY`, `ORDER BY`, and conditional filters
- Real-world risk segmentation logic
- Business relevance through clean SQL proof

---

