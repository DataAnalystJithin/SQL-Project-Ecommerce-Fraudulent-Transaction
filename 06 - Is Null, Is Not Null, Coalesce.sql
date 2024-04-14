use ecommerce;

-- Is Null
-- Find all Customers whose fraudulent_id are missing from the database.
SELECT * FROM Transactions WHERE Is_Fraudulent IS NULL;

-- List all transactions where the billing address is not specified.
SELECT * FROM customers WHERE Billing_Address IS NULL;

-- IS NOT NULL
-- List transactions where the payment method is specified. 
SELECT * FROM transactions WHERE Payment_Method IS NOT NULL;

-- Coalesce
-- In this example: COALESCE will return the value of fraudulent_id if it is not NULL.
-- If fraudulent_id is NULL for a particular user, it will return 'No Fraudulent ID' instead.
SELECT COALESCE(Is_Fraudulent, 'No Fraudulent ID') AS No_Fraudulent_ID
FROM Transactions;
