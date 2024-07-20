---

# Nxtivia E-commerce Project

## Project Overview

This project involves an in-depth analysis of customer data for an e-commerce platform. The dataset includes customer demographics, spending habits, and responses to marketing campaigns. The primary goal is to extract actionable insights to improve business performance, understand customer behavior, and evaluate marketing campaign effectiveness.

**Dataset Source:** [Kaggle E-commerce Dataset](https://www.kaggle.com/datasets/krsign/ecom-dataset/data)
---

---
## 01 Executive Summary

The Nxtivia E-commerce Project aims to provide a comprehensive analysis of customer data to understand spending habits, demographics, and responses to marketing campaigns. This analysis will help in identifying key trends, enhancing customer engagement, and optimizing marketing strategies to boost overall business performance.

---
## 02 Introduction

The Nxtivia E-commerce Project aims to analyze a comprehensive dataset derived from an e-commerce platform to uncover valuable insights into customer behavior and spending patterns. By leveraging this dataset, the project seeks to identify trends, evaluate the effectiveness of marketing campaigns, and propose data-driven strategies to enhance customer engagement and business performance. This analysis is crucial for businesses aiming to optimize their operations and tailor their offerings to meet the evolving needs of their customers.
### Background
E-commerce has become a significant part of the retail industry, with businesses constantly seeking ways to understand their customers better and improve their marketing efforts. This project focuses on analyzing customer data to gain insights that can drive strategic decisions and improve overall business outcomes.

### Scope
The scope of this project includes:
- Analyzing customer demographics to understand the target audience.
- Examining spending habits to identify key product categories and customer preferences.
- Evaluating responses to marketing campaigns to determine their effectiveness.
- Providing actionable recommendations to enhance business performance.

### Objectives

1. **Import and prepare the dataset** from Kaggle.
2. **Create a database** named "Ecom" and load the dataset into MySQL Workbench.
3. **Perform detailed analysis** on various aspects:
   - Customer Demographics
   - Income and Household Information
   - Purchase Behavior
   - Campaign Responses
   - Online and Offline Purchases
   - Customer Complaints and Engagement
   - Discounts and Deals
   - Campaign Effectiveness
   - Web Engagement and Purchases
   - Overall Spending Patterns

---
# 03 Description of the Organization
### Comapny Overview
The organization is an innovative e-commerce platform dedicated to providing a seamless shopping experience for its customers. The company leverages advanced data analytics to understand customer behavior, optimize marketing efforts, and enhance overall business performance. It's commitment to data-driven decision-making ensures that it stays ahead of the competition in a rapidly evolving market.

---
# 04 Experimental Learning
### Data Collection and Preparation
The dataset for this project was collected from Kaggle, which provides a comprehensive collection of customer data, including demographics, spending habits, and marketing responses. The data was preprocessed to ensure accuracy and consistency before being loaded into the MySQL Workbench database for analysis.

### Types of Analytics Flow Chart

Below is a text-based flow chart representing different types of analytics:

                   +-----------------------+
                   |     Descriptive       |
                   |       Analytics       |
                   +----------+------------+
                              |
                              v
                   +-----------------------+
                   |     Diagnostic        |
                   |       Analytics       |
                   +----------+------------+
                              |
                              v
                   +-----------------------+
                   |     Predictive        |
                   |       Analytics       |
                   +----------+------------+
                              |
                              v
                   +-----------------------+
                   |     Prescriptive      |
                   |       Analytics       |
                   +-----------------------+


- **Descriptive Analytics:** What happened?
- **Diagnostic Analytics:** Why did it happen?
- **Predictive Analytics:** What will happen?
- **Prescriptive Analytics:** What should we do?
---

## Analysis Questions and SQL Queries

### A. Customer Demographics

1. **Average age of customers:**
    ```sql
    SELECT AVG(YEAR(CURDATE()) - Year_Birth) AS AverageAge FROM customer_data;
    ```

2. **Distribution of education levels:**
    ```sql
    SELECT Education, COUNT(*) AS Count FROM customer_data GROUP BY Education;
    ```

3. **Marital status distribution:**
    ```sql
    SELECT Marital_Status, COUNT(*) AS Count FROM customer_data GROUP BY Marital_Status;
    ```

### B. Income and Household Information

1. **Average household income:**
    ```sql
    SELECT AVG(Income) AS Average_Household_Income FROM customer_data;
    ```

2. **Customers with children and teenagers:**
    ```sql
    SELECT Kidhome + Teenhome AS Children_Teenagers, COUNT(*) AS Count FROM customer_data GROUP BY Children_Teenagers;
    ```

### C. Purchase Behavior

1. **Average days since last purchase:**
    ```sql
    SELECT AVG(Recency) AS Average_Days_Since_Last_Purchase FROM customer_data;
    ```

2. **Average spending on product categories:**
    ```sql
    SELECT 
        AVG(MntWines) AS Avg_Wine_Spending,
        AVG(MntFruits) AS Avg_Fruit_Spending,
        AVG(MntMeatProducts) AS Avg_Meat_Spending,
        AVG(MntFishProducts) AS Avg_Fish_Spending,
        AVG(MntSweetProducts) AS Avg_Sweet_Spending,
        AVG(MntGoldProds) AS Avg_Gold_Spending
    FROM customer_data;
    ```

### D. Campaign Response

1. **Accepted campaign offers:**
    ```sql
    SELECT 
        SUM(AcceptedCmp1) AS Accepted_Cmp1,
        SUM(AcceptedCmp2) AS Accepted_Cmp2,
        SUM(AcceptedCmp3) AS Accepted_Cmp3,
        SUM(AcceptedCmp4) AS Accepted_Cmp4,
        SUM(AcceptedCmp5) AS Accepted_Cmp5
    FROM customer_data;
    ```

2. **Overall response rate for the last campaign:**
    ```sql
    SELECT (SUM(Response) / COUNT(*)) * 100 AS Overall_Response_Rate FROM customer_data;
    ```

### E. Online and Offline Purchases

1. **Purchases through different channels:**
    ```sql
    SELECT 
        SUM(NumWebPurchases) AS Total_Web_Purchases,
        SUM(NumCatalogPurchases) AS Total_Catalog_Purchases,
        SUM(NumStorePurchases) AS Total_Store_Purchases
    FROM customer_data;
    ```

2. **Average web visits per month:**
    ```sql
    SELECT AVG(NumWebVisitsMonth) AS Avg_Web_Visits_Per_Month FROM customer_data;
    ```

### F. Complaints and Engagement

1. **Customer complaints in the last 2 years:**
    ```sql
    SELECT COUNT(*) AS Complaints_Last_2_Years FROM customer_data WHERE Complain = 1;
    ```

2. **Overall customer engagement rate:**
    ```sql
    SELECT 
        (SUM(AcceptedCmp1) + SUM(AcceptedCmp2) + SUM(AcceptedCmp3) + SUM(AcceptedCmp4) + SUM(AcceptedCmp5) + SUM(Response)) / COUNT(*) * 100 AS Overall_Engagement_Rate
    FROM customer_data;
    ```

### G. Discounts and Deals

1. **Deals made with discounts:**
    ```sql
    SELECT SUM(NumDealsPurchases) AS Total_Deals_With_Discounts FROM customer_data;
    ```

2. **Average deals and purchases:**
    ```sql
    SELECT 
        AVG(NumDealsPurchases) AS Avg_Deals_With_Discounts,
        AVG(NumWebPurchases + NumCatalogPurchases + NumStorePurchases) AS Avg_Total_Purchases
    FROM customer_data;
    ```

### H. Campaign Effectiveness

1. **Campaign conversion rates:**
    ```sql
    SELECT
        (SUM(AcceptedCmp1) * 100 / COUNT(*)) AS ConvRate_Cmp1,
        (SUM(AcceptedCmp2) * 100 / COUNT(*)) AS ConvRate_Cmp2,
        (SUM(AcceptedCmp3) * 100 / COUNT(*)) AS ConvRate_Cmp3,
        (SUM(AcceptedCmp4) * 100 / COUNT(*)) AS ConvRate_Cmp4,
        (SUM(AcceptedCmp5) * 100 / COUNT(*)) AS ConvRate_Cmp5,
        (SUM(Response) * 100 / COUNT(*)) AS ConvRate_Last_Cmp
    FROM customer_data;
    ```

2. **Campaign with the highest acceptance rate:**
    ```sql
    SELECT 
        GREATEST(
            (SUM(AcceptedCmp1) * 100 / COUNT(*)),
            (SUM(AcceptedCmp2) * 100 / COUNT(*)),
            (SUM(AcceptedCmp3) * 100 / COUNT(*)),
            (SUM(AcceptedCmp4) * 100 / COUNT(*)),
            (SUM(AcceptedCmp5) * 100 / COUNT(*)),
            (SUM(Response) * 100 / COUNT(*))
        ) AS Highest_Acceptance_Rate
    FROM customer_data;
    ```

### I. Web Engagement and Purchases

1. **Correlation between web visits and web purchases:**
    ```sql
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
    SELECT Covar / (StdDevWebVisits * StdDevWebPurchases) AS Correlation_WebVisits_WebPurchases
    FROM Covariance, StdDevs;
    ```

### J. Overall Spending Patterns

1. **Distribution of spending across product categories:**
    ```sql
    SELECT 
        SUM(MntWines) AS Total_Wines,
        SUM(MntFruits) AS Total_Fruits,
        SUM(MntMeatProducts) AS Total_Meat_Products,
        SUM(MntFishProducts) AS Total_Fish_Products,
        SUM(MntSweetProducts) AS Total_Sweet_Products,
        SUM(MntGoldProds) AS Total_Gold_Products
    FROM customer_data;
    ```

---
## 05 Internship Outcomes and Conclusion

This project provided valuable insights into customer behavior and spending patterns. Key outcomes include:
- Identification of high-value customer segments.
- Evaluation of marketing campaign effectiveness.
- Recommendations for improving customer engagement and retention.
- Strategies for optimizing product offerings based on customer preferences.

The analysis highlights the importance of data-driven decision-making in e-commerce and provides actionable recommendations to enhance business performance.

---
## 06 Bibliography

### 1. Books and Articles

- "Data Science for Business" by Foster Provost and Tom Fawcett
- "Marketing Analytics: Data-Driven Techniques with Microsoft Excel" by Wayne L. Winston

### 2. Online Resources

- [Kaggle E-commerce Dataset](https://www.kaggle.com/datasets/krsign/ecom-dataset/data)
- [Towards Data Science: E-commerce Data Analysis](https://towardsdatascience.com/e-commerce-data-analysis)

### 3. Company Reports and Internal Documents

- Annual Customer Engagement Report
- Internal Marketing Campaign Analysis Reports
---
