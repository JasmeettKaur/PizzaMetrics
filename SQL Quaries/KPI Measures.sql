select * from pizza_sales;

/* Total Revenue */
select sum(total_price) as Total_Revenue from pizza_sales;

/* Avg. Order Values */
Select Sum(total_price)/count(Distinct(order_id)) as Avg_Order_value from pizza_sales;

/* Total Pizza Sold */
select sum(quantity) as Total_Pizzasold from pizza_sales;

/* Total Orders */
select count(distinct(order_id)) as Total_Orders from pizza_sales;
