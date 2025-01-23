delimiter $$
create function add_two_num(num1 int, num2 int)
returns int
deterministic
begin
declare num int;
set num = num1 + num2;
  return num;
end$$
delimiter ;
select add_two_num(2,4);

delimiter $$
