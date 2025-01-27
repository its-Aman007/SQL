create database college;
use college;
create table student(
id int primary key,
name varchar(20),
age  int not null
);
insert into student (id,name,age)values
(12115087,'Satyam',22),
(12115007,'Khushi',23),
(12115826,'Abhay',23),
(12113404,'Aman',24);
select * from student;






create database x;
use x;
create table emp(
id int primary key,
name varchar(20),
age int not null);
insert into emp(id,name,age)
values
	(1,'Ram',23),
    (2,'Shyam',24),
    (3,'Sita',25),
    (4,'Radha',24);
    
select * from emp;

create database college;
drop database college;
use college;
create table student(
	rollno int primary key,
    name varchar(20),
    marks int not null,
    grade varchar(2),
    city varchar(10)
);
insert into student
(rollno,name,marks,grade,city)
values
(6,'Rohit',75,'A','Danapur'),
(15,'Abhay',80,'A+','Gorakhpur'),
(16,'Aman',80,'A+','Gorakhpur'),
(46,'Vamsi',78,'A+','Orissa');

select* from student;
select name,marks from student
where city='Gorakhpur'
and grade='A+';
select grade,count(rollno)
from student
group by grade;



create database transaction;
use transaction;
create table customers(
customer_id int ,
name varchar(25),
mode varchar(25),
city varchar(30)
);
INSERT INTO customers (customer_id, name, mode, city) VALUES
(101, 'Olivia Barrett', 'Netbanking', 'Portland'),
(102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
(103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
(104, 'Liam Donovan', 'Netbanking', 'Denver'),
(105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
(106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
(107, 'Ava Patel', 'Debit Card', 'Phoenix'),
(108, 'Lucas Carter', 'Netbanking', 'Boston'),
(109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
(110, 'Jackson Brooks', 'Credit Card','Boston' );
select name
from customers
where city='Boston'
and mode='Netbanking';
drop database transaction;

    
