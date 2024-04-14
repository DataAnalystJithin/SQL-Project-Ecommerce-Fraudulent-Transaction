use ecommerce;

/* "Write a SQL query that categorizes transactions based on their transaction amounts, labeling each transaction as either 'High' or 'Low'.
    Retrieve the transaction IDs along with their corresponding amount categories." */

SELECT Transaction_ID,Transaction_Amount,
IF(Transaction_Amount > 100, 'High', 'Low') AS Amount_Category FROM transactions;

/* Categorize transactions in the `transactions` table based on amount and fraud flag: 
label those over $100 and flagged as 'High Risk',under $100 as 'Low Risk',rest as 'Normal'
returning transaction IDs with risk categories. */

SELECT 
    Transaction_ID,
    Transaction_Amount,
    Is_Fraudulent,
    CASE
        WHEN Transaction_Amount > 100 AND Is_Fraudulent = 1 THEN 'High Risk'
        WHEN Transaction_Amount <= 100 AND Is_Fraudulent = 1 THEN 'Low Risk'
        ELSE 'Normal'
    END AS Risk_Category
FROM transactions;
