/*

1️. Monthly Sales Performance & Trend Analysis

Author: Kidima Medy Masuka
Date: 2026

📌 Business Question

How do total sales revenue and order volume change over time (monthly), and are there any seasonal patterns?
 Monthly sales revenue by year and month
*/

SELECT
    YEAR(soh.OrderDate) AS sales_year,
    MONTH(soh.OrderDate) AS sales_month,
    SUM(sod.LineTotal) AS total_sales
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod
    ON soh.SalesOrderID = sod.SalesOrderID
GROUP BY
    YEAR(soh.OrderDate),
    MONTH(soh.OrderDate)
	order by sales_year,sales_month;




