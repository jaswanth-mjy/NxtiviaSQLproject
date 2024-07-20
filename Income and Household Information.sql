/*
1.What is the average household income of the customers?
*/
SELECT * FROM ecom.customer_data;

SELECT AVG(INCOME) AS Average_HouseHold_Income
FROM 
CUSTOMER_DATA;

/*
2.How many customers have children and teenagers in their households?
*/

SELECT Kidhome,Teenhome,COUNT(*) AS count
FROM 
CUSTOMER_DATA
GROUP BY
Kidhome,Teenhome;

