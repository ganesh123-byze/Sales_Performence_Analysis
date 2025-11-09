create database Salesdb;
use Salesdb;

create table customers (
customer_id int primary key,
customer_name varchar(50),
city varchar(50),
region varchar(50),
segment varchar(50)
);

create table products (
product_id int primary key,
product_name varchar(100),
category varchar(50),
price decimal(10,3),
profit_margin decimal(10,3)
);

create table orders (
order_id int primary key,
order_date date,
customer_id int,
region varchar(50),
order_total decimal(10,2),
foreign key(customer_id) references Customers(customer_id)
);

create table order_items (
order_item_id int primary key,
order_id int,
product_id int,
quantity int,
price decimal(10,2),
total_profit decimal(10,2),
foreign key(order_id) references orders(order_id),
foreign key(product_id) references products(product_id)
);