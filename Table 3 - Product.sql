use ecommerce;

CREATE TABLE products 
(
    Product_Id INT PRIMARY KEY,
    Product_Category VARCHAR(255),
    Product_Quantity INT
);

select * from products;
select count(*) from products;

-- drop table products;