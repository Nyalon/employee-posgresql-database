SELECT "Employees".emp_no, birth_date, first_name, last_name, gender, salary
FROM "JobSalary"
INNER JOIN "Employees" ON
"Employees".emp_no="JobSalary".emp_no;

SELECT first_name, last_name, hire_date
FROM "Employees"
WHERE date_part('year', hire_date) = 1986;

SELECT from_date, to_date, dept_name, first_name, last_name, "Employees".emp_no, "Departments".dept_no
FROM "Manager"
LEFT JOIN "Departments" ON 
"Manager".dept_no="Departments".dept_no
LEFT JOIN "Employees" ON
"Manager".emp_no="Employees".emp_no;

SELECT  dept_name, first_name, last_name, "Employees".emp_no, "Departments".dept_no
FROM "Employees"
LEFT JOIN "EmploymentStatus" ON 
"Employees".emp_no="EmploymentStatus".emp_no
LEFT JOIN "Departments" ON
"EmploymentStatus".dept_no="Departments".dept_no;

SELECT *
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT  dept_name, first_name, last_name, "Employees".emp_no
FROM "Employees"
LEFT JOIN "EmploymentStatus" ON 
"Employees".emp_no="EmploymentStatus".emp_no
LEFT JOIN "Departments" ON
"EmploymentStatus".dept_no="Departments".dept_no
WHERE "Departments".dept_no = 'd007';

SELECT  dept_name, first_name, last_name, "Employees".emp_no
FROM "Employees"
LEFT JOIN "EmploymentStatus" ON 
"Employees".emp_no="EmploymentStatus".emp_no
LEFT JOIN "Departments" ON
"EmploymentStatus".dept_no="Departments".dept_no
WHERE "Departments".dept_no = 'd007'
OR "Departments".dept_no = 'd005';

SELECT last_name, count(emp_no)
FROM "Employees"
GROUP BY last_name;