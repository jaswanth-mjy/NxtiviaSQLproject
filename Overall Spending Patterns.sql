/*
1. What is the overall distribution of spending across all product categories?
*/

SELECT 
    SUM(MntWines) AS total_wines,
    SUM(MntFruits) AS total_fruits,
    SUM(MntMeatProducts) AS total_meat_products,
    SUM(MntFishProducts) AS total_fish_products,
    SUM(MntSweetProducts) AS total_sweet_products,
    SUM(MntGoldProds) AS total_gold_products
FROM 
    customer_data;
