SELECT * FROM ecom.customer_data;
/*
1. How many purchases are made through the website, catalog, and in-store?
*/
SELECT 
SUM(NumWebPurchases) AS Total_Purchases_made_through_Websites,
SUM(NumCatalogPurchases) AS Total_Purchases_made_through_catalog,
SUM(NumStorePurchases) AS Total_Purchases_made_through_InStore
FROM
Customer_data;

/*
 2. What is the average number of web visits per month?
*/

SELECT 
AVG(NumWebVisitsMonth) AS AVERAGE_NO_OF_WebVISITS_PER_MONTH
FROM
Customer_data;