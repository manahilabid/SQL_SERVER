CREATE DATABASE sql_server;

use sql_server
create table customers(
id int primary key identity(100,1) ,
name varchar(40),
city text,
phone int 
);


create table bank(
id int primary key identity(100,1) ,
name varchar(40),
bank_name varchar(50),
city text,
acc_num int
UNIQUE(name , bank_name) 
);

drop table bank



INSERT INTO bank (name, bank_name, city, acc_num) VALUES
('Alice Johnson', 'Chase Bank', 'New York', 12789),
('Bob Smith', 'Bank of America', 'Los Angeles', 987),
('Charlie Davis', 'Wells Fargo', 'Chicago', 45678),
('Diana Miller', 'Citibank', 'Houston', 7891),
('Ethan Brown', 'Capital One', 'Phoenix', 3216),
('Fiona Wilson', 'PNC Bank', 'Philadelphia', 65498),
('George Clark', 'TD Bank', 'San Antonio', 1597),
('Hannah Lewis', 'US Bank', 'San Diego', 7531),
('Ian Walker', 'SunTrust Bank', 'Dallas', 35795),
('Julia Hall', 'BB&T Bank', 'San Jose', 9513578);



INSERT INTO customers (name, city, phone) VALUES
('Alice Johnson', 'New York', '212555'),
('Bob Smith', 'Los Angeles', '310'),
('Charlie Davis', 'Chicago', '77355'),
('Diana Miller', 'Houston', '713555'),
('Ethan Brown', 'Phoenix', '602555'),
('Fiona Wilson', 'Philadelphia', '215456'),
('George Clark', 'San Antonio', '21043'),
('Hannah Lewis', 'San Diego', '61321'),
('Ian Walker', 'Dallas', '21455'),
('Julia Hall', 'San Jose', '40855'),
('Kevin Young', 'Austin', '51255'),
('Laura King', 'Jacksonville', '9034'),
('Michael Scott', 'Fort Worth', '81756'),
('Nina Adams', 'Columbus', '61456'),
('Oscar Green', 'Charlotte', '7045'),
('Paula Baker', 'San Francisco', '41555'),
('Quentin Wright', 'Indianapolis', '31755'),
('Rachel Lee', 'Seattle', '20655'),
('Steve Turner', 'Denver', '30359'),
('Tina Collins', 'Washington', '2025');



alter table bank
drop constraint UC_bank;