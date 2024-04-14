use ecommerce;

-- DDL Command Alter

Alter table Transactions
add foreign key (Customer_Id)
references customers (Customer_Id);

Alter table Transactions
add foreign key (Product_Id)
references products (Product_Id);

