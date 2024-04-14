use ecommerce;

-- Stored Procedure
-- Stored procedure to retrieve all records from database where the customer is flagged as fraudulent.

DELIMITER //

CREATE PROCEDURE Get_Fraudulent_Records()
BEGIN
    SELECT * FROM customers c
    INNER JOIN transactions t ON c.Customer_ID = t.Customer_Id
    INNER JOIN products p ON t.Product_Id = p.Product_Id
    WHERE t.Is_Fraudulent = 1
    ORDER BY c.Customer_ID asc;
END //

DELIMITER ;

CALL Get_Fraudulent_Records();
