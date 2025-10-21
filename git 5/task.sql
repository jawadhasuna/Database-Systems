DROP DATABASE Companydb;
CREATE DATABASE CompanyDB;
USE CompanyDB;
CREATE TABLE employees(
EmpID INT PRIMARY KEY,
 Name VARCHAR(50),
 Department VARCHAR(50),
 Salary DECIMAL(10,2),
 Age INT,
 City VARCHAR(50),
 Joining_Date DATE
);
INSERT INTO employees VALUES
(101,'Ahmed Raza','HR',55000,28,'Lahore','2020-01-15'),
(102, 'Sana Tariq', 'Finance', 72000, 32, 'Karachi', '2019-03-20'),
(103, 'Bilal Ahmed', 'IT', 90000, 30, 'Islamabad', '2021-06-11'),
(104, 'Arif Khan', 'Marketing', 65000, 27, 'Faisalabad', '2020-09-09'),
(105, 'Sara Malik', 'IT', 85000, 29, 'Lahore', '2022-02-17'),
(106, 'Usman Ali', 'HR', 48000, 26, 'Multan', '2021-04-05'),
(107, 'Fatima Noor', 'Finance', 75000, 33, 'Karachi', '2018-12-25'),
(108, 'Shahid Mehmood', 'Marketing', 62000, 31, 'Lahore', '2019-07-13'),
(109, 'Ayesha Rehman', 'IT', 97000, 34, 'Islamabad', '2017-08-10'),
(110, 'Saad Anwar', 'HR', 50000, 25, 'Lahore', '2023-01-05');
SELECT* FROM employees WHERE Age<30;
SELECT* FROM employees WHERE Salary BETWEEN 60000 AND 90000;
SELECT* FROM employees WHERE City IN ('Lahore' ,'Islamabad');
SELECT* FROM employees WHERE Name LIKE 'A%';
SELECT* FROM employees WHERE Name like '%Sa%';
SELECT* FROM employees WHERE Department='IT' AND Salary>80000;
SELECT* FROM employees WHERE Department IN ('HR','Finance');
SELECT* FROM employees WHERE City <> 'Karachi' AND Joining_Date>'2020-01-01';
SELECT * FROM employees 
WHERE (SALARY BETWEEN 50000 AND 80000)
AND( Department IN('HR','Marketing'))
AND (Name LIKE '%a%')