/*
2. Top Customers by Revenue Contribution

Author: Kidima Medy Masuka
Date: 2026

📌 Business Question

Which customers generate the highest revenue, and how much do they contribute to total sales

*/

SELECT
    soh.CustomerID,
    SUM(sod.LineTotal) AS total_sales 
from sales.SalesOrderDetail sod 
JOIN Sales.SalesOrderHeader AS soh
    ON sod.SalesOrderID= soh.SalesOrderID
GROUP BY
    soh.CustomerID
ORDER BY
    total_sales DESC;
