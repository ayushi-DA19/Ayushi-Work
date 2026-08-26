--Task 1
CREATE DATABASE SalesAnalyticdb;

USE SalesAnalyticdb;

--Task 2
CREATE TABLE customers (
    id INT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    age INT,
    country VARCHAR(50),
    amount_spend INT
);

--Task 3
insert into customers 
values 
(1, 'Rahul', 25, 'India', 15000),
(2, 'Priya', 28, 'India', 22000),
(3, 'Amit', 32, 'India', 18000),
(4, 'Neha', 24, 'India', 12000),
(5, 'John', 35, 'USA', 30000),
(6, 'Sarah', 29, 'UK', 25000),
(7, 'David', 41, 'Canada', 35000),
(8, 'Emma', 27, 'Australia', 20000),
(9, 'Rohan', 30, 'India', 28000),
(10, 'Sophia', 33, 'USA', 32000),
(11, 'Oliver', 30, 'UK', 23000),
(12, 'Ananya', 21, 'India', 15000),
(13, 'Mohit', 25, 'India', 50000),
(14, 'Chloe', 27, 'France', 21000),
(15, 'Jin', 33, 'South Korea', 22000),
(16, 'Amara', 26, 'Nigeria', 17000);

--Task 4
select * From customers;

--Task 5
select user_name, age, country 
from customers;

--Task 6
select user_name, country ,amount_spend
from customers;

--Task 7
select user_name, country ,amount_spend
from customers where amount_spend >= 50000;

--Task 7
select user_name, country ,amount_spend
from customers where amount_spend > 20000;

--Task 8
select user_name,age
from customers where age > 30;

--Task 9
select user_name,country
from customers where country = 'India';

--Task 10
select user_name,amount_spend
from customers where amount_spend <20000;

--Task 11
select user_name,age,amount_spend
from customers where age<30 and amount_spend > 30000;

--Task 12
select user_name,amount_spend,country
from customers where country = 'India' and amount_spend>40000;

--Task 13
select user_name,country
from customers where country = 'India' OR country = 'USA';

--Task 13(2)

select user_name,country
from customers where country IN ('India','USA');

--Task 14
select user_name,country,amount_spend
from customers where country In ('India','USA') AND amount_spend >= 50000; 

--task 15
select * from customers WHERE NOT country='India';

--task 16 
select *
from customers order by amount_spend asc

--mihir 
select *
from customers
where country = 'India'
order by amount_spend desc;

--task17
select *
from customers
order by amount_spend desc;

--task18
select user_name, age, country, amount_spend
from customers order by age asc;

--task19
select * from customers
where age between 25 and 40 and amount_spend>30000 and country in ( 'India','USA')
ORDER BY amount_spend desc

--TASK20
SELECT *
FROM customers WHERE AGE >=30 AND amount_spend>30000 AND NOT country = 'India'
order by amount_spend asc

