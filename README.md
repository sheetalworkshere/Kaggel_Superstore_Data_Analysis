**# **Superstore Sales Analysis Project (Excel | SQL | Power BI)**

---

## **About the Project**

This is my **first end-to-end data analytics project**, covering **Excel, SQL, and Power BI**, where I analyzed the *Superstore dataset* to uncover detailed **sales and profit insights**.

The project is based on the popular **Kaggle Superstore dataset**.  
I analyzed sales performance, customer behavior, and profitability using **Excel** for data cleaning and exploration, **SQL** for insight generation through queries, and **Power BI** for creating an interactive dashboard that presents the data in a meaningful and visually appealing way.

The main objective of this project was to understand how different **regions**, **categories**, and **customer segments** contribute to business performance and to design a dashboard that supports **data-driven decision making**.

---

## **Tools Used**

- **Excel:** Data cleaning, KPI calculations, Pivot tables, and Charts  
- **SQL:** Data exploration and calculation of key business metrics  
- **Power BI:** Building an interactive dashboard and generating visual insights  

---

## **Key KPIs**

| KPI | Value |
|------|--------|
| **Total Sales** | $22,96,919.49 |
| **Average Sales** | $229.85 |
| **Highest Sales** | $22,638.48 |
| **Lowest Sales** | $0.44 |
| **Total Profit** | $2,86,409.08 |
| **Average Profit** | $28.66 |
| **Total Orders** | 9,993 |
| **Unique Orders** | 5,009 |
| **Total Customers** | 9,993 |
| **Unique Customers** | 793 |
| **Profit-Sales Ratio** | 12% |
| **Total Quantity Sold** | 9,993 |
| **Distinct Count** | 14 |
| **Average Discount Per Order** | 16% |

These KPIs provided a solid foundation for understanding the business’s overall performance and helped identify which areas were driving profitability and which required improvement.

---

## **SQL Summary**

I used **SQL** to calculate all the major KPIs and perform detailed analysis across multiple business dimensions.  
The SQL queries focused on extracting patterns, validating Excel results, and preparing data for Power BI visualization.  

### **Key Analysis Areas:**

- Profit & Sales by **Region**
- Profit & Sales by **Category / Sub-Category**
- Impact of **Discount** on Sales & Profit
- **Top 10 Customers** by Sales & Profit
- **Monthly Sales and Profit Trends**
- **Loss-Making Products**
- **Profit-Making Products**
- Profit & Sales by **Top Cities**
- Sales per **Customer Segment**
- Orders by **Ship Mode**
- **Overall Business Summary**

### **Query for Overall Business Summary**

```sql
SELECT
    ROUND(SUM(Sales),2) AS Total_Sales,
    CAST(ROUND(AVG(Sales),2) AS DECIMAL(10,2)) AS Avg_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    CAST(ROUND(AVG(Profit),2) AS DECIMAL(10,2)) AS Avg_Profit,
    CAST(ROUND((SUM(Profit)/SUM(Sales))*100,2) AS DECIMAL(10,2)) AS Profit_Sales_Ratio,
    CAST(ROUND(AVG(Discount),2) AS DECIMAL(10,2)) AS Avg_Discount,
    SUM(Quantity) AS Total_Quantity_Sold,
    COUNT(DISTINCT(Order_ID)) AS Distinct_Orders,
    COUNT(DISTINCT(Customer_ID)) AS Distinct_Customers
FROM [Super Store Data SQL];
******
```

Insights from the Power BI Dashboard

The Power BI dashboard visually represents the core business performance metrics.
It helped in identifying key insights and patterns such as:
  - Showed major KPIs including Total Sales, Total Profit, Total Profit Margin, Total Orders, Total Quantity, and Total Customers.
  - Sales and Profit peaked in November, indicating a strong seasonal trend in performance.
  - The West Region performed best in both Sales and Profit.
  - The Consumer Segment contributed 50.56% of total sales.
  - Furniture and Technology were the top-performing categories, while within sub-categories, Chairs and Phones showed the highest profitability.
  - Standard Class was identified as the most frequently used shipping mode.
  - Displayed insights for Top 5 Cities by Sales and Top 5 Customers by Sales.
The dashboard was designed with clean visuals, color-coded KPIs, and interactive filters to help business users explore data dynamically.


Conclusion

This project helped me develop and strengthen my data analytics skills across tools and stages.
Through this project, I learned how to:
 - Clean and analyze raw data using Excel
 - Write SQL queries to extract, aggregate, and validate insights
 - Build a professional Power BI dashboard to communicate findings visually

It was a valuable and rewarding learning experience as a beginner data analyst, enhancing my understanding of the complete data analysis process — from data preparation to visualization.

This project gave me the confidence to handle larger datasets and approach future projects with a more structured, analytical mindset.


