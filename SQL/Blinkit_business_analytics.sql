-- 1. View Complete Data
SELECT * FROM blinkit;

-- 2. Total Number of Items
SELECT COUNT(*) AS Total_Items
FROM blinkit;

-- 3. Total Sales
SELECT SUM(Item_Outlet_Sales) AS Total_Sales
FROM blinkit;

-- 4. Average Sales
SELECT ROUND(AVG(Item_Outlet_Sales),2) AS Average_Sales
FROM blinkit;

-- 5. Average Rating
SELECT ROUND(AVG(Ratings),2) AS Average_Rating
FROM blinkit;

-- 6. Sales by Item Fat Content
SELECT Item_Fat_Content,
       ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales
FROM blinkit
GROUP BY Item_Fat_Content
ORDER BY Total_Sales DESC;

-- 7. Sales by Item Type
SELECT Item_Type,
       ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales
FROM blinkit
GROUP BY Item_Type
ORDER BY Total_Sales DESC;

-- 8. Sales by Outlet Size
SELECT Outlet_Size,
       ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales
FROM blinkit
GROUP BY Outlet_Size;

-- 9. Sales by Outlet Location
SELECT Outlet_Location_Type,
       ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales
FROM blinkit
GROUP BY Outlet_Location_Type;

-- 10. Sales by Outlet Type
SELECT Outlet_Type,
       ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales
FROM blinkit
GROUP BY Outlet_Type;

-- 11. Average Sales by Outlet Type
SELECT Outlet_Type,
       ROUND(AVG(Item_Outlet_Sales),2) AS Avg_Sales
FROM blinkit
GROUP BY Outlet_Type;

-- 12. Top 10 Highest Selling Products
SELECT Item_Identifier,
       Item_Type,
       Item_Outlet_Sales
FROM blinkit
ORDER BY Item_Outlet_Sales DESC
LIMIT 10;

-- 13. Sales by Outlet Establishment Year
SELECT Outlet_Establishment_Year,
       ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales
FROM blinkit
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;

-- 14. Average Rating by Outlet Type
SELECT Outlet_Type,
       ROUND(AVG(Ratings),2) AS Avg_Rating
FROM blinkit
GROUP BY Outlet_Type;

-- 15. Sales by Outlet Identifier
SELECT Outlet_Identifier,
       ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales
FROM blinkit
GROUP BY Outlet_Identifier
ORDER BY Total_Sales DESC;