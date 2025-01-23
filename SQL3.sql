create database LPU;
use LPU;
create table college(
id int primary key,
name varchar(20),
package int not null,
city varchar(25)
);
insert into college values ("1","Aman","40000","Gorakhpur");
insert into college values ("2","Abhay","41000","Gorakhpur");
insert into college values ("3","satyam","42000","Jabalpur");
select* from college;
select package from college where package>41000;
select city from college where city in ("Gorakhpur");
select name from college where city in ("Gorakhpur");
select * from college where city in ("Jabalpur");
drop database if exists LPU;

create database showroom;
use showroom;
create table collection(
model int primary key,
name varchar(20),
engine varchar(10)
);
insert into collection values("1990","Nano","Deisel");
insert into collection values("1995","Baleno","Petrol");
insert into collection values("2000","Fortuner","Deisel");
insert into collection values("2005","Honda_city","Petrol");
select * from collection;
select name from collection where engine="Petrol";
select name from collection where engine="Petrol" and model >"2000";
select * from collection where model>"1990" and engine="Deisel";
alter table collection 
rename column engine to type;
drop database if exists showroom;

drop database if exists upgrad;
create database upgrad;
use upgrad;
create table data_base(
name varchar(20),
marks int,
section varchar(10)
);
insert into data_base values("Aman","80","uw");
insert into data_base values("Abhay","83","uw");
insert into data_base values("Satyam","83","uw");
insert into data_base values("Khushi","84","uw");
select avg (marks) from data_base group by section;
select name,marks,rank() over (order by marks )from data_base;
select name,marks,dense_rank() over (order by marks asc) from data_base;
select name,marks,rank() over (partition by name order by marks ) from data_base;



-- LEAD() Function:
-- The LEAD() function allows you to access data from subsequent rows (rows below the current row) within a specified window.
--  It’s particularly useful for comparing values between the current row and the next row(s).
 LEAD (expression [, offset [, default_value ]]) OVER (ORDER BY columns);
 -- LAG() Function:
-- The LAG() function is similar to LEAD(), but it accesses data from previous rows (rows above the current row).
-- It’s useful for comparing values between the current row and the preceding row(s).
-- Syntax and usage are similar to LEAD()


SELECT num1 + num2 AS sum_result
FROM Numbers;


delimiter $$
create function add_two_numbers(num1 int, num2 int)
returns int
deterministic
begin
declare num int;
set num = num1 + num2;
  return num;
end$$
delimiter ;
select add_two_numbers(2,4);







