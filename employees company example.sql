drop database company;
create database company;
use company ;
CREATE TABLE Employees (
  Employee_ID INT PRIMARY KEY,
  Name VARCHAR(50),
  Department VARCHAR(50),
  Job_Title VARCHAR(50),
  Hire_Date DATE,
  Salary DECIMAL(10, 2)
);
INSERT INTO Employees (Employee_ID, Name, Department, Job_Title, Hire_Date, Salary)
VALUES
  (1, 'John Smith', 'Sales', 'Sales Representative', '2018-01-01', 50000.00),
  (2, 'Jane Doe', 'Marketing', 'Marketing Manager', '2015-06-01', 70000.00),
  (3, 'Bob Johnson', 'IT', 'Software Engineer', '2012-03-01', 60000.00),
  (4, 'Alice Brown', 'Finance', 'Financial Analyst', '2016-02-01', 55000.00),
  (5, 'Mike Davis', 'HR', 'HR Manager', '2014-04-01', 65000.00),
  (6, 'Emily Chen', 'Sales', 'Sales Manager', '2013-01-01', 58000.00),
  (7, 'Tom Harris', 'IT', 'IT Manager', '2011-06-01', 62000.00),
  (8, 'Lily Lee', 'Marketing', 'Marketing Coordinator', '2016-08-01', 52000.00),
  (9, 'Kevin White', 'Finance', 'Financial Manager', '2015-03-01', 68000.00),
  (10, 'Sarah Taylor', 'HR', 'HR Coordinator', '2017-01-01', 48000.00),
  (11, 'James Wilson', 'Sales', 'Sales Representative', '2014-05-01', 50000.00),
  (12, 'Olivia Martin', 'IT', 'Software Developer', '2013-09-01', 56000.00),
  (13, 'Benjamin Hall', 'Marketing', 'Marketing Analyst', '2016-11-01', 54000.00),
  (14, 'Rachel Patel', 'Finance', 'Financial Analyst', '2015-09-01', 57000.00),
  (15, 'Christopher Brooks', 'HR', 'HR Generalist', '2017-03-01', 46000.00),
  (16, 'Jessica Lewis', 'Sales', 'Sales Manager', '2014-01-01', 59000.00),
  (17, 'Matthew Garcia', 'IT', 'IT Coordinator', '2013-05-01', 58000.00),
  (18, 'Amanda Walker', 'Marketing', 'Marketing Manager', '2016-06-01', 61000.00),
  (19, 'Nicholas Thompson', 'Finance', 'Financial Manager', '2015-05-01', 69000.00),
  (20, 'Samantha Jackson', 'HR', 'HR Manager', '2017-07-01', 47000.00),
  (21, 'Joseph Lee', 'Sales', 'Sales Representative', '2014-08-01', 51000.00),
  (22, 'Hannah Kim', 'IT', 'Software Engineer', '2013-03-01', 59000.00),
  (23, 'Michael Brown', 'Marketing', 'Marketing Coordinator', '2016-10-01', 53000.00),
  (24, 'Elizabeth Davis', 'Finance', 'Financial Analyst', '2015-08-01', 58000.00),
  (25, 'Daniel Kim', 'HR', 'HR Generalist', '2017-05-01', 40000.00);
select*from Employees;
SELECT 
  *
FROM Employees
WHERE 
  Employee_ID IS NULL
  OR Name IS NULL
  OR Department IS NULL
  OR Job_Title IS NULL
  OR Hire_Date IS NULL
  OR Salary IS NULL;
  select avg(Salary) as avergesalary from Employees ;
  select sum(Salary) as sumsalary from Employees ;
  SELECT 
 MAX(Salary) AS highest_salary,
  Department, Name  
  from Employees group by  Department, Name order by highest_salary desc LIMIT 1;
  select
  Name, Department, Salary 
  from Employees  where salary=(select max(Salary) from Employees);
SELECT 
  Salary,
  Department,
  Name
FROM Employees
WHERE Salary = (SELECT MIN(Salary) FROM Employees);
select
name, Salary from Employees order by Salary desc limit 4;
select 
name, Salary from Employees order by Salary ASC limit 4;
SELECT 
  HireDate,
  MAX(Salary) AS highest_salary
FROM Employees
GROUP BY HireDate
ORDER BY HireDate;
SELECT 
  HireDate,
  min(Salary) AS Lowest_salary
FROM Employees
GROUP BY HireDate
ORDER BY HireDate;
SELECT 
  HireDate,
  AVG(Salary) AS average_salary
FROM Employees
GROUP BY HireDate
ORDER BY HireDate;
SELECT 
  MAX(Salary) AS highest_salary,
  Department,
  Name,
  HireDate
FROM Employees
GROUP BY Department, Name, HireDate
ORDER BY HireDate, highest_salary DESC
LIMIT 1;
