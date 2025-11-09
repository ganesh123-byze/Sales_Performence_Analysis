-- Checking all tables data inserted correctly or not
select * from customers;
select * from orders;
select * from products;
select * from order_items;

select distinct region from orders;
select * from order_items limit 5;

-- checking the tables it join correctly or not
select c.customer_name,c.city,c.region,c.segment,o.order_date,o.order_total
from customers as c
join orders as o
on c.customer_id = o.customer_id;

select o.order_id,c.customer_name,p.product_name,oi.quantity,oi.price
from orders as o
join order_items as oi on o.order_id = oi.order_id
join products as p on oi.product_id = p.product_id
join customers as c on o.customer_id = c.customer_id;

-- Total Revenue by region
select o.region,sum(oi.price * oi.quantity) as Total_revenue
from orders as o
join order_items as oi
on o.order_id = oi.order_id
group by region;

-- Total profit by region
select o.region, sum(oi.total_profit) as region_profit
from orders as o
join order_items as oi
on o.order_id = oi.order_id
group by o.region;

-- Top Product By sale
select p.product_name as Product_Name,p.category as Category, sum(oi.price * oi.quantity) as Total_Revenue, sum(oi.quantity) as Total_Quantity_Sold
from products as p
join order_items as oi
on p.product_id = oi.product_id
group by product_Name,Category
order by Total_Revenue desc;

-- Customer Performence analysis
select c.Customer_name,c.city,c.region,
count(o.order_id) as Total_Orders,
 sum(o.order_total) as Total_Revenue,
 round(avg(o.order_total),2) as Average_Order_Value
from customers as c
join orders as o
on c.customer_id = o.customer_id
group by  c.Customer_name,c.city,c.region
order by Total_Revenue desc
limit 5;
