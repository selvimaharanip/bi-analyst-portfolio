CREATE TABLE fact_transactions_clean (
    accountNumber             VARCHAR(20),
    customerId                VARCHAR(20),
    creditLimit               INTEGER,
    availableMoney            NUMERIC(14,2),
    transactionDateTime       TIMESTAMP,
    transactionAmount         NUMERIC(14,2),
    merchantName              TEXT,
    acqCountry                VARCHAR(10),
    merchantCountryCode       VARCHAR(10),
    posEntryMode              VARCHAR(10),
    posConditionCode          VARCHAR(10),
    merchantCategoryCode      VARCHAR(50),
    currentExpDate            TIMESTAMP,
    accountOpenDate           TIMESTAMP NULL,
    dateOfLastAddressChange   TIMESTAMP NULL,
    cardCVV                   INTEGER,
    enteredCVV                INTEGER,
    cardLast4Digits           VARCHAR(10),
    transactionType           VARCHAR(20),
    isFraud                   BOOLEAN,
    currentBalance            NUMERIC(14,2),
    cardPresent               BOOLEAN,
    expirationDateKeyInMatch  BOOLEAN,
    hour                      SMALLINT,
    utilization_ratio         NUMERIC(6,4),
    txn_month                 VARCHAR(7)
);

-- Check Table Structure
SELECT *
FROM fact_transactions_clean
LIMIT 10;

-- Check Total Record Count
SELECT COUNT(*) AS total_rows
FROM fact_transactions_clean;

-- Check Important Missing Values
SELECT
    COUNT(*) FILTER (WHERE creditLimit IS NULL) AS missing_limit,
    COUNT(*) FILTER (WHERE transactionAmount IS NULL) AS missing_amount,
    COUNT(*) FILTER (WHERE utilization_ratio IS NULL) AS missing_utilization
FROM fact_transactions_clean;

-- Validate Value Range (Sanity Check)
SELECT COUNT(*) AS invalid_rows
FROM fact_transactions_clean
WHERE currentBalance > creditLimit;

-- Check Utilization Distribution (Should Be Reasonable)
SELECT
    MIN(utilization_ratio),
    MAX(utilization_ratio),
    AVG(utilization_ratio)
FROM fact_transactions_clean;

-- Quick Profiling (Understanding Usage)

-- Total Dataset Spend
SELECT SUM(transactionAmount) AS total_spend
FROM fact_transactions_clean;

-- Average Transaction Amount
SELECT AVG(transactionAmount) AS avg_transaction
FROM fact_transactions_clean;

-- Total Unique Customers
SELECT COUNT(DISTINCT customerId) AS total_customers
FROM fact_transactions_clean;

-- View Monthly Activity (Validate txn_month Feature)
SELECT txn_month, COUNT(*) AS total_txn
FROM fact_transactions_clean
GROUP BY txn_month
ORDER BY txn_month;

-- Check Utilization Distribution (Insight Preview)
SELECT
CASE
    WHEN utilization_ratio < 0.30 THEN 'Low'
    WHEN utilization_ratio < 0.70 THEN 'Medium'
    ELSE 'High'
END AS usage_band,
COUNT(*) AS total_records
FROM fact_transactions_clean
GROUP BY usage_band;


-- Create Customer-Level Aggregation Table
CREATE TABLE customer_usage AS
SELECT
    customerId,
    MAX(creditLimit) AS credit_limit,
    SUM(transactionAmount) AS total_spend,
    COUNT(*) AS total_transactions,
    AVG(utilization_ratio) AS avg_utilization,
    COUNT(DISTINCT txn_month) AS active_months
FROM fact_transactions_clean
GROUP BY customerId;

-- Add Usage Segmentation
CREATE TABLE customer_usage_segmented AS
SELECT *,
CASE
    WHEN avg_utilization < 0.30 THEN 'Low Usage'
    WHEN avg_utilization < 0.70 THEN 'Moderate Usage'
    ELSE 'High Usage'
END AS usage_segment
FROM customer_usage;

-- Check Total Segmented Customers
SELECT COUNT(*) 
FROM customer_usage_segmented;

-- Check Spend Distribution Summary
SELECT
    MIN(total_spend),
    MAX(total_spend),
    AVG(total_spend)
FROM customer_usage_segmented;

-- Preview Segmented Customer Table
SELECT * 
FROM customer_usage_segmented cus;
