/*

3 Product Revenue & Profitability Analysis

Author: Kidima Medy Masuka
Date: 2026

📌 Business Question:
Which products generate the most revenue, and which products underperform?

*/

SELECT
    p.Name AS product,
    pc.Name AS category,
    SUM(sod.LineTotal) AS total_sales
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p
    ON sod.ProductID = p.ProductID
JOIN Production.ProductSubcategory psc
    ON p.ProductSubcategoryID = psc.ProductSubcategoryID
JOIN Production.ProductCategory pc
    ON psc.ProductCategoryID = pc.ProductCategoryID
GROUP BY
    p.Name,
    pc.Name
ORDER BY total_sales desc;
