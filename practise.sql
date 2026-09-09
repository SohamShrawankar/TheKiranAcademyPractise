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
