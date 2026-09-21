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





