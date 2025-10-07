CREATE DATABASE INSTITUTE

create table Teacher(t_id int primary key identity (001,1), 
t_name varchar(60) ,
t_quali varchar(100) ,
t_age int )

INSERT INTO Teacher (t_name, t_quali, t_age) VALUES
('Alice Johnson', 'PhD in Mathematics', 45),
('Bob Smith', 'MSc in Physics', 38),
('Carol White', 'MA in English', 50),
('David Lee', 'BEd in History', 35),
('Eva Green', 'PhD in Chemistry', 42),
('Frank Miller', 'MSc in Computer Science', 39),
('Grace Kim', 'MA in Geography', 41),
('Henry Clark', 'PhD in Economics', 48),
('Ivy Moore', 'M.Ed in Special Education', 37),
('Jack Davis', 'MSc in Biology', 36),
('Karen Brown', 'PhD in Political Science', 46),
('Leo Wilson', 'M.Ed in Physical Education', 33),
('Mona Scott', 'MA in Literature', 44),
('Nathan Young', 'PhD in Engineering', 49),
('Olivia Adams', 'MSc in Statistics', 40),
('Paul Baker', 'MA in Sociology', 43),
('Queen Taylor', 'PhD in Philosophy', 52),
('Ryan Harris', 'MSc in Environmental Science', 34),
('Sara Evans', 'MA in Music', 39),
('Tom Walker', 'B.Ed in Art', 32);


create table course( c_id int primary key identity(001,1) , c_name varchar(100))
INSERT INTO course (c_name) VALUES
('Introduction to Programming'),
('Data Structures'),
('Algorithms'),
('Database Management Systems'),
('Operating Systems'),
('Computer Networks'),
('Software Engineering'),
('Web Development'),
('Mobile App Development'),
('Cloud Computing'),
('Cybersecurity Fundamentals'),
('Artificial Intelligence'),
('Machine Learning'),
('Data Science'),
('Big Data Analytics'),
('Internet of Things (IoT)'),
('Blockchain Technology'),
('DevOps Practices'),
('Human-Computer Interaction'),
('Computer Graphics');
select * from Exam
create table Exam(ex_id int primary key identity (001,1),
ex_name varchar(80) , 
ex_date date,
ex_fee int)
INSERT INTO Exam (ex_name, ex_date, ex_fee) VALUES
('Mathematics Final', '2025-12-10', 100),
('Physics Midterm', '2025-11-15', 90),
('Chemistry Final', '2025-12-12', 110),
('Biology Midterm', '2025-11-20', 95),
('English Literature Final', '2025-12-05', 85),
('History Midterm', '2025-11-18', 80),
('Computer Science Final', '2025-12-14', 120),
('Economics Midterm', '2025-11-22', 75),
('Geography Final', '2025-12-08', 70),
('Philosophy Midterm', '2025-11-25', 65),
('Statistics Final', '2025-12-16', 105),
('Political Science Midterm', '2025-11-28', 78),
('Psychology Final', '2025-12-18', 88),
('Sociology Midterm', '2025-11-30', 72),
('Art History Final', '2025-12-20', 60),
('Environmental Science Midterm', '2025-12-01', 95),
('Business Studies Final', '2025-12-22', 115),
('Law Midterm', '2025-12-03', 100),
('Music Theory Final', '2025-12-24', 90),
('Physical Education Midterm', '2025-12-06', 55)

create table students(
std_id int primary key identity(001,1), 
std_name varchar (90) , 
course_id  int,
teacher_id int  ,
m_fee int ,

foreign key(teacher_id) references teacher (t_id),
foreign key(course_id) references course(c_id)
 )
INSERT INTO students (std_name, course_id, teacher_id, m_fee) VALUES
('John Doe', 1, 1, 500),
('Jane Smith', 2, 2, 600),
('Michael Johnson', 3, 3, 550),
('Emily Davis', 4, 4, 520),
('Chris Brown', 5, 5, 580),
('Jessica Wilson', 6, 6, 600),
('Daniel Martinez', 7, 7, 620),
('Laura Garcia', 8, 8, 500),
('Kevin Anderson', 9, 9, 530),
('Sarah Lee', 10, 10, 570),
('Brian Thomas', 11, 11, 590),
('Amanda Harris', 12, 12, 610),
('Justin Clark', 13, 13, 600),
('Olivia Lewis', 14, 14, 550),
('Matthew Robinson', 15, 15, 530),
('Megan Walker', 16, 16, 560),
('Andrew Hall', 17, 17, 600),
('Hannah Young', 18, 18, 620),
('Joshua King', 19, 19, 540),
('Sophia Wright', 20, 20, 580);

 select * from students
 
