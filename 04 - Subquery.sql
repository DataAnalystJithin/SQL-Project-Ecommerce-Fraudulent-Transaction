use ecommerce;

-- Subquery
-- Find transactions made by users who have previously been flagged for fraud.
SELECT * FROM transactions WHERE Customer_Id IN (SELECT Customer_Id FROM customers WHERE Is_Fraudulent = 1);

-- Subquery to retrieve transactions within a certain date range.
SELECT * FROM transactions WHERE Transaction_Date BETWEEN (SELECT '2002-01-20') AND (SELECT '2011-03-20');


-- Select all the names, transaction IDs, and amounts for customers whose transactions exceed the average transaction amount.
SELECT c.Customer_ID, c.First_Name, c.Last_Name, t.Transaction_ID, t.Transaction_Amount
FROM customers c
JOIN transactions t ON c.Customer_ID = t.Customer_ID
WHERE t.Transaction_Amount > (SELECT AVG(Transaction_Amount) FROM transactions);


-- Select all transactions from the transactions table where the Customer_Location matches a specified region in the customers table.
SELECT * FROM transactions WHERE Customer_ID IN (SELECT Customer_ID FROM customers WHERE Customer_Location = 'West Kevin');


-- Calculate Mean and Standard Deviation
-- The mean represents the average transaction amount, while the standard deviation indicates how much transaction amounts vary from the average.
-- These statistical measures are commonly used in data analysis to understand the distribution and characteristics of a dataset.
SELECT AVG(Transaction_Amount) AS Mean_Amount, 
       STDDEV(Transaction_Amount) AS Std_Dev_Amount
FROM transactions;