create database training_institute ;
use  training_institute ;

create table student(
student_id int ,
name varchar(100) ,
age int ,
course varchar(50) ,
fees decimal(10,2) ,
email varchar(100) ,
admission_date date ,
is_active boolean 
) ;

desc student ;

insert into student values ( 101 , 'Rahul' , 21 , 'Java' , 50000 , 'rahul@gmail.com' , '2026-06-06' , 1 ) ,
( 102 , 'Priya' , 22 , 'Python' , 45000 , 'priya@gmail.com' , '2026-06-06' , 1 ) , 
( 103 , 'Amit' , 20 , 'SQL' , 30000 , 'amit@gmail.com' , '2026-06-06' , 1 ) 
;

insert into student value ( 105 , 'Soham' , 22 , 'SQL' , 30000 , 'soham@gmail.com' , '2026-06-06' , 1 ) ;
select * from student ;

select student_id from student ;

SET SQL_SAFE_UPDATES = 0;
update student set fees = 55000 where student_id = 101 ;

update  student set course = 'Java' where student_id = 103 ;

delete from student where student_id = 105 ;

alter table student add column phone varchar(15);


create table employee (
employee_id int ,
employee_name varchar(20) ,
age int ,
department varchar(10) ,
salary decimal(5,2) ,
email varchar(30) ,
joining_date date ,
is_active boolean
) ;

INSERT INTO employee (employee_id, employee_name, age, department, salary, email, joining_date, is_active)
VALUES
(1, 'Rahul Sharma', 28, 'IT', 999.99, 'rahul.sharma@email.com', '2020-03-15', TRUE),
(2, 'Priya Patel', 32, 'HR', 850.50, 'priya.patel@email.com', '2019-07-22', TRUE),
(3, 'Amit Kumar', 25, 'Sales', 700.00, 'amit.kumar@email.com', '2021-01-10', TRUE),
(4, 'Sneha Reddy', 29, 'IT', 950.25, 'sneha.reddy@email.com', '2020-11-05', FALSE),
(5, 'Vikram Singh', 35, 'Finance', 999.99, 'vikram.singh@email.com', '2018-06-30', TRUE),
(6, 'Anjali Gupta', 27, 'Sales', 650.75, 'anjali.gupta@email.com', '2022-02-18', TRUE),
(7, 'Rohan Mehta', 31, 'IT', 875.00, 'rohan.mehta@email.com', '2019-09-12', FALSE),
(8, 'Kavita Joshi', 26, 'HR', 720.50, 'kavita.joshi@email.com', '2021-08-25', TRUE);

update employee set salary = 400.56 where employee_id = 1 ;

select salary from employee where employee_id = 1 ;

delete from employee where employee_id = 5 ;
select * from employee ; 


alter table employee add column employee_DOB date ;
alter table employee modify column salary decimal(6,2);
alter table employee rename column employee_name to name ;
alter table employee drop employee_DOB;

desc employee ;

create table product ( 
product_id int ,
product_name varchar(10) ,
category varchar(10) ,
price decimal(3,2) ,
quantity int , 
description text ,
manufactured_date datetime ,
is_available boolean 
) ;

INSERT INTO product (product_id, product_name, category, price, quantity, description, manufactured_date, is_available)
VALUES
(1, 'Notebook', 'Stationry', 2.50, 100, 'A4 size ruled notebook, 200 pages', '2024-01-15 09:00:00', TRUE),
(2, 'Pen Blue', 'Stationry', 1.20, 250, 'Blue ink ball point pen', '2024-02-10 10:30:00', TRUE),
(3, 'Eraser', 'Stationry', 0.50, 300, 'White rubber eraser', '2024-01-20 08:15:00', TRUE),
(4, 'Scale', 'Stationry', 3.75, 150, 'Plastic 30cm ruler', '2024-03-05 11:00:00', FALSE),
(5, 'Stapler', 'Office', 8.99, 60, 'Small desktop stapler', '2024-02-28 14:45:00', TRUE);

alter table product modify column price int ;
update  product set price = 50000 where product_id = 1 ;


select * from product ; 
delete from product where product_id = 4 ;

alter table product add column brand varchar(50) ;

UPDATE product SET brand = 'GUCCI' WHERE product_id = 1;

update  product set is_available = 0 where product_id = 1; 


create table customer (
customer_id int primary key ,
customer_name varchar(10) ,
email varchar(15) 
) ;

create table orders (
order_id int primary key ,
customer_id int ,
product varchar(10) ,
amount float , 
foreign key (customer_id) references customer(customer_id) 
) ; 

CREATE TABLE sales (
    id INT PRIMARY KEY,
    product VARCHAR(20)
);
INSERT INTO sales (id, product) VALUES
(1, 'Pen'),
(2, 'Pencil'),
(3, 'Pen'),
(4, NULL),
(5, 'Eraser');

select * from sales ;
select count(distinct product) from sales ;

select SUM(id) from sales ;

alter table sales add column price int ;
INSERT INTO sales (id, price) VALUES 
(6, 300),
(7, 400),
(8, 500),
(9, 600),
(10, 700);

select product from sales where product not like 'p%' ;


select * from sales where price between  300 AND 700 ;  

CREATE TABLE test_employee (    
 id INT ,    
 name VARCHAR(50),   
 salary DECIMAL(10,2) 
 ); 
 
 
 
 /* SQL day 2 tasks */ 
 
 
 
 INSERT INTO test_employee (id, name, salary) VALUES
(1, 'Rahul Sharma', 45000.00),
(2, 'Priya Patel', 52000.50),
(3, 'Amit Verma', 38000.75),
(4, 'Sneha Iyer', 61000.00),
(5, 'Vikram Singh', 47500.25);

select * from test_employee ; 

SET SQL_SAFE_UPDATES = 0;

delete from test_employee where id=3 ;
truncate table test_employee ;
drop table test_employee ;


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (emp_id, name, salary) VALUES
(101, 'soham Sharma', 45000.00),
(102, 'advait Patel', 52000.00),
(103, 'aryan Verma', 38000.00);

start transaction;

update employees set name = 'soham shrawankar' where emp_id = 101 ;
update employees set name = 'advait kulkarni' where emp_id = 102 and emp_id = 103 ;


savepoint sp2 ;

select * from employees ;

rollback to sp2 ;

CREATE TABLE student1 (
    student_id   INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email        VARCHAR(100) UNIQUE,
    age          INT CHECK (age >= 18),
    city         VARCHAR(50) DEFAULT 'Pune',
    course       VARCHAR(100) NOT NULL
); 

INSERT INTO student1 (student_id, student_name, email, age, city, course) VALUES
(1, 'Rohan Deshmukh', 'rohan.deshmukh@example.com', 20, 'Pune', 'Computer Science'),
(2, 'Sneha Kulkarni', 'sneha.kulkarni@example.com', 21, 'Pune', 'Information Technology'),
(3, 'Aditya Sharma', 'aditya.sharma@example.com', 19, 'Mumbai', 'Mechanical Engineering'),
(4, 'Priya Iyer', 'priya.iyer@example.com', 22, 'Mumbai', 'Electronics Engineering'),
(5, 'Kunal Joshi', 'kunal.joshi@example.com', 20, 'Nashik', 'Civil Engineering'),
(6, 'Anjali Patil', 'anjali.patil@example.com', 23, 'Nashik', 'Computer Science'),
(7, 'Vikram Rao', 'vikram.rao@example.com', 21, 'Nagpur', 'Business Administration'),
(8, 'Neha Wagh', 'neha.wagh@example.com', 24, 'Nagpur', 'Information Technology');

insert into student1 values ( 1 , 'SohamDeshmukh', 'soham.deshmukh@example.com', 21, 'Nagpur', 'Electronics') ;

delete from student1 where student_id = 8 ;
select * from student1 ;
update student1 set course = ' electornics ' where student_id = 5 ;

select * from student1 order by student_id DESC ; 



/* Scenario 2 Company Employee Management */

create table department(
dept_id int primary key ,
dept_name varchar(20) not null unique 
);

insert into department (dept_id, dept_name) values (1 , 'IT'),
(2 , 'HR'),(3 , 'Finance'),(4 , 'Marketing'),(5 , 'Sales') ;

select * from department ;

create table employee(
emp_id int primary key ,
emp_name varchar(20) not null ,
email varchar(30) UNIQUE ,
salary int check (salary >= 15000) ,
city varchar(10) DEFAULT 'pune' ,
dept_id int ,
Foreign key(dept_id) references department(dept_id) 
);

INSERT INTO employee (emp_id, emp_name, email, salary, city, dept_id) VALUES
(1, 'Amit Sharma', 'amit.sharma@company.com', 25000, 'Pune', 1),
(2, 'Priya Singh', 'priya.singh@company.com', 32000, 'Mumbai', 2),
(3, 'Rahul Verma', 'rahul.verma@company.com', 28000, 'Delhi', 3),
(4, 'Sneha Patil', 'sneha.patil@company.com', 45000, 'Pune', 4),
(5, 'Vikram Rao', 'vikram.rao@company.com', 21000, 'Nagpur', 5),
(6, 'Ananya Iyer', 'ananya.iyer@company.com', 38000, 'Chennai', 1),
(7, 'Karan Mehta', 'karan.mehta@company.com', 19000, 'Pune', 2),
(8, 'Divya Nair', 'divya.nair@company.com', 52000, 'Kochi', 3),
(9, 'Arjun Reddy', 'arjun.reddy@company.com', 30000, 'Hyderabad', 4),
(10, 'Neha Kulkarni', 'neha.kulkarni@company.com', 27000, 'Pune', 5);

insert into employee (emp_id,dept_id) values ( 111 , 99 ) ;

update department set dept_name = 'IT' where dept_id = 3; 

update employee set salary = salary + 5000 where emp_id = 5 ;
select * from employee ;

UPDATE employee
SET dept = CASE dept_id
    WHEN 1 THEN 'IT'
    WHEN 2 THEN 'HR'
    WHEN 3 THEN 'Finance'
    WHEN 4 THEN 'Marketing'
    WHEN 5 THEN 'Sales'
END;
SET SQL_SAFE_UPDATES = 0;

ALTER TABLE employee
ADD dept VARCHAR(20);

update employee set salary = salary + 3000 where dept = 'IT' ;

delete from employee where emp_id = 8 ; 



/*Scenario 3 Online Shopping System */ 

create table product( 
product_id int primary key ,
product_name varchar(20) not null ,
email varchar(30) UNIQUE ,
price int CHECK (price > 0) ,
quantity int DEFAULT 0 ,
status varchar(15) default 'Available' ,
category varchar(15) 
);

select * from product ;

INSERT INTO product (product_id, product_name, price, quantity, status, category) VALUES
(1, 'Laptop', 55000, 20, '', 'Electronics'),
(2, 'Mobile', 25000, 50, 'Available', 'Electronics'),
(3, 'Keyboard', 800, 100, 'Available', 'Accessories'),
(4, 'Mouse', 500, 150, 'Available', 'Accessories'),
(5, 'Monitor', 12000, 30, 'Available', 'Electronics'),
(6, 'Headphones', 2500, 80, '','Accessories'),
(7, 'Printer', 8000, 15, 'Available', 'Electronics'),
(8, 'Tablet', 18000, 25, 'Available', 'Electronics'),
(9, 'Webcam', 1500, 60, 'Available', 'Accessories'),
(10, 'Speaker', 3000, 40,'', 'Accessories');

update product set price=-500 where product_id=10;  

delete from product where product_id = 10 ;



/* Task 1 */ 
create Database E_Learning ;
use E_Learning ;


create table Enrolment(
enrollment_id int primary key ,
student_id int not null ,
course_id int not null ,
enrollment_date date ,
status varchar(10) DEFAULT 'Active' ,
fees_paid int CHECK (fees_paid > 0)
) ;

INSERT INTO Enrolment (enrollment_id, student_id, course_id, enrollment_date, status, fees_paid) VALUES
(1, 101, 201, '2025-01-10', 'Active', 10000),
(2, 102, 202, '2025-01-11', 'Active',120000),
(3, 103, 201, '2025-01-12', '', 10400),
(4, 104, 203, '2025-01-13', 'Active', 10000),
(5, 105, 204, '2025-01-14', 'Dropped', 14000),
(6, 106, 202, '2025-01-15', 'Active', 10000),
(7, 107, 205, '2025-01-16', 'Completed', 15000),
(8, 108, 201, '2025-01-17', 'Active', 10000),
(9, 109, 203, '2025-01-18', 'Active', 10000),
(10, 110, 204, '2025-01-19', '', 120000);

/* if entered a negative value in fees it shows  an error of out of range vale */ 
alter table Enrolment modify column fees_paid int ; 

update Enrolment set fees_paid = 50000 where enrollment_id = 1 ;

update Enrolment set status = ' Completed ' where enrollment_id = 3 ;
select * from Enrolment ; 

SET sql_safe_updates = 0 ;
delete from Enrolment where status = 'Dropped ';

select * from Enrolment where status = 'Active' ;


/*-------------------------------------------------------------------------------*/

create database person ;
use person ;


create table person_info(
person_id int primary key auto_increment ,
person_name varchar(20) not null ,
person_age int check ( person_age > 18 ) ,
person_mobile varchar(15) UNIQUE not null ,
person_email varchar(30) not null ,
person_city varchar(30) DEFAULT 'pune' , 
person_birth_datetime datetime not null ,
joining_datetime datetime DEFAULT CURRENT_TIMESTAMP ,
created_at datetime ,
updated_at datetime
);

/* text values cannot have a default value */

INSERT INTO person_info
(person_name, person_age, person_mobile, person_email, person_city, person_birth_datetime)
VALUES
('Soham', 22, '9876543210', 'soham@gmail.com', 'Pune', '2004-09-16 10:30:00'),
('Rahul', 25, '9876543211', 'rahul@gmail.com', 'Mumbai', '2001-05-12 09:20:00'),
('Amit', 30, '9876543212', 'amit@gmail.com', 'Delhi', '1996-03-20 11:00:00'),
('Rohan', 24, '9876543213', 'rohan@gmail.com', 'Nagpur', '2002-01-15 14:30:00'),
('Karan', 27, '9876543214', 'karan@gmail.com', 'Nashik', '1999-07-25 08:15:00'),
('Aditya', 23, '9876543215', 'aditya@gmail.com', 'Pune', '2003-11-10 16:45:00'),
('Akash', 29, '9876543216', 'akash@gmail.com', 'Mumbai', '1997-08-18 12:10:00'),
('Vivek', 26, '9876543217', 'vivek@gmail.com', 'Delhi', '2000-02-28 13:25:00'),
('Nikhil', 21, '9876543218', 'nikhil@gmail.com', 'Nagpur', '2005-06-05 17:00:00'),
('Yash', 28, '9876543219', 'yash@gmail.com', 'Pune', '1998-12-22 09:45:00');

select * from person_info ;


select person_name , person_city from person_info where person_name like 'S%' ;
select * from person_info where person_age between 21 and 27 ;

select * from person_info order by person_age ASC;
select * from person_info order by person_name ASC;

alter table person_info add column salary int;

SET sql_safe_updates = 0 ;

UPDATE person_info SET salary = 450000 WHERE person_name = 'Soham';
UPDATE person_info SET salary = 700000 WHERE person_name = 'Rahul';
UPDATE person_info SET salary = 1200000 WHERE person_name = 'Amit';
UPDATE person_info SET salary = 600000 WHERE person_name = 'Rohan';
UPDATE person_info SET salary = 900000 WHERE person_name = 'Karan';
UPDATE person_info SET salary = 500000 WHERE person_name = 'Aditya';
UPDATE person_info SET salary = 1050000 WHERE person_name = 'Akash';
UPDATE person_info SET salary = 800000 WHERE person_name = 'Vivek';
UPDATE person_info SET salary = 350000 WHERE person_name = 'Nikhil';
UPDATE person_info SET salary = 950000 WHERE person_name = 'Yash'; 

ALTER TABLE person_info
DROP COLUMN created_at,
DROP COLUMN updated_at;

select * from person_info order by salary ASC;

SELECT person_name, salary
FROM person_info
ORDER BY salary DESC
LIMIT 5;

select AVG(salary) from person_info ;


/* ------------------------------------------------------------------------------ */

/* Task 1 */ 
create Database E_Learning ;
use E_Learning ;


create table Enrolment(
enrollment_id int primary key ,
student_id int not null ,
course_id int not null ,
enrollment_date date ,
status varchar(10) DEFAULT 'Active' ,
fees_paid int CHECK (fees_paid > 0)
) ;

INSERT INTO Enrolment (enrollment_id, student_id, course_id, enrollment_date, status, fees_paid) VALUES
(1, 101, 201, '2025-01-10', 'Active', 10000),
(2, 102, 202, '2025-01-11', 'Active',120000),
(3, 103, 201, '2025-01-12', '', 10400),
(4, 104, 203, '2025-01-13', 'Active', 10000),
(5, 105, 204, '2025-01-14', 'Dropped', 14000),
(6, 106, 202, '2025-01-15', 'Active', 10000),
(7, 107, 205, '2025-01-16', 'Completed', 15000),
(8, 108, 201, '2025-01-17', 'Active', 10000),
(9, 109, 203, '2025-01-18', 'Active', 10000),
(10, 110, 204, '2025-01-19', '', 120000);

/* if entered a negative value in fees it shows  an error of out of range vale */ 
alter table Enrolment modify column fees_paid int ; 

update Enrolment set fees_paid = 50000 where enrollment_id = 1 ;

update Enrolment set status = ' Completed ' where enrollment_id = 3 ;
select * from Enrolment ; 

SET sql_safe_updates = 0 ;
delete from Enrolment where status = 'Dropped ';

select * from Enrolment where status = 'Active' ;


/*-------------------------------------------------------------------------------*/

create database person ;
use person ;


create table person_info(
person_id int primary key auto_increment ,
person_name varchar(20) not null ,
person_age int check ( person_age > 18 ) ,
person_mobile varchar(15) UNIQUE not null ,
person_email varchar(30) not null ,
person_city varchar(30) DEFAULT 'pune' , 
person_birth_datetime datetime not null ,
joining_datetime datetime DEFAULT CURRENT_TIMESTAMP ,
created_at datetime ,
updated_at datetime
);

/* text values cannot have a default value */

INSERT INTO person_info
(person_name, person_age, person_mobile, person_email, person_city, person_birth_datetime)
VALUES
('Soham', 22, '9876543210', 'soham@gmail.com', 'Pune', '2004-09-16 10:30:00'),
('Rahul', 25, '9876543211', 'rahul@gmail.com', 'Mumbai', '2001-05-12 09:20:00'),
('Amit', 30, '9876543212', 'amit@gmail.com', 'Delhi', '1996-03-20 11:00:00'),
('Rohan', 24, '9876543213', 'rohan@gmail.com', 'Nagpur', '2002-01-15 14:30:00'),
('Karan', 27, '9876543214', 'karan@gmail.com', 'Nashik', '1999-07-25 08:15:00'),
('Aditya', 23, '9876543215', 'aditya@gmail.com', 'Pune', '2003-11-10 16:45:00'),
('Akash', 29, '9876543216', 'akash@gmail.com', 'Mumbai', '1997-08-18 12:10:00'),
('Vivek', 26, '9876543217', 'vivek@gmail.com', 'Delhi', '2000-02-28 13:25:00'),
('Nikhil', 21, '9876543218', 'nikhil@gmail.com', 'Nagpur', '2005-06-05 17:00:00'),
('Yash', 28, '9876543219', 'yash@gmail.com', 'Pune', '1998-12-22 09:45:00');

select * from person_info ;


select person_name , person_city from person_info where person_name like 'S%' ;
select * from person_info where person_age between 21 and 27 ;

select * from person_info order by person_age ASC;
select * from person_info order by person_name ASC;

alter table person_info add column salary int;

SET sql_safe_updates = 0 ;

UPDATE person_info SET salary = 450000 WHERE person_name = 'Soham';
UPDATE person_info SET salary = 700000 WHERE person_name = 'Rahul';
UPDATE person_info SET salary = 1200000 WHERE person_name = 'Amit';
UPDATE person_info SET salary = 600000 WHERE person_name = 'Rohan';
UPDATE person_info SET salary = 900000 WHERE person_name = 'Karan';
UPDATE person_info SET salary = 500000 WHERE person_name = 'Aditya';
UPDATE person_info SET salary = 1050000 WHERE person_name = 'Akash';
UPDATE person_info SET salary = 800000 WHERE person_name = 'Vivek';
UPDATE person_info SET salary = 350000 WHERE person_name = 'Nikhil';
UPDATE person_info SET salary = 950000 WHERE person_name = 'Yash'; 

ALTER TABLE person_info
DROP COLUMN created_at,
DROP COLUMN updated_at;

select * from person_info order by salary ASC;

SELECT person_name, salary
FROM person_info
ORDER BY salary DESC
LIMIT 5;

select AVG(salary) from person_info ;

select * from person_info where person_city != 'pune' ;

select * from person_info where salary > 50000 ;


SELECT *
FROM person_info
WHERE person_city IN ('Pune', 'Mumbai'); 

SELECT *
FROM person_info
WHERE person_city IN ('Pune', 'Mumbai' , 'Nashik'); 

SELECT *
FROM person_info
WHERE person_city NOT IN ('Pune', 'Mumbai'); 

select * from person_info where salary between 800000 and 900000 ; 


select * from person_info where person_name like "A%" ;
select * from person_info where person_name like "%n" ; 
select * from person_info where person_name like "%an%" ;
select * from person_info where person_name like "%a%" ;
select * from person_info where person_name like "S%" ;
select * from person_info where person_name like "____" ;

select * from person_info where person_city = 'Pune' and salary > 450000 ;
select * from person_info where person_city = 'Mumbai' and salary < 1110000 ;

select * from person_info where person_city = 'Pune' or salary > 700000 ;
select * from person_info where person_city = 'Pune' and salary between 450000 and 800000 ;


/*--------------------------------------------------------------------------------------------*/

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    product VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE
);

INSERT INTO orders VALUES
(1, 'Rahul', 'Pune', 'Laptop', 1, 50000, '2024-01-15'),
(2, 'Priya', 'Mumbai', 'Mouse', 3, 500, '2024-02-10'),
(3, 'Rahul', 'Pune', 'Keyboard', 2, 1500, '2024-02-20'),
(4, 'Amit', 'Delhi', 'Laptop', 1, 55000, '2024-03-05'),
(5, 'Priya', 'Mumbai', 'Monitor', 1, 8000, '2024-03-18'),
(6, 'Sneha', 'Pune', 'Mouse', 5, 500, '2024-04-01'),
(7, 'Rahul', 'Pune', 'Monitor', 2, 8000, '2024-04-22'),
(8, 'Amit', 'Delhi', 'Keyboard', 1, 1500, '2024-05-10'),
(9, 'Sneha', 'Pune', 'Laptop', 1, 52000, '2024-05-15'),
(10, 'Priya', 'Mumbai', 'Keyboard', 4, 1500, '2024-06-01'),
(11, 'Amit', 'Delhi', 'Mouse', 2, 500, '2024-06-12'),
(12, 'Rahul', 'Pune', 'Mouse', 1, 500, '2024-06-25');

select * from orders ;

SELECT customer_name, SUM(quantity * price) AS total_value
FROM orders
WHERE order_date > '2024-02-01'
GROUP BY customer_name
HAVING SUM(quantity * price) > 10000
ORDER BY total_value DESC;


/*---------------------------------------------------------------*/

create database practise ;
use practise ;

create table std_info (
std_id int ,
std_name varchar(10) 
) ;

insert into std_info values (1 , 'Soham');

create table course (
course_id int ,
course_name varchar(20) 
);

insert into course values(101 , 'System design');
select * from std_info cross join course ;

/*----------------------------------------------------------------*/
CREATE DATABASE ecommerce_join_db; 
USE ecommerce_join_db; 

CREATE TABLE customers (    customer_id INT PRIMARY KEY,    first_name VARCHAR(50),    last_name VARCHAR(50),    email VARCHAR(100),    phone VARCHAR(15),    city VARCHAR(50),    state VARCHAR(50),    registration_date DATE,    customer_status VARCHAR(20) );
CREATE TABLE products (    product_id INT PRIMARY KEY,    product_name VARCHAR(100),    category VARCHAR(50),    brand VARCHAR(50),    price DECIMAL(10,2),    stock_quantity INT,    supplier_name VARCHAR(100),    rating DECIMAL(3,1),    product_status VARCHAR(20) );
CREATE TABLE orders (    order_id INT PRIMARY KEY,    customer_id INT,    order_date DATE,    order_status VARCHAR(30),    payment_method VARCHAR(30),    shipping_city VARCHAR(50),    shipping_state VARCHAR(50),    total_amount DECIMAL(10,2),    delivery_date DATE,    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) );
CREATE TABLE order_items (    order_item_id INT PRIMARY KEY,    order_id INT,    product_id INT,    quantity INT,    unit_price DECIMAL(10,2),    discount DECIMAL(5,2),    tax DECIMAL(5,2),    item_total DECIMAL(10,2),    item_status VARCHAR(20),    FOREIGN KEY (order_id) REFERENCES orders(order_id),    FOREIGN KEY (product_id) REFERENCES products(product_id));

INSERT INTO customers
(customer_id, first_name, last_name, email, phone, city, state, registration_date, customer_status)
VALUES
(1,'Amit','Sharma','amit@gmail.com','9876500001','Pune','Maharashtra','2025-01-10','Active'),
(2,'Priya','Patil','priya@gmail.com','9876500002','Mumbai','Maharashtra','2025-01-15','Active'),
(3,'Rahul','Verma','rahul@gmail.com','9876500003','Delhi','Delhi','2025-02-01','Active'),
(4,'Sneha','Joshi','sneha@gmail.com','9876500004','Nashik','Maharashtra','2025-02-10','Active'),
(5,'Rohan','Deshmukh','rohan@gmail.com','9876500005','Nagpur','Maharashtra','2025-02-15','Inactive'),
(6,'Neha','Kulkarni','neha@gmail.com','9876500006','Pune','Maharashtra','2025-03-01','Active'),
(7,'Vikas','Mehta','vikas@gmail.com','9876500007','Ahmedabad','Gujarat','2025-03-05','Active'),
(8,'Pooja','Shah','pooja@gmail.com','9876500008','Surat','Gujarat','2025-03-10','Active'),
(9,'Akash','Gupta','akash@gmail.com','9876500009','Jaipur','Rajasthan','2025-03-15','Inactive'),
(10,'Kiran','Jadhav','kiran@gmail.com','9876500010','Pune','Maharashtra','2025-04-01','Active'),
(11,'Snehal','Pawar','snehal@gmail.com','9876500011','Kolhapur','Maharashtra','2025-04-05','Active'),
(12,'Manish','Yadav','manish@gmail.com','9876500012','Lucknow','Uttar Pradesh','2025-04-10','Active'),
(13,'Anjali','Singh','anjali@gmail.com','9876500013','Delhi','Delhi','2025-04-15','Active'),
(14,'Saurabh','More','saurabh@gmail.com','9876500014','Aurangabad','Maharashtra','2025-05-01','Inactive'),
(15,'Komal','Kale','komal@gmail.com','9876500015','Pune','Maharashtra','2025-05-05','Active'),
(16,'Nikhil','Rane','nikhil@gmail.com','9876500016','Thane','Maharashtra','2025-05-10','Active'),
(17,'Riya','Chavan','riya@gmail.com','9876500017','Satara','Maharashtra','2025-05-15','Active'),
(18,'Vivek','Mishra','vivek@gmail.com','9876500018','Bhopal','Madhya Pradesh','2025-06-01','Active'),
(19,'Swati','Nair','swati@gmail.com','9876500019','Kochi','Kerala','2025-06-05','Active'),
(20,'Arjun','Malhotra','arjun@gmail.com','9876500020','Chandigarh','Chandigarh','2025-06-10','Inactive'),
(21,'Meera','Iyer','meera@gmail.com','9876500021','Chennai','Tamil Nadu','2025-06-15','Active'),
(22,'Kunal','Bhosale','kunal@gmail.com','9876500022','Pune','Maharashtra','2025-07-01','Active'),
(23,'Divya','Reddy','divya@gmail.com','9876500023','Hyderabad','Telangana','2025-07-05','Active'),
(24,'Sameer','Khan','sameer@gmail.com','9876500024','Bengaluru','Karnataka','2025-07-10','Active'),
(25,'Tanvi','Gawande','tanvi@gmail.com','9876500025','Amravati','Maharashtra','2025-07-15','Active');

INSERT INTO products
(product_id, product_name, category, brand, price, stock_quantity, supplier_name, rating, product_status)
VALUES
(1,'Laptop Pro 14','Laptop','Dell',65000,20,'Dell India',4.5,'Available'),
(2,'Laptop Air 13','Laptop','HP',58000,15,'HP India',4.3,'Available'),
(3,'Gaming Laptop','Laptop','Lenovo',85000,10,'Lenovo India',4.7,'Available'),
(4,'Galaxy S25','Mobile','Samsung',72000,25,'Samsung India',4.6,'Available'),
(5,'iPhone 16','Mobile','Apple',79000,18,'Apple India',4.8,'Available'),
(6,'Pixel 9','Mobile','Google',65000,12,'Google India',4.5,'Available'),
(7,'Bluetooth Mouse','Accessories','Logitech',1200,100,'Logitech India',4.2,'Available'),
(8,'Wireless Keyboard','Accessories','Dell',2500,70,'Dell India',4.1,'Available'),
(9,'Mechanical Keyboard','Accessories','Redragon',4500,40,'Redragon India',4.4,'Available'),
(10,'Smart Watch','Wearable','Boat',3500,50,'Boat India',4.0,'Available'),
(11,'Fitness Band','Wearable','Mi',2200,60,'Xiaomi India',4.1,'Available'),
(12,'Tablet S9','Tablet','Samsung',42000,20,'Samsung India',4.4,'Available'),
(13,'iPad Air','Tablet','Apple',65000,14,'Apple India',4.7,'Available'),
(14,'USB-C Hub','Accessories','Anker',3500,35,'Anker India',4.3,'Available'),
(15,'Power Bank','Accessories','Mi',1800,80,'Xiaomi India',4.2,'Available'),
(16,'External SSD 1TB','Storage','Samsung',8500,30,'Samsung India',4.6,'Available'),
(17,'External HDD 2TB','Storage','Seagate',6200,25,'Seagate India',4.4,'Available'),
(18,'Webcam HD','Accessories','Logitech',3200,45,'Logitech India',4.1,'Available'),
(19,'Gaming Headset','Audio','JBL',5500,20,'JBL India',4.5,'Available'),
(20,'Bluetooth Speaker','Audio','Boat',2800,55,'Boat India',4.0,'Available'),
(21,'Monitor 24 Inch','Monitor','LG',12000,25,'LG India',4.3,'Available'),
(22,'Monitor 27 Inch','Monitor','Samsung',18000,18,'Samsung India',4.5,'Available'),
(23,'Printer','Printer','Canon',15000,12,'Canon India',4.2,'Available'),
(24,'WiFi Router','Networking','TP-Link',3000,40,'TP-Link India',4.1,'Available'),
(25,'Smart TV 43 Inch','Television','Sony',42000,8,'Sony India',4.6,'Available');

INSERT INTO orders
(order_id, customer_id, order_date, order_status, payment_method, shipping_city, shipping_state, total_amount, delivery_date)
VALUES
(101,1,'2026-01-05','Delivered','UPI','Pune','Maharashtra',65000,'2026-01-09'),
(102,2,'2026-01-08','Delivered','Card','Mumbai','Maharashtra',72000,'2026-01-12'),
(103,3,'2026-01-10','Shipped','UPI','Delhi','Delhi',1200,NULL),
(104,4,'2026-01-12','Delivered','Cash','Nashik','Maharashtra',2500,'2026-01-16'),
(105,5,'2026-01-15','Cancelled','Card','Nagpur','Maharashtra',85000,NULL),
(106,6,'2026-01-18','Delivered','UPI','Pune','Maharashtra',79000,'2026-01-22'),
(107,7,'2026-01-20','Shipped','Card','Ahmedabad','Gujarat',65000,NULL),
(108,8,'2026-01-22','Delivered','UPI','Surat','Gujarat',3500,'2026-01-25'),
(109,9,'2026-01-25','Pending','UPI','Jaipur','Rajasthan',2200,NULL),
(110,10,'2026-01-27','Delivered','Card','Pune','Maharashtra',42000,'2026-01-31'),
(111,11,'2026-02-01','Delivered','UPI','Kolhapur','Maharashtra',65000,'2026-02-05'),
(112,12,'2026-02-03','Shipped','Card','Lucknow','Uttar Pradesh',8500,NULL),
(113,13,'2026-02-05','Delivered','UPI','Delhi','Delhi',6200,'2026-02-09'),
(114,14,'2026-02-07','Cancelled','Card','Aurangabad','Maharashtra',3200,NULL),
(115,15,'2026-02-10','Delivered','UPI','Pune','Maharashtra',5500,'2026-02-14'),
(116,16,'2026-02-12','Delivered','Card','Thane','Maharashtra',2800,'2026-02-16'),
(117,17,'2026-02-15','Shipped','UPI','Satara','Maharashtra',12000,NULL),
(118,18,'2026-02-17','Delivered','Card','Bhopal','Madhya Pradesh',18000,'2026-02-21'),
(119,19,'2026-02-20','Pending','UPI','Kochi','Kerala',15000,NULL),
(120,20,'2026-02-22','Delivered','Card','Chandigarh','Chandigarh',3000,'2026-02-26'),
(121,21,'2026-02-25','Delivered','UPI','Chennai','Tamil Nadu',42000,'2026-03-01'),
(122,22,'2026-02-27','Shipped','Card','Pune','Maharashtra',3500,NULL),
(123,23,'2026-03-01','Delivered','UPI','Hyderabad','Telangana',8500,'2026-03-05'),
(124,24,'2026-03-03','Delivered','Card','Bengaluru','Karnataka',5500,'2026-03-07'),
(125,25,'2026-03-05','Pending','UPI','Amravati','Maharashtra',2800,NULL);

INSERT INTO order_items
(order_item_id, order_id, product_id, quantity, unit_price, discount, tax, item_total, item_status)
VALUES
(1,101,1,1,65000,5,18,73125,'Delivered'),
(2,102,4,1,72000,5,18,81000,'Delivered'),
(3,103,7,1,1200,0,18,1416,'Shipped'),
(4,104,8,1,2500,0,18,2950,'Delivered'),
(5,105,3,1,85000,10,18,90270,'Cancelled'),
(6,106,5,1,79000,5,18,88955,'Delivered'),
(7,107,6,1,65000,5,18,73125,'Shipped'),
(8,108,10,1,3500,0,18,4130,'Delivered'),
(9,109,11,1,2200,0,18,2596,'Pending'),
(10,110,12,1,42000,5,18,47124,'Delivered'),
(11,111,13,1,65000,5,18,73125,'Delivered'),
(12,112,16,1,8500,0,18,10030,'Shipped'),
(13,113,17,1,6200,0,18,7316,'Delivered'),
(14,114,18,1,3200,0,18,3776,'Cancelled'),
(15,115,19,1,5500,5,18,6180,'Delivered'),
(16,116,20,1,2800,0,18,3304,'Delivered'),
(17,117,21,1,12000,5,18,13452,'Shipped'),
(18,118,22,1,18000,5,18,20178,'Delivered'),
(19,119,23,1,15000,0,18,17700,'Pending'),
(20,120,24,1,3000,0,18,3540,'Delivered'),
(21,121,25,1,42000,5,18,47124,'Delivered'),
(22,122,14,1,3500,0,18,4130,'Shipped'),
(23,123,16,1,8500,0,18,10030,'Delivered'),
(24,124,19,1,5500,0,18,6490,'Delivered'),
(25,125,20,1,2800,0,18,3304,'Pending');

select * from customers ;
select * from orders ;
select * from products;
select * from order_items ;


/*task1*/
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date
FROM customers c
INNER JOIN orders o 
    ON c.customer_id = o.customer_id;


/*task2*/
SELECT 
    c.first_name,
    c.last_name,
    o.order_status
FROM customers c
INNER JOIN orders o 
    ON c.customer_id = o.customer_id;
    
/*task3*/
SELECT 
    c.first_name,
    c.last_name,
    c.city ,
    o.total_amount
FROM customers c
INNER JOIN orders o 
    ON c.customer_id = o.customer_id;

/*task4*/
SELECT 
    c.first_name,
    c.last_name,
    o.payment_method,
    o.order_date
FROM customers c
INNER JOIN orders o 
    ON c.customer_id = o.customer_id;
    
/*task4*/
SELECT 
    c.email,
    o.order_status
FROM customers c
INNER JOIN orders o 
    ON c.customer_id = o.customer_id;
    
/*task8*/
SELECT 
    c.first_name,
    c.last_name ,
    o.order_date
FROM customers c
INNER JOIN orders o 
    ON c.customer_id = o.customer_id
    WHERE order_date > '2026-02-01';
    
/*task10*/
    SELECT 
    c.first_name,
    c.last_name 
FROM customers c
INNER JOIN orders o 
    ON c.customer_id = o.customer_id
    WHERE state = 'maharashtra';

/*task11*/
    SELECT 
    c.first_name,
    c.last_name ,
    o.order_id ,
    o.order_status ,
    o.order_date
FROM customers c
INNER JOIN orders o 
    ON c.customer_id = o.customer_id
    WHERE payment_method = 'upi';
    
/*task16*/  
SELECT 
    o.order_id,
    oi.quantity,
    oi.item_total
FROM orders o
RIGHT JOIN order_items oi 
    ON o.order_id = oi.order_id;

/*task17*/ 
SELECT 
    o.order_id,
    oi.unit_price,
    oi.discount
FROM orders o
RIGHT JOIN order_items oi 
    ON o.order_id = oi.order_id;

/*task18*/
SELECT 
    o.order_id,
    oi.product_id
FROM orders o
inner JOIN order_items oi 
    ON o.order_id = oi.order_id
    where quantity > 1;

/*task22*/
SELECT DISTINCT
    p.product_name,
    p.brand,
    oi.unit_price
FROM products p
INNER JOIN order_items oi
    ON p.product_id = oi.product_id;


/*task25*/
SELECT 
    p.product_name,
    p.category ,
    oi.unit_price ,
    oi.item_total
FROM products p
inner JOIN order_items oi 
    ON p.product_id = oi.product_id ;

/*task26*/

SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_id,
    oi.product_id,
    oi.quantity
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id;

/*task26*/
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_id,
    oi.product_id,
    oi.quantity
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id;


SELECT 
    c.first_name,
    c.last_name,
    o.order_id,
    oi.product_id,
    oi.quantity
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id;

/*task27*/
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_date,
    oi.product_id,
    oi.item_total
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id;



/*task28*/
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_status,
    oi.item_status
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id;


/*task28*/
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.payment_method,
    oi.product_id,
    oi.quantity
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id;

/*task30*/
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.city,
    o.order_id,
    oi.product_id
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_status = 'Delivered';

/*task31*/
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.email,
    o.order_date,
    oi.item_total
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.total_amount > 10000;

/*task32*/
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_status,
    oi.product_id,
    oi.quantity
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_status = 'Shipped';



/*task33*/
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.state,
    oi.product_id
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE c.state = 'Maharashtra';

/*task34*/
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_date,
    oi.product_id,
    oi.unit_price
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_date > '2026-02-01';

/*task35*/
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_id,
    oi.quantity,
    oi.discount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id;

/*task47*/
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

/*task51*/
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.email,
    o.order_id,
    p.product_name,
    oi.quantity
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

/*task52*/

















































































































