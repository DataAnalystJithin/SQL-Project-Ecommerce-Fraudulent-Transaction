use ecommerce;


-- Use numeric functions such as ABS, CEILING, FLOOR, ROUND, and SQRT to analyze or manipulate transaction amounts effectively

SELECT Transaction_Amount,
    ABS(Transaction_Amount) AS Absolute_Amount,
    CEILING(Transaction_Amount) AS Rounded_Up_Amount,
    FLOOR(Transaction_Amount) AS Rounded_Down_Amount,
    ROUND(Transaction_Amount, 2) AS Rounded_To_2_Decimals,
    SQRT(Transaction_Amount) AS Square_Root_Amount
FROM 
    transactions;

/* "Use numeric functions to analyze transaction data in the 'transactions' table, specifically focusing on how MOD, POWER, EXP, 
and LOG functions offer insights into transaction amounts. */

SELECT 
    Transaction_Amount,
    MOD(Transaction_Amount, 3) AS Modulus_3,
    POWER(Transaction_Amount, 3) AS Power_Of_3,
    EXP(Transaction_Amount / 10) AS Exponential_Amount_Divided_By_10,
    LOG(Transaction_Amount + 1) AS Natural_Log_Amount_Plus_1
FROM 
    transactions;

