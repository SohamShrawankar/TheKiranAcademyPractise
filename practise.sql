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

select * from student ;

