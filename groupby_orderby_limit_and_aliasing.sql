USE employee_and_salary;

SELECT * FROM employee;

SELECT * FROM employee_salary;

-- Group By

SELECT gender 
FROM employee 
GROUP BY gender;

SELECT gender ,AVG(age)
FROM employee 
GROUP BY gender;

SELECT gender ,AVG(age),MIN(age),MAX(age),COUNT(age)
FROM employee 
GROUP BY gender;

SELECT gender ,
AVG(age) as avg_age,
MIN(age) as min_age,
MAX(age) as max_age,
COUNT(age) as total_emmployee
FROM employee 
GROUP BY gender;

SELECT occupation ,AVG(salary),MIN(salary),MAX(salary),COUNT(salary)
FROM employee_salary 
GROUP BY occupation;

-- ORDER BY 

SELECT * FROM employee_salary
ORDER BY salary ASC ;

SELECT * FROM employee_salary
ORDER BY employee_id DESC;

SELECT * FROM employee
ORDER BY 
first_name ;

-- HAVING CLAUSE 

SELECT occupation ,AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%ANA%'
GROUP BY occupation
HAVING AVG(salary) >15000;

SELECT occupation ,AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%AR%'
GROUP BY occupation
HAVING AVG(salary) >15000;

-- Limit and Aliasing 

SELECT * FROM employee 
LIMIT 2;

SELECT * FROM employee
ORDER BY age DESC
LIMIT 3 ;

SELECT * FROM employee
ORDER BY age DESC
LIMIT 2,1 ;

-- Aliasing 

SELECT gender ,
AVG(age) as avg_age,
MIN(age) as min_age,
MAX(age) as max_age,
COUNT(age) as total_emmployee
FROM employee 
GROUP BY gender;