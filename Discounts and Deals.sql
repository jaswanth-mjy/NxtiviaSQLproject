SELECT * FROM customer_data;
/*
1.How many deals are made with discounts?
*/
SELECT 
    SUM(NumDealsPurchases) AS total_deals_with_discounts
FROM 
    customer_data;

/*
2.What is the average number of deals and purchases made by customers?
*/
SELECT 
    AVG(NumDealsPurchases) AS  AVG_deals_with_discounts,
    AVG(NumWebPurchases+NumCatalogPurchases+NumStorePurchases) 
    AS average_number_of_deals_and_purchases
FROM 
    customer_data; 

