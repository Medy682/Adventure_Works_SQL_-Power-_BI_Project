/*
4.Sales Performance by Territory / Region

Author: Kidima Medy Masuka
Date: 2026

--📌 Business Question
--How does sales performance vary across regions or territories

*/

SELECT
    st.Name AS territory,
    SUM(sod.LineTotal) AS total_sales
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod
    ON soh.SalesOrderID = sod.SalesOrderID
JOIN Sales.SalesTerritory st
    ON soh.TerritoryID = st.TerritoryID
GROUP BY
    st.Name
ORDER BY 
    total_sales desc;

