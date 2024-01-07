
select* from pizza_sale;
select datename(DW,order_date) as order_day, count(distinct(order_id)) as Total_Orders from pizza_sale group by datename(DW,order_date)
select datename(Month,order_date) as Month_name, count(distinct(order_id)) as Total_Orders from pizza_sale group by datename(Month,order_date) order by Total_Orders desc;

select pizza_category,Sum(Total_price) as Total_Price, 
sum(total_price)*100 / (select sum(total_price) from pizza_sale) as Total_Revenue 
from pizza_sale 
group by Pizza_Category;

select pizza_Size,Cast(Sum(Total_price) as decimal(10,2))as Total_Price, 
cast(sum(total_price)*100  / (select sum(total_price) from pizza_sale) as decimal(10,2))as PCT
from pizza_sale 
group by Pizza_Size;

select Top 5 pizza_name, Sum(total_price) as Total_Revenue 
from pizza_sale
group by pizza_Name
order by Total_Revenue desc;

select Top 5 pizza_name, Sum(total_price) as Total_Revenue 
from pizza_sale
group by pizza_Name
order by Total_Revenue asc;

select Top 5 pizza_name, Sum(Quantity) as Total_Quantity 
from pizza_sale
group by pizza_Name
order by Total_Quantity desc;

select Top 5 pizza_name, Sum(Quantity) as Total_Quantity 
from pizza_sale
group by pizza_Name
order by Total_Quantity asc;

select Top 5 pizza_name, Count(distinct(Order_id)) as Total_Orders
from pizza_sale
group by pizza_Name
order by Total_Orders desc;

select Top 5 pizza_name, Count(distinct(Order_id)) as Total_Orders
from pizza_sale
group by pizza_Name
order by Total_Orders;