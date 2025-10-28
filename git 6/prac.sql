CREATE DATABASE TechVision;
 USE TechVision;
 CREATE TABLE employees (
 emp_id INT PRIMARY KEY,
 emp_name VARCHAR(50),
 department VARCHAR(50),
 job_title VARCHAR(50),
 salary DECIMAL(10,2),
 city VARCHAR(50),
 hire_date DATE
 );
 INSERT INTO employees VALUES
 (1, 'Ali Khan', 'HR', 'HR Manager', 75000, 'Islamabad', '2020-03-01'),
 (2, 'Sara Ahmed', 'IT', 'Developer', 90000, 'Lahore', '2021-06-15'),
 (3, 'Ahmed Raza', 'IT', 'Developer', 85000, 'Karachi', '2021-08-20'),
 (4, 'Hina Malik', 'Finance', 'Accountant', 65000, 'Islamabad', '2020-01-05'),
 (5, 'Bilal Arif', 'HR', 'Recruiter', 55000, 'Lahore', '2022-02-10'),
 (6, 'Ayesha Noor', 'IT', 'Project Manager', 120000, 'Islamabad', '2019-07-19'),
 (7, 'Farhan Ali', 'Finance', 'Accountant', 64000, 'Karachi', '2022-09-01'),
 (8, 'Sana Tariq', 'IT', 'Developer', 88000, 'Lahore', '2023-03-25'),
 (9, 'Usman Haq', 'Sales', 'Sales Executive', 60000, 'Karachi', '2021-04-10'),
 (10, 'Zainab Iqbal', 'Sales', 'Sales Executive', 62000, 'Lahore', '2022-07-18');
	SELECT* FROM employees;
    SELECT DISTINCT CITY FROM employees;
    SELECT DISTINCT DEPARTMENT FROM employees;
    SELECT emp_name,salary FROM employees ORDER BY salary DESC;
    SELECT emp_name,salary FROM employees ORDER BY salary ASC;
    SELECT emp_name,salary FROM employees ORDER BY EMP_NAME ASC;
    SELECT emp_name,salary FROM employees ORDER BY EMP_NAME DESC;
    SELECT DEPARTMENT FROM EMPLOYEES GROUP BY DEPARTMENT;
    SELECT DISTINCT JOB_TITLE FROM EMPLOYEES;
    SELECT emp_name FROM employees ORDER BY EMP_NAME ASC;
    SELECT emp_name,salary,DEPARTMENT FROM employees ORDER BY DEPARTMENT ASC,salary DESC;
    SELECT DISTINCT DEPARTMENT,CITY FROM EMPLOYEES;
    SELECT COUNT(EMP_NAME),JOB_TITLE FROM EMPLOYEES GROUP BY JOB_TITLE;
    SELECT COUNT(EMP_NAME),CITY FROM EMPLOYEES GROUP BY CITY;
    SELECT * FROM EMPLOYEES ORDER BY HIRE_DATE ASC;