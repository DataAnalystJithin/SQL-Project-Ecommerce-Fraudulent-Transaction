Create database Ecommerce;
drop database Ecommerce;

use ecommerce;

-- Data Definition Language
-- DDL Command Create (Create,Drop,Alter,Truncate)
CREATE TABLE customers 
(
    Customer_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Customer_Age INT,
	Customer_Location VARCHAR(100),
    Shipping_Address VARCHAR(255),
    Billing_Address VARCHAR(255),
    Account_Age_Days INT
);


select * from customers;
select count(*) from customers;

