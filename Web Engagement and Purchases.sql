SELECT * FROM Customer_data;
/*
1.What is the correlation between the number of web visits and web purchases?

CORR IS NOT DIRECT COMMAND IN MySQL SO WE DO IT MANUALLY
*/

WITH AvgValues AS (
    SELECT
        AVG(NumWebVisitsMonth) AS AvgWebVisits,
        AVG(NumWebPurchases) AS AvgWebPurchases
    FROM customer_data
),
StdDevs AS (
    SELECT
        SQRT(SUM(POW(NumWebVisitsMonth - AvgWebVisits, 2)) / COUNT(*)) AS StdDevWebVisits,
        SQRT(SUM(POW(NumWebPurchases - AvgWebPurchases, 2)) / COUNT(*)) AS StdDevWebPurchases
    FROM customer_data, AvgValues
),
Covariance AS (
    SELECT
        SUM((NumWebVisitsMonth - AvgWebVisits) * (NumWebPurchases - AvgWebPurchases)) / (COUNT(*) - 1) AS Covar
    FROM customer_data, AvgValues
)
SELECT
    Covar / (StdDevWebVisits * StdDevWebPurchases) AS Correlation_WebVisits_WebPurchases
FROM
    Covariance, StdDevs;


