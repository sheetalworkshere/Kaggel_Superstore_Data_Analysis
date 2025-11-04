--Query to see the Table.
SELECT * from [Super Store Data SQL];


--Overall Business Summary.
SELECT 
      ROUND(SUM(Sales),2) AS Total_Sales,
      CAST(ROUND(AVG(Sales),2) AS DECIMAL(10,2)) AS Avg_Sales,
      ROUND(SUM(Profit),2) AS Total_ProfIt,
      CAST(ROUND(AVG(Profit),2) AS decimal (10,2)) AS Avg_Profit,
      CAST(ROUND((SUM(Profit)/SUM(Sales))*100,2) AS DECIMAL(10,2)) AS Profit_Sales_Ratio,
      CAST(ROUND(AVG(Discount),2) AS decimal(10,2)) AS Avg_Discount,
      SUM(Quantity) AS Total_Quantity_Sold,
      COUNT(DISTINCT(Order_ID)) AS Distinct_Orders,
      COUNT(DISTINCT(Customer_ID)) AS Distinct_Customer 
from [Super Store Data SQL];



--Profit & Sales by Region
SELECT Region,
              ROUND(SUM(Sales),2) AS Sales_by_Region,
              ROUND(SUM(Profit),2) AS Profit_by_Region,
              ROUND(SUM(Discount),2) AS Discount_by_Region,
              ROUND(SUM(Profit)/SUM(Sales)*100,2) AS Profit_Margin
from [Super Store Data SQL]
GROUP BY Region
ORDER BY Profit_Margin DESC;



--Profit & Sales by Category/Sub-Category.
SELECT Category, Sub_Category,
                              ROUND(SUM(Sales),2) AS Total_Sales_by_Category,
							  ROUND(SUM(Profit),2) AS Total_Profit_by_Category,
							  ROUND(SUM(Profit)/SUM(Sales)*100,2) AS Profit_Margin

from [Super Store Data SQL]
GROUP BY Category, Sub_Category
ORDER BY Profit_Margin DESC;



--Impact of Discount on Sales & Profit.
SELECT 
      ROUND(Discount*100,0) AS Discount_Percent,
      ROUND(AVG(Sales),2) AS Avg_Sales, 
      ROUND(AVG(Profit),2) AS Avg_Profit
FROM [Super Store Data SQL]
GROUP BY Discount
ORDER BY Discount;

               

--Top 10 Customers by Sales & Profit.
SELECT Top 10 Customer_Name,
                    ROUND(SUM(Sales),2) AS Total_Sales_by_Customer,
					ROUND(SUM(Profit),2) AS Total_Sales_by_Profit,
					ROUND(SUM(Profit)/SUM(Sales)*100,2) AS Profit_Margin
from [Super Store Data SQL]
GROUP BY Customer_Name
ORDER BY Profit_Margin DESC;


--Monthly Sales & Profit Trends.
SELECT 
      FORMAT(Order_Date,'MMM-yyyy') AS Month_Year,
	  ROUND(SUM(Sales),2) AS Total_Sales,
	  ROUND(SUM(Profit),2) AS Total_Profit
from [Super Store Data SQL]
GROUP BY FORMAT(Order_Date,'MMM-yyyy'), YEAR(Order_Date), MONTH(Order_Date)
ORDER BY YEAR(Order_Date), MONTH(Order_Date);


--Loss Making Products.
SELECT Product_Name,
                   ROUND(SUM(Sales),2) AS Total_Sales,
				   ROUND(SUM(Profit),2) AS Total_Profit
from [Super Store Data SQL]
GROUP BY Product_Name
HAVING SUM(Profit)<0
ORDER BY Total_Profit ASC;
      

--Profit Making Products.
SELECT TOP 10 Product_Name,
                   ROUND(SUM(Sales),2) AS Total_Sales,
				   ROUND(SUM(Profit),2) AS Total_Profit
from [Super Store Data SQL]
GROUP BY Product_Name
ORDER BY Total_Profit DESC;


--Profit & Sales by Top Cities.
SELECT TOP 10 City,
            ROUND(SUM(SALES),2) AS Total_Sales,
			ROUND(SUM(Profit),2) AS Total_Profit
from [Super Store Data SQL]
GROUP BY City
ORDER BY Total_Profit DESC;


--Sales per Customer Segment.
SELECT Segment,
            ROUND(SUM(SALES),2) AS Total_Sales
from [Super Store Data SQL]
GROUP BY Segment
ORDER BY Total_Sales DESC;


--Orders by Shipmode.
SELECT Ship_Mode,
                 COUNT(DISTINCT(Order_ID)) AS Distinct_Order
from [Super Store Data SQL]
GROUP BY Ship_Mode
ORDER BY Distinct_Order DESC;

              







--



                 












