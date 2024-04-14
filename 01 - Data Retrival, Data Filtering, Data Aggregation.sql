use ecommerce;

-- Data Retrieval (SELECT statements):
-- List all transactions made within a between Specific Dates (20 Jan 2023) to (20 Feb 2024)
SELECT * FROM transactions WHERE Transaction_Date >= '2023-01-20' AND Transaction_Date <= '2024-02-20';

-- List all transactions made during midnight to early morning
SELECT * FROM transactions WHERE Transaction_Time >= '00:00:00' AND Transaction_Time < '06:00:00';

-- Display all transactions with amounts exceeding a certain threshold.
SELECT * FROM transactions WHERE Transaction_Amount > 1000;

-- Show the total number of transactions in the dataset.
SELECT COUNT(*) AS Total_Transactions FROM transactions;

-- Data Filtering (WHERE clause):
-- Identify all transactions flagged as fraudulent.
SELECT * FROM transactions WHERE Is_Fraudulent = 1;

-- Find transactions where the billing and shipping addresses differ.
SELECT * FROM customers WHERE Billing_Address <> Shipping_Address;

-- Filter transactions where the IP address is suspicious.
SELECT * FROM transactions WHERE IP_Address LIKE '10.%';

-- Data Aggregation (GROUP BY and Aggregate Functions):
-- Calculate the total amount spent by each user.
SELECT Customer_ID, SUM(Transaction_Amount) AS Total_Amount_Spent FROM transactions GROUP BY Customer_ID;

-- Find the average transaction amount.
SELECT AVG(Transaction_Amount) AS Average_Transaction_Amount
FROM transactions;

-- Determine the count of fraudulent transactions by payment method.
SELECT Payment_Method, COUNT(*) AS Fraudulent_Transaction_Count
FROM transactions WHERE Is_Fraudulent = 1 GROUP BY Payment_Method;

 







