use ecommerce;

-- Disable Trigger before any actions

-- Data Manipulation (INSERT, UPDATE, DELETE):
-- Insert a new record into the database.

-- Insert new customer details
INSERT INTO customers (Customer_ID, First_Name, Last_Name, Customer_Age, Customer_Location, Shipping_Address, Billing_Address, Account_Age_Days)
VALUES (903, 'John', 'Doe', 30, 'New York', '123 Main St', '456 Elm St', 365);
-- Insert new product details
INSERT INTO products (Product_Id, Product_Category, Product_Quantity)
VALUES (9003, 'Electronics', 1);
-- Insert new transaction details
INSERT INTO transactions (Transaction_ID, Transaction_Amount, Transaction_Date, Transaction_Time, Payment_Method, Device_Used, IP_Address, Is_Fraudulent, Product_Id, Customer_Id)
VALUES ('ef48g469-5fe2-4345-b9o8-24451e535c04', 100.00, '2024-04-09', '12:00:00', 'Credit Card', 'Desktop', '192.168.0.1', 1, 9003, 903);


-- Update the status of a transaction to 'fraudulent'.
UPDATE transactions SET Is_Fraudulent = 1 WHERE Customer_Id = 700;

/*
-- Delete all transactions older than a certain Date.
DELETE FROM transactions WHERE Transaction_Date < '2000-01-01';

*/


-- Delete a record from the database.


-- Delete transactions associated with the product
DELETE FROM transactions WHERE Product_Id = '9003';
-- Delete the product
DELETE FROM products WHERE Product_Id = '9003';
-- Delete the customer
DELETE FROM customers WHERE Customer_ID = '903';




