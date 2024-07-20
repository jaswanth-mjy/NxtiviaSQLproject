/*
1.what is the average age of Customers in the dataset? 
*/
USE ECOM;
SELECT * FROM ecom.customer_data;
SELECT current_timestamp() AS TIME_STAMP,AVG(YEAR(NOW())-Year_Birth) AS AverageAge FROM customer_data;
/*
2.How many customers fall into each education level category?
*/
SELECT COUNT(Education) FROM CUSTOMER_DATA;
SELECT current_timestamp(),EDUCATION,COUNT(*) AS COUNT
FROM
CUSTOMER_DATA
GROUP BY EDUCATION;
/*
3. What is the distribution of marital statuses among the customers?
*/
SELECT current_timestamp(),Marital_Status,COUNT(*) AS COUNT
FROM 
CUSTOMER_DATA
GROUP BY Marital_Status;

