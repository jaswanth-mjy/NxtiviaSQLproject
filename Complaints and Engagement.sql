SELECT * FROM ecom.customer_data;

/*
1.How many customers have complained in the last 2 years?
*/
SELECT
Complain,count(*) AS Complained_Last2years
FROM
customer_data
WHERE
Complain=1;
/*
2.What is the overall engagement rate (accepted any campaign or responded) among customers?
*/
SELECT
(SUM(AcceptedCmp1)+SUM(AcceptedCmp2)+SUM(AcceptedCmp3)+
SUM(AcceptedCmp4)+SUM(AcceptedCmp5)+SUM(Response)) AS Overall_engagement,
((SUM(AcceptedCmp1)+SUM(AcceptedCmp2)+SUM(AcceptedCmp3)+
SUM(AcceptedCmp4)+SUM(AcceptedCmp5)+SUM(Response))/COUNT(*))*100 AS OVERALL_ENGAGEMENT_RATE
FROM 
customer_data;