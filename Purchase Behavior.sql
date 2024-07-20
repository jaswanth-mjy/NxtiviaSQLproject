/*
1.What is the average number of days since the last purchase?
*/
SELECT * FROM ecom.customer_data;
SELECT AVG(Recency) AS  Average_no_of_days_since_last_purchase FROM customer_data;
/*
2.How much, on average, do customers spend on each product category?
*/
SELECT 
AVG(MntWines) As Average_wine_spending,
AVG(MntFruits) AS Average_Fruit_Spending,
AVG(MntMeatProducts) AS Average_Meat_Spending,
AVG(MntFishProducts) AS Average_Fish_Spending,
AVG(MntSweetProducts) AS Average_Sweet_Spending,
AVG(MntGoldProds) AS Average_Sweet_Spending
FROM
CUSTOMER_DATA;
