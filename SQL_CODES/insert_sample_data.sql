insert into customers (customer_id,customer_name,city,region,segment)
values
(1, 'John Smith', 'New York', 'East', 'Consumer'),
(2, 'Emma Johnson', 'Los Angeles', 'West', 'Corporate'),
(3, 'Rajesh Kumar', 'Mumbai', 'Central', 'Home Office'),
(4, 'Sophia Brown', 'Chicago', 'East', 'Consumer'),
(5, 'Liam Wilson', 'Houston', 'South', 'Small Business'),
(6, 'Olivia Taylor', 'London', 'West', 'Corporate'),
(7, 'Noah Davis', 'Delhi', 'Central', 'Consumer'),
(8, 'Ava Patel', 'Sydney', 'East', 'Home Office'),
(9, 'Ethan Thomas', 'Toronto', 'North', 'Small Business'),
(10, 'Isabella Lee', 'San Francisco', 'West', 'Corporate');

insert into products (product_id,product_name,category,price,profit_margin)
values
(101, 'Laptop', 'Technology', 75000, 0.25),
(102, 'Smartphone', 'Technology', 30000, 0.20),
(103, 'Wireless Mouse', 'Accessories', 1200, 0.15),
(104, 'Keyboard', 'Accessories', 1500, 0.18),
(105, 'Office Chair', 'Furniture', 10000, 0.30),
(106, 'Desk Lamp', 'Furniture', 2500, 0.22),
(107, 'Printer', 'Technology', 18000, 0.28),
(108, 'Monitor', 'Technology', 15000, 0.25),
(109, 'Headphones', 'Accessories', 2500, 0.20),
(110, 'Smartwatch', 'Technology', 8000, 0.23);

insert into orders (order_id,order_date,customer_id,region,order_total)
values
(1001, '2025-01-05', 1, 'East', 78000),
(1002, '2025-01-10', 2, 'West', 32000),
(1003, '2025-01-15', 3, 'Central', 15000),
(1004, '2025-01-20', 4, 'East', 12000),
(1005, '2025-02-01', 5, 'South', 25000),
(1006, '2025-02-05', 6, 'West', 18000),
(1007, '2025-02-10', 7, 'Central', 8000),
(1008, '2025-02-15', 8, 'East', 30000),
(1009, '2025-02-20', 9, 'North', 21000),
(1010, '2025-02-25', 10, 'West', 35000),
(1011, '2025-03-01', 1, 'East', 45000),
(1012, '2025-03-10', 2, 'West', 29000),
(1013, '2025-03-15', 3, 'Central', 27000),
(1014, '2025-03-20', 4, 'East', 60000),
(1015, '2025-03-25', 5, 'South', 15000);

insert into order_items(order_item_id,order_id,product_id,quantity,price,total_profit)
values
(1, 1001, 101, 1, 75000, 18750),
(2, 1001, 103, 2, 1200, 360),
(3, 1002, 102, 1, 30000, 6000),
(4, 1002, 107, 1, 18000, 5040),
(5, 1003, 104, 2, 1500, 540),
(6, 1004, 105, 1, 10000, 3000),
(7, 1004, 106, 1, 2500, 550),
(8, 1005, 108, 1, 15000, 3750),
(9, 1005, 109, 2, 2500, 1000),
(10, 1006, 110, 1, 8000, 1840),
(11, 1007, 103, 1, 1200, 180),
(12, 1007, 107, 1, 18000, 5040),
(13, 1008, 102, 1, 30000, 6000),
(14, 1008, 109, 2, 2500, 1000),
(15, 1009, 105, 1, 10000, 3000),
(16, 1009, 106, 2, 2500, 1100),
(17, 1010, 101, 1, 75000, 18750),
(18, 1011, 108, 2, 15000, 7500),
(19, 1012, 110, 1, 8000, 1840),
(20, 1013, 109, 3, 2500, 1500),
(21, 1013, 104, 1, 1500, 270),
(22, 1014, 107, 2, 18000, 10080),
(23, 1014, 103, 1, 1200, 180),
(24, 1015, 106, 1, 2500, 550),
(25, 1015, 108, 1, 15000, 3750);
