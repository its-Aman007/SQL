create database college;
use college;
create table student(
 id  int primary key,
 name varchar(50),
 age int not null 
);
insert into student values(1,'Aman',22);
insert into student values(2,'Satyam',21);
insert into student values(3,'Abhay',23);
insert into student values(4,'Khushi',20);
select * from student;
drop database if exists college;

create database xyz;
use xyz;
create table employee(
id int primary key,
name varchar(50),
salary int not null
);
insert into employee values(1,'Aman',100000);
insert into employee values(2,'satyam',120000);
insert into employee values(3,'Abhay',130000);
insert into employee values(4,'Khushi',140000);
select * from employee;



create database uw;
use uw;
create table placed(
id int primary key,
name varchar(30),
age  int not null,
city varchar(20)
);
insert into placed values(1,'Aman',22,'Gorakhpur') ;
insert into placed values(2,'satyam',21,'Jabalpur');
insert into placed values(3,'Abhay',23,'Gorakhpur');
insert into placed values(4,'Khushi',20,'Delhi');
insert into placed values(5,'Rohan',21,'Mp');
insert into placed values(6,'Tushar',20,'MP');
insert into placed values(7,'Divyansh',23,'Deoria');
insert into placed values(8,'Anish',22,'Bokaro');
insert into placed values(9,'Syed',21,'Banaras');
insert into placed values(10,'Rohit',22,'Bihar');
select * from placed where age>=20 and city='Gorakhpur';
select* from placed where city in ('Gorakhpur','Banaras','Bihar');
select *  from placed order by id asc limit 6;
select max(city) from placed;
select count(id) from placed;
drop database uw;



create database bank;
use bank;
create table payment(
id int primary key,
customer varchar(20),
mode varchar(10),
city varchar(20)
);
insert into payment values (1,'aman','netbanking','Gkp');
insert into payment values (2,'satyam','card1','jabalpur');
insert into payment values (3,'abhay','card1','Gkp');
insert into payment values (4,'khushi','netbanking','delhi');
insert into payment values (5,'rohan','card1','Mp');
insert into payment values (6,'tushar','card2','Mp');
insert into payment values (7,'divyansh','card2','deoria');
insert into payment values (8,'anish','netbanking','bokaro');
insert into payment values (9,'syed','netbanking','banaras');
insert into payment values (10,'rohit','card1','bihar');
select mode,count(customer) from payment group by mode;

-- select column()
-- from table
-- where condition ( where apply conditions on rows)
-- group by
-- having condition( having apply condition on groups)
-- order by column() ASC;





-- Table related queries
-- Update( to update existing row)

update payment
set mode= 'credit_card'
where mode ='card1';


drop database if exists branch;
create database branch;
use branch;
create table dept(
id  int primary key,
name varchar(20)
);
create table teacher(
id int primary key,
name varchar(20),
dept_id int,
foreign key (dept_id) references x(id)
on update cascade
on delete cascade
);

-- Rank()  1,2,2,2,5,6,6,6,9 like
-- Dense_Rank() 1,2,2,2,3,4,5,5,6,6,7















