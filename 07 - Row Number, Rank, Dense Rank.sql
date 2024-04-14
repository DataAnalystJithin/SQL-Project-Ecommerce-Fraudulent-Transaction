use ecommerce;


-- Row Number
-- Assign a row number to each transaction in the transaction table
SELECT ROW_NUMBER() OVER (ORDER BY Transaction_Date, Transaction_Time) AS Row_Numbers,t.* FROM transactions t;


-- Rank
-- Rank customers based on transaction amount order by transaction amount  descending
SELECT Customer_ID,Transaction_Amount,
RANK() OVER (ORDER BY Transaction_Amount DESC) AS Transaction_Amount_Rank
FROM transactions ORDER BY Transaction_Amount DESC;


-- Dense Rank
-- Using dense rank to analyze transaction frequencies among different customer age groups
SELECT DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) AS Age_Group_Transaction_Rank,
CASE 
    WHEN Customer_Age BETWEEN 18 AND 25 THEN '18-25'
    WHEN Customer_Age BETWEEN 26 AND 35 THEN '26-35'
    WHEN Customer_Age BETWEEN 36 AND 45 THEN '36-45'
    WHEN Customer_Age BETWEEN 46 AND 55 THEN '46-55'
    ELSE '56+' 
END AS Customer_Age_Group,
COUNT(*) AS Transaction_Frequency FROM transactions 
INNER JOIN customers ON transactions.Customer_ID = customers.Customer_ID
GROUP BY Customer_Age_Group ORDER BY Transaction_Frequency DESC;




