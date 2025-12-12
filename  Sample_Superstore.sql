use Amara
go
select * from [Sample - Superstore] 
--1) List the Category that generates the most  sale
select top 1 Category, SUM(Total_Sales) as TotalSales from [Sample - Superstore]
group by Category
order by TotalSales
--2)list the top 5 state that generated the most profit
select top 5 state, sum (Profit) as TotalProfit from [Sample - Superstore]
group by State
order by TotalProfit desc
--3)which product did not make profit
select Product_Name, SUM(Profit) As Total_Loss
from [Sample - Superstore]
where Profit < 0
group by Product_Name
order by Total_Loss
--4)list the products ordered on 11/8/2016
select Product_Name, Order_Date from [Sample - Superstore]
where Order_Date = '2016-08-11'
--5)list the customers that live in texas
select Customer_ID, Customer_Name, State from [Sample - Superstore]
where State = 'Texas'
--6) Display the total number if customers
select COUNT(Customer_Name) as TotalCustomers from [Sample - Superstore]
--7) Display the customers that ordered furniture
select Customer_Name, Category from [Sample - Superstore]
where Category = 'Furniture'
--8) Total number of sales made in philadelphia
select City, count(Total_Sales) AS TotalSales from [Sample - Superstore]
where City = 'philadelphia'
group by City
order by TotalSales
--9)Display the shipping mode of products delivered to florida
select Product_Name, Ship_Mode from [Sample - Superstore]
where State = 'Florida'
--10) Which region made the highest sales
select TOP 1 Region, SUM(Total_Sales) AS TotalRegionalSales from [Sample - Superstore]
GROUP by Region
order by TotalRegionalSales
--11) who are the top 10 customers by total spending
select Top 10 Customer_Name, sum(Total_Sales) as TotalSpending from [Sample - Superstore]
GROUP BY Customer_Name
order by TotalSpending
--12) which shipping mode yield the average higgest profit per order
select top 1 Ship_Mode, AVG(Profit) AS AverageProfit from [Sample - Superstore]
Group by Ship_Mode
order by AverageProfit desc
--13) what is the sub category with the highest average profit
select Top 1 Sub_Category, AVG(Profit) AS AverageProfit from [Sample - Superstore]
group by Sub_Category
order by AverageProfit desc
--14) the top 10 products with the highest total discount given
select top 10 Product_Name, sum(Discount) as TotalDiscount from [Sample - Superstore]
group by Product_Name
order by TotalDiscount desc
--15) 
