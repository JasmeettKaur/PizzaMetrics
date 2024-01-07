/* Daily Trend For Orders */
select* from pizza_sale;
select datename(DW,order_date) as order_day, count(distinct(order_id)) as Total_Orders from pizza_sale
  group by datename(DW,order_date)

/* Monthly Trend For Orders */
select datename(Month,order_date) as Month_name, count(distinct(order_id)) as Total_Orders from pizza_sale 
  group by datename(Month,order_date) order by Total_Orders desc;

/* % Sales by Pizza Category */
select pizza_category,Sum(Total_price) as Total_Price, 
sum(total_price)*100 / (select sum(total_price) from pizza_sale) as Total_Revenue 
from pizza_sale 
group by Pizza_Category;

/* % Sales by Pizza Size */
select pizza_Size,Cast(Sum(Total_price) as decimal(10,2))as Total_Price, 
cast(sum(total_price)*100  / (select sum(total_price) from pizza_sale) as decimal(10,2))as PCT
from pizza_sale 
group by Pizza_Size;

/* Top 5 Best Sellers by Revenue */
select Top 5 pizza_name, Sum(total_price) as Total_Revenue 
from pizza_sale
group by pizza_Name
order by Total_Revenue desc;

/* Bottom 5 Pizza by Revenue */
select Top 5 pizza_name, Sum(total_price) as Total_Revenue 
from pizza_sale
group by pizza_Name
order by Total_Revenue asc;

/* Top 5 Best Sellers by Total Qunatity */
select Top 5 pizza_name, Sum(Quantity) as Total_Quantity 
from pizza_sale
group by pizza_Name
order by Total_Quantity desc;

/* Bottom 5 Pizza by Total Quantity */
select Top 5 pizza_name, Sum(Quantity) as Total_Quantity 
from pizza_sale
group by pizza_Name
order by Total_Quantity asc;

/* Top 5 Best Sellers by Total Orders */
select Top 5 pizza_name, Count(distinct(Order_id)) as Total_Orders
from pizza_sale
group by pizza_Name
order by Total_Orders desc;

/* Bottom 5 Pizza by Total Orders */
select Top 5 pizza_name, Count(distinct(Order_id)) as Total_Orders
from pizza_sale
group by pizza_Name
order by Total_Orders;
