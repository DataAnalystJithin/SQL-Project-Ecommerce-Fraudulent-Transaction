use ecommerce;

-- View
-- View table of Transaction Summary for viewer without sensitive information

CREATE VIEW transaction_summary AS
SELECT t.Transaction_ID,t.Transaction_Amount,t.Transaction_Date,t.Transaction_Time,
       t.Payment_Method,t.Device_Used,t.Is_Fraudulent,p.Product_Category
FROM transactions t
JOIN products p ON t.Product_Id = p.Product_Id;


SELECT * FROM transaction_summary;
