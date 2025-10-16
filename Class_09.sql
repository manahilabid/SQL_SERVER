--create two tables
create table customers(
id int primary key identity (300,1),
name varchar(100),
password int
)
create table LogTable(
id int primary key identity(900,1),
Logmesage varchar(100),
Logdate date
)
--trigger insert
create trigger tg_user_insert
on customers
after insert 
as 
begin
insert into LogTable(Logmesage,Logdate)
select 'user inserted:'+ name , getdate()
from inserted 
end
insert into customers(name,password) values('manahil',8073)
select * from customers
--trigger update
create trigger tg_update
on customers
after update
as 
begin
insert into LogTable(Logmesage,Logdate)
select 'user updated:'+ name , getdate()
from inserted 
end
 update customers set name = 'rajput' ,password=797 where id = 301
select * from customers
 select * from LogTable

 --trigger delete
 create trigger tg_delete
on customers
after delete
as 
begin
insert into LogTable(Logmesage,Logdate)
select 'user updated:'+ name , getdate()
from deleted
end
