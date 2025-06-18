/*
✅ Gold Layer – Data Quality Checks

This script validates the integrity, accuracy, and relational consistency of data in the gold layer of the data warehouse — the final output layer designed for reporting and analytics.
🔍 Checks Performed:
    Uniqueness of surrogate keys in dimension tables (e.g., dim_customers).
    Referential integrity between fact and dimension tables.
    Validation of star schema relationships to ensure the data model is robust and analytically sound.

📌 Usage:
    Run this script after creating gold views or loading final data.
    Review any returned results and investigate anomalies before releasing the data for consumption.

🧪 These checks help ensure the gold layer delivers trusted, consistent, and accurate insights to end-users.
*/

SELECT 
    customer_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_customers
GROUP BY customer_key
HAVING COUNT(*) > 1;

-- ====================================================================
-- Checking 'gold.product_key'
-- ====================================================================
-- Check for Uniqueness of Product Key in gold.dim_products
-- Expectation: No results 
SELECT 
    product_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_products
GROUP BY product_key
HAVING COUNT(*) > 1;

-- ====================================================================
-- Checking 'gold.fact_sales'
-- ====================================================================
-- Check the data model connectivity between fact and dimensions
SELECT * 
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON c.customer_key = f.customer_key
LEFT JOIN gold.dim_products p
ON p.product_key = f.product_key
WHERE p.product_key IS NULL OR c.customer_key IS NULL  
