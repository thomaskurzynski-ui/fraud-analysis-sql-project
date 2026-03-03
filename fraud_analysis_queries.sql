-- Overall Fraud Rate
SELECT 
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS total_fraud,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 2) AS fraud_rate_percent
FROM transactions;

-- Fraud by Country
SELECT 
    country,
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraud_cases,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 2) AS fraud_rate_percent
FROM transactions
GROUP BY country
ORDER BY fraud_rate_percent DESC;

-- High Value Fraud Transactions
SELECT *
FROM transactions
WHERE amount > 500
AND is_fraud = 1
ORDER BY amount DESC;
