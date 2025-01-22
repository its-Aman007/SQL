create database branch;
use branch;
create table dept(
id  int primary key,
subject varchar(50)
);
insert into dept values(101,'Hindi');
insert into dept values(102,'English');
update dept
set id=103
where id=101;
create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
);
insert into teacher values(101,'aman',101);
insert into teacher values(102,'abhay',102);

select * from dept;
select * from teacher;



-- joins(inner join , outer join{left,right,full})


-- INNER JOIN
create database joins;
create table Table_A(
id int primary key,
name varchar(20)
);
insert into Table_A values(101,'Aman');
insert into Table_A values(102,'Satyam');
insert into Table_A values(103,'Abhay');
select * from Table_A;

create table Table_B(
id int primary key,
salary int
);
insert into Table_B values(101,40000);
insert into Table_B values(103,45000);
select * from Table_B;

select * from Table_A inner join Table_B on Table_A.id=Table_B.id;



-- LEFT JOIN
select * from Table_A left join Table_B on Table_A.id=Table_B.id;



-- RIGHT JOIN
select * from Table_B right join Table_A on Table_B.id=Table_A.id;


-- FULL JOIN
select * from Table_A left join Table_B on Table_A.id=Table_B.id
union
select * from Table_A right join Table_B on Table_A.id=Table_B.id;

-- Union (it will give unique values neglecting repeated values)
-- Union All( it will repeat as many times the value is repeated)
--  SQL Subquery  
-- from table_n                --  select name,marks
							   -- from student
                              --  where marks>(select avg(marks) from student);
-- where col_n operator
-- subquery( it is dyanamic (will change automatically when it is updated or deleted or added)
select name,rollno
from student
where rollno in(
      select rollno
      from student
      where rollno%2=0);






