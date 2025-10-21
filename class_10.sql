create table users(
id int primary key ,
name varchar(150)
)
insert into users(id ,name)values
(1 , 'azhar'),
(2,'bilal')
select * from users
--TRANSACTION
begin transaction
insert into users(id,name)values(5,'raza'),(6,'haider')
PRINT @@TRANCOUNT
commit
ROLLBACK
--transaction with try&catch
begin try 
begin transaction
insert into users(id,name)values(5,'raza'),(6,'haider')
PRINT @@TRANCOUNT
commit
end try
begin catch
begin transaction
insert into users(id,name)values(5,'raza'),(6,'haider')
PRINT @@TRANCOUNT
ROLLBACK 
end catch 