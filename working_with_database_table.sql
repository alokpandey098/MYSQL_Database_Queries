CREATE database employee_and_salary;
use employee_and_salary;

--- Create table

CREATE 	TABLE employee(
employee_id INT NOT NULL UNIQUE,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INT,
gender VARCHAR(50),
birth_date DATE,
primary key(employee_id)
);

CREATE TABLE employee_salary(
employee_id INT NOT NULL UNIQUE,
first_name VARCHAR(50),
last_name VARCHAR(50),
occupation VARCHAR(50),
salary INT
);

--- Select and Value insert

SELECT * FROM employee;

SELECT * FROM employee_salary; 

INSERT INTO employee (employee_id,first_name,last_name,age,gender,birth_date)
VALUES
(1,'ALOK','KUMAR',22,'MALE','2002-12-15'),
(2,'ABHAY','SINGH',21,'MALE','2001-11-01'),
(3,'LISSA','DEV',26,'FEMALE','1998-02-13'),
(4,'KARAN','KUMAR',25,'MALE','1999-10-21'),
(5,'SURAJ','PANDEY',28,'MALE','1996-08-14'),
(6,'DEEPAK','KUMAR',30,'MALE','1994-03-14'),
(7,'RIYA','JADHAO',24,'FEMALE','2000-05-03'),
(8,'ANJALI','SINGH',23,'FEMALE','2001-09-18'),
(9,'SWATI','KUMARI',29,'FEMALE','1995-02-19'),
(10,'UDAY','PANDEY',27,'MALE','1997-01-17');


INSERT INTO employee_salary (employee_id,first_name,last_name,occupation,salary)
VALUES 
(1,'ALOK','KUMAR','DATA ANALYST',18000),
(2,'ABHAY','SINGH','EXCEL DEV',20000),
(3,'LISSA','DEV','SOFTWARE ENG',75000),
(4,'KARAN','KUMAR','PHARMACY',30000),
(5,'SURAJ','PANDEY','ELECTRICIAN',22000),
(6,'DEEPAK','KUMAR','HR',30000),
(7,'RIYA','JADHAO','DATA ANALYST',15000),
(8,'ANJALI','SINGH','DATA ANALYST',15000),
(9,'SWATI','KUMARI','SALES EXCUTIVE',22000),
(10,'UDAY','PANDEY','WEB DESIGNER',24000);


SELECT * from employee ;
SELECT * from employee_salary;

SELECT first_name,last_name,age from employee;

# PEMDAS (PARANTHESI,EXPONENT,MUL,DIV,ADD,SUB)

SELECT first_name,last_name,
age,age+10 as after_10_year
from employee;

# Combine two column in one new column 

SELECT CONCAT(first_name, " ", last_name)
as fulLname
from employee;

# USES OF DISTINCT

SELECT DISTINCT gender FROM employee;

SELECT DISTINCT age FROM employee;
