use ecommerce;

CREATE TABLE Transactions
(
Transaction_ID VARCHAR(50) PRIMARY KEY,
Transaction_Amount DECIMAL(10, 2),
Transaction_Date DATE,
Transaction_Time TIME,
Payment_Method VARCHAR(50),
Device_Used VARCHAR(100),
IP_Address VARCHAR(50),
Is_Fraudulent INT,
Product_Id INT,
Customer_Id INT
);



select * from Transactions;
select count(*) from transactions;
-- select count(distinct transaction_id) from transactions;
-- drop table Transactions;