use sales_transactionsdb

CREATE TABLE customer_3 (
    transaction_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    unit_price INT,
    discount_percent INT,
    city VARCHAR(50),
    payment_mode VARCHAR(30),
    salesperson VARCHAR(50),
    customer_type VARCHAR(30)
);

INSERT INTO customer_3
(transaction_id, customer_name, product_name, category, quantity, unit_price,
 discount_percent, city, payment_mode, salesperson, customer_type)
VALUES
(1, 'Rahul Sharma', 'Laptop', 'Electronics', 2, 65000, 10, 'Ahmedabad', 'UPI', 'Amit Patel', 'Regular'),
(2, 'Priya Mehta', 'Smartphone', 'Electronics', 1, 32000, 5, 'Mumbai', 'Credit Card', 'Neha Shah', 'Premium'),
(3, 'Arjun Verma', 'Office Chair', 'Furniture', 4, 8500, 8, 'Delhi', 'Debit Card', 'Rohan Gupta', 'Regular'),
(4, 'Sneha Iyer', 'Printer', 'Electronics', 1, 18500, 12, 'Bengaluru', 'UPI', 'Kavya Rao', 'Corporate'),
(5, 'Vikram Singh', 'Desk', 'Furniture', 2, 12000, 10, 'Jaipur', 'Cash', 'Amit Patel', 'Regular'),
(6, 'Ananya Joshi', 'Headphones', 'Accessories', 3, 3500, 5, 'Pune', 'UPI', 'Neha Shah', 'Regular'),
(7, 'Karan Malhotra', 'Monitor', 'Electronics', 2, 22000, 15, 'Gurugram', 'Credit Card', 'Rohan Gupta', 'Premium'),
(8, 'Meera Nair', 'Keyboard', 'Accessories', 5, 1800, 5, 'Kochi', 'Debit Card', 'Kavya Rao', 'Regular'),
(9, 'Aditya Kapoor', 'Tablet', 'Electronics', 2, 28000, 7, 'Chandigarh', 'UPI', 'Amit Patel', 'Premium'),
(10, 'Pooja Desai', 'Bookshelf', 'Furniture', 1, 9500, 10, 'Ahmedabad', 'Cash', 'Neha Shah', 'Regular'),

(11, 'Nikhil Jain', 'Smartwatch', 'Electronics', 2, 7500, 8, 'Indore', 'UPI', 'Rohan Gupta', 'Regular'),
(12, 'Riya Agarwal', 'Mouse', 'Accessories', 6, 1200, 5, 'Kolkata', 'Credit Card', 'Kavya Rao', 'Regular'),
(13, 'Suresh Kumar', 'Laptop', 'Electronics', 1, 72000, 12, 'Chennai', 'Net Banking', 'Amit Patel', 'Corporate'),
(14, 'Divya Reddy', 'Conference Table', 'Furniture', 1, 45000, 15, 'Hyderabad', 'Credit Card', 'Neha Shah', 'Corporate'),
(15, 'Manish Shah', 'External Hard Drive', 'Accessories', 3, 6500, 10, 'Surat', 'UPI', 'Rohan Gupta', 'Premium'),
(16, 'Ishita Roy', 'Smartphone', 'Electronics', 2, 45000, 8, 'Kolkata', 'Debit Card', 'Kavya Rao', 'Premium'),
(17, 'Deepak Yadav', 'Filing Cabinet', 'Furniture', 3, 7000, 5, 'Lucknow', 'Cash', 'Amit Patel', 'Regular'),
(18, 'Nandini Rao', 'Webcam', 'Accessories', 2, 4200, 10, 'Bengaluru', 'UPI', 'Neha Shah', 'Regular'),
(19, 'Harsh Patel', 'Projector', 'Electronics', 1, 38000, 12, 'Ahmedabad', 'Net Banking', 'Rohan Gupta', 'Corporate'),
(20, 'Simran Kaur', 'Bookshelf', 'Furniture', 2, 11000, 7, 'Amritsar', 'Credit Card', 'Kavya Rao', 'Regular'),
(21, 'Aakash Gupta', 'Monitor', 'Electronics', 3, 19500, 10, 'Noida', 'UPI', 'Amit Patel', 'Corporate'),
(22, 'Tanvi Kulkarni', 'Wireless Earbuds', 'Accessories', 4, 2800, 5, 'Pune', 'Debit Card', 'Neha Shah', 'Regular'),
(23, 'Rajiv Bansal', 'Office Chair', 'Furniture', 5, 9200, 12, 'Delhi', 'Credit Card', 'Rohan Gupta', 'Corporate'),
(24, 'Shreya Menon', 'Tablet', 'Electronics', 1, 31000, 8, 'Kochi', 'UPI', 'Kavya Rao', 'Premium'),
(25, 'Mohit Soni', 'Keyboard', 'Accessories', 10, 1500, 15, 'Jaipur', 'Cash', 'Amit Patel', 'Regular'),
(26, 'Komal Shah', 'Printer', 'Electronics', 2, 16500, 10, 'Surat', 'Net Banking', 'Neha Shah', 'Corporate'),
(27, 'Varun Thakur', 'Desk', 'Furniture', 3, 13500, 5, 'Chandigarh', 'UPI', 'Rohan Gupta', 'Premium'),
(28, 'Neelam Patel', 'Smartwatch', 'Electronics', 4, 6800, 7, 'Vadodara', 'Debit Card', 'Kavya Rao', 'Regular'),
(29, 'Yash Mehta', 'Laptop Bag', 'Accessories', 7, 2200, 10, 'Mumbai', 'Credit Card', 'Amit Patel', 'Regular'),
(30, 'Swati Mishra', 'Laptop', 'Electronics', 1, 68000, 15, 'Lucknow', 'UPI', 'Neha Shah', 'Premium');

select * from customers_2

---task6
select customer_name,product_name,quantity,unit_price,payment_mode
from customer_3
where payment_mode in ( 'cash' , 'upi' ) and quantity > 2 and unit_price > 15000
order by unit_price desc

---tAsk7
select * 
from customer_3
where category in ( 'Electronics','Furniture','Appliances') and discount_percent<10
order by discount_percent asc

--task8
select * 
from customer_3
where (customer_type = 'premium' or customer_type='regular')and (unit_price>30000) and (quantity >1)
order by unit_price desc

--task9
select *
from customer_3
where (quantity >4) and discount_percent<20
order by discount_percent desc

--task10
select transaction_id,customer_name,product_name,quantity,unit_price,category
from customer_3
where(quantity>5)and(unit_price>10000)and(quantity between 2 and 5)and(unit_price > 50000)
order by unit_price desc 

