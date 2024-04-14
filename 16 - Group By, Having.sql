use ecommerce; 

-- Group By
-- Count the number of transactions for each customer.
SELECT Customer_Id, COUNT(*) AS Transaction_Count
FROM transactions GROUP BY Customer_Id;


-- Having Clause
-- SQL query to retrieve product categories that contain more than five unique products?
SELECT Product_Category, COUNT(DISTINCT Product_Id) AS Unique_Products
FROM products
GROUP BY Product_Category
HAVING COUNT(DISTINCT Product_Id) > 5;


