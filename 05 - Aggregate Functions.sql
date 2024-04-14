use ecommerce;

-- Aggregate Functions
-- Calculate the total amount spent by each user in the database using aggregate functions.
SELECT Customer_Id, SUM(Transaction_Amount) AS Total_Amount_Spent FROM transactions GROUP BY Customer_Id;

-- AVG
-- Determine the average transaction amount from the dataset
SELECT AVG(Transaction_Amount) AS Average_Transaction_Amount FROM Transactions;

-- Count
-- Count of Fraudulent Transactions by Payment Method:
SELECT Payment_Method, COUNT(*) AS Num_Fraudulent_Transactions FROM transactions
WHERE Is_Fraudulent = 1 GROUP BY Payment_Method;

-- Find out the number of transactions made from each city
SELECT Customer_Location, COUNT(*) AS Num_Transactions FROM Customers GROUP BY Customer_Location;

-- Max
-- Find out the maximum transaction amount recorded in the dataset.
SELECT MAX(Transaction_Amount) AS Max_Transaction_Amount FROM transactions;

-- Min
-- Find out the minimum transaction amount recorded in the dataset.
SELECT MIN(Transaction_Amount) AS Min_Transaction_Amount FROM transactions;











