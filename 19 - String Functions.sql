use ecommerce;

-- Create a query showcasing the effects of UPPER and LOWER functions on customer names in the customers table.
SELECT UPPER(First_Name) AS Upper_First_Name,LOWER(Last_Name) AS Lower_Last_Name
FROM customers;

-- Create a query demonstrating insights gained from LEFT and RIGHT functions applied to addresses in the customers table.
SELECT LEFT(Shipping_Address, 20) AS Left_Shipping_Address, RIGHT(Billing_Address, 15) AS Right_Billing_Address
FROM customers;




