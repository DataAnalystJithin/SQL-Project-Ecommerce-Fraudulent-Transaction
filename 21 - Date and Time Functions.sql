use ecommerce;


-- Using data functions to extract temporal information from transaction dates within the 'transactions' table

SELECT 
    Transaction_Date,
    DAYNAME(Transaction_Date) AS Day_Of_Week,
    MONTHNAME(Transaction_Date) AS Month_Name,
    YEAR(Transaction_Date) AS Transaction_Year,
    MONTH(Transaction_Date) AS Transaction_Month,
    DAY(Transaction_Date) AS Transaction_Day
FROM 
    transactions;

/* How do SQL time functions, such as HOUR, MINUTE, SECOND, ADDTIME, and SUBTIME, enable the analysis and manipulation
 of transaction times within the 'transactions' table? */
 
SELECT Transaction_Time,
    HOUR(Transaction_Time) AS Transaction_Hour,
    MINUTE(Transaction_Time) AS Transaction_Minute,
    SECOND(Transaction_Time) AS Transaction_Second,
    ADDTIME(Transaction_Time, '01:30:00') AS Time_After_Addition,
    SUBTIME(Transaction_Time, '00:15:00') AS Time_After_Subtraction
FROM transactions;


