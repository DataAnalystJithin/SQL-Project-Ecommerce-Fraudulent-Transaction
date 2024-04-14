use ecommerce;

-- SAVEPOINT, ROLLBACK, COMMIT

START TRANSACTION;

-- Inserting a new customer
INSERT INTO customers (Customer_ID, First_Name, Last_Name, Customer_Age, Customer_Location, Shipping_Address, Billing_Address, Account_Age_Days)
VALUES (700, 'Alice', 'Smith', 25, 'Los Angeles', '123 Main St', '456 Elm St', 180);

SAVEPOINT customer_inserted;

-- Inserting in Products Table
INSERT INTO products (Product_Id, Product_Category, Product_Quantity)
VALUES (70000, 'Electronics', 10);

SAVEPOINT Product_inserted;

-- Inserting a new transaction for the customer
INSERT INTO transactions (Transaction_ID, Transaction_Amount, Transaction_Date, Transaction_Time, Payment_Method, Device_Used, IP_Address, Is_Fraudulent, Product_Id, Customer_Id)
VALUES ('977c0a6f-f7dc-4ed1-a646-83d41a8cdfb2', 75.00, '2024-04-12', '10:30:00', 'Credit Card', 'Desktop', '192.168.1.2', 0, 70000, 700);

SAVEPOINT transaction_inserted;

-- Updating the product quantity after the transaction
UPDATE products
SET Product_Quantity = Product_Quantity - 1
WHERE Product_Id = 70000;

SAVEPOINT product_updated;

-- Checking if the transaction is fraudulent
-- In this example, let's assume it's not fraudulent
-- If it is fraudulent, rollback to the product_updated savepoint
-- If not, you can commit
-- For demonstration purposes, let's simulate an error

ROLLBACK TO SAVEPOINT transaction_inserted;

-- If the rollback was successful and no further errors occurred, you can commit the transaction
COMMIT;

-- End of transaction

/*
-- To delete this data
DELETE FROM transactions
WHERE Transaction_ID = 'TXN001';

DELETE FROM customers
WHERE Customer_ID = 700;

DELETE FROM products
WHERE Product_Id = 70000;

*/