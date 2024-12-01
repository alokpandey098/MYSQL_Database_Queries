-- BASIC UNION QUERY

SELECT first_name, last_name 
FROM employee
UNION
SELECT occupation, salary
FROM employee_salary;

-- UNION ALL

SELECT first_name,last_name
FROM employee
UNION ALL
SELECT first_name, last_name
FROM employee_salary;

-- UNION WITH WHERE CLAUSE 

SELECT first_name,last_name
FROM employee_salary
WHERE occupation = 'DATA ANALYST'
UNION
SELECT first_name, last_name
FROM employee
WHERE gender='MALE';

-- UNION WITH DIFFERENT COLUMN

SELECT first_name AS person, gender
FROM employee
UNION
SELECT first_name AS person, occupation
FROM employee_salary;

-- UNION WITH ORDER BY

SELECT first_name,age
FROM employee
UNION
SELECT first_name, salary
FROM employee_salary
ORDER BY first_name;

-- UNION WITH AGGREGATES

SELECT gender, COUNT(employee_id) AS total_people
FROM employee
GROUP BY gender
UNION
SELECT occupation, COUNT(employee_id) AS total_people
FROM employee_salary
GROUP BY occupation;

-- UNION WITH LIMIT

SELECT first_name, last_name
FROM employee
UNION
SELECT salary, occupation
FROM employee_salary
LIMIT 5;

-- UNION WITH SUBQUERIES

SELECT first_name,last_name ,'YOUNG MAN' as label
FROM employee
WHERE age>20 AND gender ='MALE'
UNION
SELECT first_name,last_name ,'MATURE MAN' as label
FROM employee
WHERE age>29 AND gender ='MALE'
UNION
SELECT first_name,last_name ,'Highly Paid Employee' as label
FROM employee_salary
WHERE salary>=30000;








