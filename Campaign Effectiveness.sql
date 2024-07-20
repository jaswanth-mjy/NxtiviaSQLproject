USE ECOM;
SELECT * FROM customer_data;

/*
1.What is the conversion rate for each campaign?
Hint:
Conversion Rate= Total Number of Customers/Number of Acceptances
*/
SELECT
    (SUM(AcceptedCmp1) * 100 / COUNT(*)) AS ConversionRate_Campaign1,
    (SUM(AcceptedCmp2) * 100 / COUNT(*)) AS ConversionRate_Campaign2,
    (SUM(AcceptedCmp3) * 100 / COUNT(*)) AS ConversionRate_Campaign3,
    (SUM(AcceptedCmp4) * 100 / COUNT(*)) AS ConversionRate_Campaign4,
    (SUM(AcceptedCmp5) * 100 / COUNT(*)) AS ConversionRate_Campaign5,
    (SUM(Response)     * 100 / COUNT(*)) AS ConversionRate_Last_cmp6
FROM customer_data;


/*
2.Which campaign has the highest acceptance rate?
*/

SELECT 
greatest(
    (SUM(AcceptedCmp1) * 100 / COUNT(*)), 
    (SUM(AcceptedCmp2) * 100 / COUNT(*)),
    (SUM(AcceptedCmp3) * 100 / COUNT(*)),
    (SUM(AcceptedCmp4) * 100 / COUNT(*)),
    (SUM(AcceptedCmp5) * 100 / COUNT(*)),
    (SUM(Response)     * 100 / COUNT(*)) 
) AS HIGHEST_ACCEPTANCE_RATE
FROM 
Customer_data;
