USE employee_and_salary;

SELECT * FROM employee;

SELECT *FROM employee_salary;

-- Uses of where clause 

SELECT * FROM employee 
WHERE first_name = 'ALOK';

SELECT * FROM employee
WHERE age>= 25 AND gender = 'MALE';

SELECT * FROM employee_salary
WHERE salary > 15000 AND occupation = 'DATA ANALYST';

SELECT first_name,last_name,age,gender
FROM employee ;

SELECT first_name,last_name
FROM employee
WHERE first_name LIKE 'A%';

SELECT first_name,last_name,age
FROM employee
WHERE (first_name LIKE 'A%' AND age<23) OR last_name LIKE '%M%';

SELECT first_name,age,gender,birth_date
FROM employee
WHERE birth_date >='1998-01-01' AND first_name LIKE 'A____';


SELECT first_name,salary,occupation
FROM employee_salary
WHERE salary >=25000 AND first_name LIKE '%A_%';

