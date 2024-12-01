USE employee_and_salary;

SELECT first_name , LENGTH(first_name)
FROM employee
ORDER BY 2;

-- UPPER ,LOWER ,TRIM ,LTRIM ,RTRIM

SELECT first_name ,LOWER(first_name) AS name_in_lower
FROM employee;

-- LEFT ,RIGHT ,SUBSTRING

SELECT first_name ,last_name,
LEFT(first_name,3),
RIGHT(last_name,3),
SUBSTRING(birth_date,9,2) AS birth_day,
SUBSTRING(birth_date,6,2) AS birth_month,
SUBSTRING(birth_date,1,4) AS birth_year
FROM employee ;

-- REPLACE , LOCATE , CONCAT

SELECT first_name ,REPLACE(first_name,'A','a')
FROM employee ;

SELECT first_name ,LOCATE('AL',first_name)
FROM employee ;

SELECT first_name last_name,
CONCAT(first_name,' ',last_name) AS full_name
FROM employee ;

