# Customer Churn Intelligence & Retention Analytics

> An end-to-end data analytics project using Python, SQL, and Power BI to identify customer churn patterns, quantify revenue exposure, and develop data-driven retention strategies.

---

## 📌 Project Overview

Customer churn is a major challenge for subscription-based businesses. This project analyzes customer behavior to understand **who is leaving, which factors are associated with churn, the financial exposure linked to churned customers, and where retention efforts should be prioritized.**

The project combines exploratory data analysis, SQL analytics, predictive modeling, and interactive business intelligence into one end-to-end workflow.

**Dataset:** IBM Telco Customer Churn benchmark dataset representing a fictional telecommunications company.

---

## 🎯 Business Objectives

The analysis aims to answer five key business questions:

- What is the overall customer churn rate?
- Which customer segments have the highest churn?
- Which contract, service, tenure, and payment characteristics are associated with churn?
- How much monthly billing is associated with customers who have churned?
- What retention strategies should the business prioritize?

---

## 🛠️ Technologies Used

| Area | Tools |
|---|---|
| Programming | Python |
| Data Analysis | Pandas, NumPy |
| Visualization | Matplotlib, Power BI |
| Database | MySQL |
| SQL Analysis | MySQL Workbench |
| Machine Learning | Scikit-learn |
| Development | Jupyter Notebook |
| Version Control | GitHub |

---

## 📊 Key Business Findings

### Overall Churn

| Metric | Result |
|---|---:|
| Total Customers | 7,043 |
| Churned Customers | 1,869 |
| Overall Churn Rate | **26.5%** |

### Highest-Risk Segments

| Customer Segment | Churn Rate |
|---|---:|
| New customers | **47.4%** |
| Month-to-month contracts | **42.7%** |
| Fiber optic customers | **41.9%** |
| Electronic check customers | **45.3%** |

### Customer Tenure

Churn decreases substantially as customer tenure increases:

- New customers: **47.4%**
- Developing customers: **28.7%**
- Established customers: **20.4%**
- Loyal customers: **9.5%**

### Contract Type

Contract length shows a strong association with churn:

- Month-to-month: **42.7%**
- One year: **11.3%**
- Two year: **2.8%**

### Revenue Exposure

Customers who churned were associated with approximately:

**$139,130.85 in monthly charges**

Churned customers also had higher average monthly charges:

- Churned: **$74.44**
- Stayed: **$61.27**

> The monthly charges figure is used as a **revenue-at-risk proxy** based on observed customer charges. It is not a forecast of future revenue loss.

---

## 🤖 Predictive Modeling

A **Logistic Regression** model was developed to estimate customer churn risk.

### Model Performance

| Metric | Score |
|---|---:|
| Accuracy | **80.6%** |
| Churn Precision | **65.9%** |
| Churn Recall | **55.9%** |
| F1 Score | **60.5%** |
| ROC-AUC | **84.2%** |

Using a churn-probability threshold of **70%**, the model identified **93 customers** in the test set as high-risk candidates for retention prioritization.

The model was designed as a decision-support tool rather than an automated decision-maker.

---

## 🔎 Key Insights

The analysis identified several important retention signals:

1. **New customers are the most vulnerable segment**, with churn falling as tenure increases.
2. **Month-to-month customers have substantially higher churn** than customers on longer-term contracts.
3. **Fiber optic customers show elevated churn** compared with other internet-service groups.
4. **Electronic check users have the highest churn rate** among payment methods.
5. **Churned customers have higher average monthly charges**, increasing the potential financial impact of customer loss.
6. The combination of **contract type and tenure** provides a stronger retention lens than examining either factor independently.

---

## 💡 Retention Recommendations

### 1. Strengthen Early-Customer Engagement

Prioritize onboarding, education, support, and engagement during the first 12 months.

### 2. Encourage Longer-Term Contracts

Develop appropriate incentives for month-to-month customers to consider longer-term contracts.

### 3. Investigate Fiber Customer Experience

Review service quality, pricing, customer support, and expectations among fiber-optic customers.

### 4. Review Electronic Payment Journeys

Investigate the customer experience surrounding electronic-check payments and encourage convenient payment alternatives where appropriate.

### 5. Prioritize High-Value Risk Segments

Combine churn risk with customer value to help retention teams focus resources where potential financial exposure is greatest.

---

## 📈 Power BI Dashboard

The Power BI report contains three pages:

### Executive Overview
Provides high-level KPIs and major customer churn patterns.

### Churn Drivers
Explores churn across payment method, customer characteristics, billing behavior, and internet service/contract combinations.

### Customer Risk & Retention
Highlights retention priorities using customer tenure, contract behavior, churn metrics, and a contract-by-tenure analysis.

---

## 🗄️ SQL Analysis

MySQL was used to create a dedicated `customer_churn` database and analyze the imported customer data.

SQL analysis includes:

- Customer churn distribution
- Churn by contract type
- Churn by customer tenure
- Churn by internet service
- Churn by payment method
- Monthly charges by churn status

The SQL analysis was used to validate key findings from the Python analysis and support the business intelligence dashboard.

---

## 🐍 Python Analysis

Python was used for:

- Data quality assessment
- Data cleaning
- Exploratory data analysis
- Customer segmentation
- Churn analysis
- Revenue exposure analysis
- Feature preparation
- Logistic regression
- Model evaluation
- Customer risk analysis

---

## 📁 Project Structure

```text
Customer-Churn-Intelligence/
│
├── data/
│   └── raw/
│       └── Telco-Customer-Churn.csv
│
├── notebooks/
│   └── 01.data_audit.ipynb
│
├── sql/
│   └── Customer_churn.sql
│
├── powerbi/
│   └── Customer Churn Intelligence Dashboard.pbix
│
└── README.md

⚠️ Data & Methodology Notes

* The dataset is a public IBM Telco Customer Churn benchmark dataset representing a fictional telecommunications company.
* The original dataset contains 7,043 customer records.
* The MySQL import contains 7,032 records because 11 records with blank TotalCharges values were excluded during the import process.
* Churn relationships identified in the analysis represent associations, not causation.
* Revenue exposure is a proxy based on observed monthly charges.
* Predictive model results should support business judgment rather than automatically determine customer treatment.

🚀 Project Outcome

This project demonstrates an end-to-end analytics workflow:

Raw Data → Data Cleaning → Exploratory Analysis → SQL Analytics → Predictive Modeling → Power BI Dashboard → Business Recommendations

The result is a data-driven framework that helps a subscription business understand churn, identify vulnerable customer segments, quantify financial exposure, and prioritize retention strategies.

👩🏾‍💻 Author

Idah M. Musebe

Data Analyst | Data Engineer

Skills demonstrated:
Python • SQL • MySQL • Power BI • Data Analytics • Machine Learning • Data Visualization • Business Intelligence

