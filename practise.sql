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

alter table employee add column experience decimal(4,2) ;

alter table employee modify column email  varchar(150) ;

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
