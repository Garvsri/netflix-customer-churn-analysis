-- Overall churn rate

SELECT
    COUNT(*) AS total_customers,
    SUM(churned) AS churned_customers,
    AVG(churned) * 100 AS churn_rate
FROM customers;


-- Churn by subscription type

SELECT
    subscription_type,
    COUNT(*) AS total_customers,
    SUM(churned) AS churned_customers,
    AVG(churned) * 100 AS churn_rate
FROM customers
GROUP BY subscription_type
ORDER BY churn_rate DESC;


-- Churn by payment method

SELECT
    payment_method,
    COUNT(*) AS total_customers,
    AVG(churned) * 100 AS churn_rate
FROM customers
GROUP BY payment_method
ORDER BY churn_rate DESC;