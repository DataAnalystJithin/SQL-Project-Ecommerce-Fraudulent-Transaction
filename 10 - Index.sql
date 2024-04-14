use ecommerce;
 
-- Index
-- Index to speed up the queries related to identifying fraudulent transactions.

CREATE INDEX idx_fraudulent_transactions ON transactions (Is_Fraudulent);
SELECT * FROM transactions WHERE Is_Fraudulent = 1;
DROP INDEX idx_fraudulent_transactions ON transactions;
