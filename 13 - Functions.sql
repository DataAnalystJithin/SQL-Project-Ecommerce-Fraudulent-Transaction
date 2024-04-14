use ecommerce;

-- Functions
-- Calculates the average age of customers

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `Calculate_Average_Customer_Age`() RETURNS decimal(5,2)
    READS SQL DATA
RETURN (
    SELECT AVG(Customer_Age) FROM customers
)
*/

SELECT Calculate_Average_Customer_Age() AS Average_Customer_Age;
