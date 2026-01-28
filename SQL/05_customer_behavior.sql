
/*
5. Customer Behavior & Purchase Patterns

Author: Kidima Medy Masuka
Date: 2026

📌 Business Question:
What purchasing patterns distinguish repeat customers from one-time buyers?

*/


SELECT
    CustomerID,
    COUNT(SalesOrderID) AS number_of_orders,
    CASE
        WHEN COUNT(SalesOrderID) = 1 THEN 'one time buyer'
        ELSE 'repeat customer'
    END AS customer_classification
FROM Sales.SalesOrderHeader
GROUP BY
    CustomerID
ORDER BY 
    number_of_orders DESC;
