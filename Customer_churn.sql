USE customer_churn;
SELECT COUNT(*) AS total_customers
FROM `telco-churn`;
SELECT *
FROM `telco-churn`
LIMIT 5;
SELECT
    Churn,
    COUNT(*) AS customer_count
FROM `telco-churn`
GROUP BY Churn;
SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM `telco-churn`
GROUP BY Contract
ORDER BY churn_rate DESC;
SELECT
    CASE
        WHEN tenure <= 12 THEN 'New'
        WHEN tenure <= 24 THEN 'Developing'
        WHEN tenure <= 48 THEN 'Established'
        ELSE 'Loyal'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM `telco-churn`
GROUP BY tenure_group
ORDER BY churn_rate DESC;
SELECT
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM `telco-churn`
GROUP BY InternetService
ORDER BY churn_rate DESC;
SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM `telco-churn`
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;
SELECT
    Churn,
    COUNT(*) AS customer_count,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges,
    ROUND(SUM(MonthlyCharges), 2) AS total_monthly_charges
FROM `telco-churn`
GROUP BY Churn;