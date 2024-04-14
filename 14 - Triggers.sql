-- Creating a table for blocked IP addresses with Customer_ID, Transaction_ID, and IP_Address

use ecommerce;

CREATE TABLE Blocked_IP_Addresses_List 
(
    Customer_ID INT,
    Transaction_ID VARCHAR(50),
    IP_Address VARCHAR(50),
    FOREIGN KEY (Customer_ID) REFERENCES customers(Customer_ID),
    FOREIGN KEY (Transaction_ID) REFERENCES transactions(Transaction_ID)
);

-- Creating the trigger
DELIMITER //

CREATE TRIGGER Detect_New_Fraudulent_Transactions
AFTER INSERT ON transactions
FOR EACH ROW
BEGIN
    IF NEW.Is_Fraudulent = 1 THEN
        INSERT INTO Blocked_IP_Addresses_List (Customer_ID, Transaction_ID, IP_Address)
        VALUES (NEW.Customer_ID, NEW.Transaction_ID, NEW.IP_Address);
    END IF;
END;
//
DELIMITER ;


DROP TRIGGER IF EXISTS Detect_New_Fraudulent_Transactions;

drop TABLE Blocked_IP_Addresses_list;

select * from Blocked_IP_Addresses_list;