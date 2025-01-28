SELECT 
    c.CustomerName,round(sum(o.Amount), 2) AS TotalAmount,
    count(o.OrderID) AS NumberOfOrders
FROM 
    Customers c
JOIN orders
ON c.CustomerID=Orders.CustomerID
GROUP BY 
    c.CustomerName
HAVING 
    count(o.OrderID) >= 1;


create database college1;
use college1;
create table student(
 id  int primary key,
 name varchar(50),
 course varchar(50) 
);
insert into student values(1,'Aman','English');
insert into student values(1,'Aman','Maths');
insert into student values(2,'Abhay','Hindi');
insert into student values(2,'Abhay','G.K');
select* from student;
drop database if exists college1;
