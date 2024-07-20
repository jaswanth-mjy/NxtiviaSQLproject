SELECT * FROM CUSTOMER_DATA;
/*
1.How many customers accepted each campaign offer?
*/
SELECT 
    SUM(AcceptedCmp1) AS accepted_cmp1,
    SUM(AcceptedCmp2) AS accepted_cmp2,
    SUM(AcceptedCmp3) AS accepted_cmp3,
    SUM(AcceptedCmp4) AS accepted_cmp4,
    SUM(AcceptedCmp5) AS accepted_cmp5
FROM 
    customer_data;

/*
2. What is the overall response rate for the last campaign?
*/

SELECT 
    (SUM(Response) / COUNT(*)) * 100 AS overall_response_rate
FROM 
    customer_data;
