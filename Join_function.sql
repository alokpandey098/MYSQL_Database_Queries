USE employee_and_salary;

SELECT * FROM employee;

SELECT * FROM employee_salary;

-- INNER JOIN OR JOIN

SELECT * FROM 
employee as emp
INNER JOIN
employee_salary as emps
ON emp.employee_id = emps.employee_id;

SELECT * FROM 
employee as emp
JOIN
employee_salary as emps
ON emp.employee_id = emps.employee_id;

SELECT * FROM 
employee as emp
INNER JOIN
employee_salary as emps
ON emp.first_name = emps.first_name;

-- OUTER JOIN

-- LEFT JOIN

SELECT * FROM 
employee as emp
LEFT JOIN
employee_salary as emps
ON emp.employee_id = emps.employee_id;

-- RIGHT JOIN

SELECT * FROM 
employee as emp
RIGHT JOIN
employee_salary as emps
ON emp.employee_id = emps.employee_id;

-- FULL OUTER JOIN 

SELECT employee.first_name, employee_salary.salary
FROM employee
LEFT JOIN employee_salary
ON employee.employee_id = employee_salary.employee_id

UNION

SELECT employee.first_name, employee_salary.salary
FROM employee
LEFT JOIN employee_salary
ON employee.employee_id = employee_salary.employee_id;

-- CROSS JOIN

SELECT employee.first_name, employee_salary.occupation
FROM employee
CROSS JOIN employee_salary;

-- SELF JOIN

SELECT emp.first_name AS Employee, emps.occupation AS Designation
FROM employee emp
INNER JOIN employee_salary emps
ON emp.employee_id = emps.employee_id;

-- NATURAL JOIN 

SELECT *
FROM employee
NATURAL JOIN employee_salary;

-- USING CLAUSE

SELECT emp.first_name, emps.occupation
FROM employee emp
INNER JOIN employee_salary emps
USING (employee_id);

-- JOIN MORE THEN TWO COLUMNS

SELECT t1.column1, t2.column2, t3.column3
FROM table1 t1
INNER JOIN table2 t2 ON t1.common_column = t2.common_column
INNER JOIN table3 t3 ON t2.common_column = t3.common_column;