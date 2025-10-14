create  table coaching(
id int primary key identity (100,1),
name varchar(60),
batch text,
phone bigint
)
INSERT INTO coaching (name, batch, phone) VALUES 
('Amit Sharma', 'Batch A', 9876),
('Sneha Gupta', 'Batch B', 9123),
('Ravi Kumar', 'Batch A', 99887),
('Neha Singh', 'Batch C', 9876),
('Arjun Mehta', 'Batch B', 9341),
('Pooja Verma', 'Batch A', 9769),
('Karan Patel', 'Batch D', 988),
('Simran Kaur', 'Batch C', 912396),
('Rahul Roy', 'Batch B', 9986),
('Isha Khan', 'Batch D', 9876),
('Mohit Saini', 'Batch A', 9314),
('Vikram Das', 'Batch D', 98760),
('Ritika Joshi', 'Batch A', 949),
('Sameer Ali', 'Batch B', 956783),
('Meena Reddy', 'Batch C', 97686),
('Nikhil Rao', 'Batch D', 9679),
('Tanya Paul', 'Batch A', 985),
('Yash Bhatt', 'Batch B', 934761),
('Divya Menon', 'Batch C', 98156);
select * from trycatch
select * from coaching where name like '%a';
select * from coaching where name like '[abcdefghi]%';
select * from coaching where name like 'p__%';
select * from coaching where name like '%h';


create table trycatch(
id int primary key identity (300,1),
name varchar (90),
city varchar(60),
phone int
)
INSERT INTO trycatch (name, city, phone) VALUES
('Anita Desai', 'Mumbai', 9123489),
('Aman Verma', 'Hyderabad', 9878);

 begin try 
 INSERT INTO trycatch (name, city, phone) VALUES
('Raj Malhotra', 'Delhi', 9810)
 INSERT INTO trycatch (name, city, phone) VALUES
 ('Suresh Raina', 'Chennai', 995)
 INSERT INTO trycatch (name, city, phone) VALUES
 ('Aman Verma', 'Hyderabad', 9878)
 INSERT INTO trycatch (name, city, phone) VALUES
 ('Anita Desai', 'Mumbai', 9123489)
 print 'record inserted successfully';
 end try 
 
 begin catch
 print 'Error:'+error_message();
 end catch 
