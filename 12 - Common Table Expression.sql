use ecommerce;

-- Common Table Expression
-- Calculate the transaction amount for each product category excluding any transactions marked as fraudulent.
-- Here the common table expression name is ValidTransactions

WITH ValidTransactions AS 
(
SELECT t.Transaction_ID,t.Transaction_Amount,t.Product_Id,p.Product_Category FROM transactions t
JOIN products p ON t.Product_Id = p.Product_Id WHERE t.Is_Fraudulent = 0
)

SELECT Product_Category, SUM(Transaction_Amount) AS Total_Sales
FROM ValidTransactions
GROUP BY Product_Category;

/* 
Creating a temporary table (CTE) called ValidTransactions.
Selecting transaction details like transaction ID, amount, product ID, and product category.
Filtering out any transactions marked as fraudulent (Is_Fraudulent = 0).
This temporary table (ValidTransactions) contains only valid, non-fraudulent transactions with their details.

Main Query:
Selecting the product category and calculating the total sales amount for each category.
We're doing this by summing up the transaction amounts from the ValidTransactions CTE.
Finally, we're grouping the results by product category. 
*/


-- Same output Without using Common Table Expression
SELECT Product_Category, SUM(Transaction_Amount) AS Total_Sales FROM
(
SELECT t.Transaction_Amount, p.Product_Category FROM transactions t
JOIN products p ON t.Product_Id = p.Product_Id
WHERE t.Is_Fraudulent = 0
) 
AS ValidTransactions
GROUP BY Product_Category;
