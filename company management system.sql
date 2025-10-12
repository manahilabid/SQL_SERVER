CREATE DATABASE CompanyDB;
USE CompanyDB;


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName VARCHAR(100) NOT NULL,
    ManagerID INT NULL
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(100,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    DepartmentID INT FOREIGN KEY REFERENCES Departments(DepartmentID),
    HireDate DATE,
    Salary DECIMAL(10,2)
);

ALTER TABLE Departments
ADD CONSTRAINT FK_Departments_Manager
FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID);


CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY IDENTITY(500,1),
    ProjectName VARCHAR(100) NOT NULL,
    StartDate DATE,
    EndDate DATE
);

CREATE TABLE EmployeeProjects (
    EmployeeID INT FOREIGN KEY REFERENCES Employees(EmployeeID),
    ProjectID INT FOREIGN KEY REFERENCES Projects(ProjectID),
    AssignedDate DATE,
    PRIMARY KEY (EmployeeID, ProjectID)
);

INSERT INTO Departments (DepartmentName)
VALUES
('Human Resources'),
('IT'),
('Finance');

INSERT INTO Employees (FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES
('Ali', 'Khan', 'ali.khan@company.com', 1, '2020-02-10', 65000.00),
('Sara', 'Malik', 'sara.malik@company.com', 2, '2019-05-15', 85000.00),
('Usman', 'Raza', 'usman.raza@company.com', 2, '2021-03-12', 55000.00),
('Ayesha', 'Ahmed', 'ayesha.ahmed@company.com', 3, '2022-07-01', 60000.00),
('Hassan', 'Iqbal', 'hassan.iqbal@company.com', 1, '2018-11-25', 90000.00);

UPDATE Departments SET ManagerID = 105 WHERE DepartmentID = 1;
UPDATE Departments SET ManagerID = 101 WHERE DepartmentID = 2;
UPDATE Departments SET ManagerID = 104 WHERE DepartmentID = 3;

INSERT INTO Projects (ProjectName, StartDate, EndDate)
VALUES
('Payroll System', '2024-01-10', '2024-06-30'),
('Website Redesign', '2024-03-01', '2024-09-30'),
('Mobile App Development', '2024-02-15', '2024-08-31');

INSERT INTO EmployeeProjects (EmployeeID, ProjectID, AssignedDate)
VALUES
(100, 500, '2024-02-01'),
(101, 500, '2024-02-10'),
(102, 501, '2024-03-10'),
(103, 501, '2024-04-05'),
(104, 502, '2024-05-12'),
(100, 501, '2024-03-20'),
(102, 502, '2024-06-01');

UPDATE Employees
SET Salary = 95000.00
WHERE EmployeeID = 105;

DELETE FROM Projects
WHERE ProjectID NOT IN (SELECT DISTINCT ProjectID FROM EmployeeProjects);

SELECT E.FirstName, E.LastName, D.DepartmentName
FROM Employees E
INNER JOIN Departments D ON E.DepartmentID = D.DepartmentID;

SELECT E.FirstName, E.LastName, P.ProjectName
FROM Employees E
LEFT JOIN EmployeeProjects EP ON E.EmployeeID = EP.EmployeeID
LEFT JOIN Projects P ON EP.ProjectID = P.ProjectID
ORDER BY E.EmployeeID;



SELECT DISTINCT E.FirstName, E.LastName
FROM Employees E
INNER JOIN Departments D ON E.EmployeeID = D.ManagerID;

SELECT E.FirstName, E.LastName
FROM Employees E
LEFT JOIN EmployeeProjects EP ON E.EmployeeID = EP.EmployeeID
WHERE EP.ProjectID IS NULL;

SELECT D.DepartmentName, SUM(E.Salary) AS TotalSalary
FROM Employees E
INNER JOIN Departments D ON E.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName;



SELECT AVG(Salary) AS AverageSalary FROM Employees;


SELECT MAX(Salary) AS MaxSalary, MIN(Salary) AS MinSalary FROM Employees;

SELECT E.FirstName, E.LastName, COUNT(EP.ProjectID) AS ProjectCount
FROM Employees E
LEFT JOIN EmployeeProjects EP ON E.EmployeeID = EP.EmployeeID
GROUP BY E.FirstName, E.LastName;

SELECT TOP 1 FirstName, LastName, Salary
FROM Employees
ORDER BY Salary DESC;

SELECT P.ProjectName
FROM Projects P
LEFT JOIN EmployeeProjects EP ON P.ProjectID = EP.ProjectID
WHERE EP.EmployeeID IS NULL;

