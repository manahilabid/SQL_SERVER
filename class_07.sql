create table employee(
empid int primary key identity(001,1),
empname varchar(50),
managerid int
)

insert into employee(empname , managerid)
values 
('saleha' , null),
('sybil' , null),
('eden' , 1),
('anna' , 1),
('cordelia ' , 2),
('waseela' , 3),
('mical' , 4),
('ghazala', 2)
select * from employee

select e.empid,e.empname,m.empid AS Manager_ID, m.empname  AS Manager_ID  from employee e
join employee m on m.empid = e.managerid 