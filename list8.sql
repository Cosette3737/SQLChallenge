SELECT * FROM salaries

ALTER TABLE dept_emp
DROP COLUMN emp_no;
ALTER TABLE dept_emp
DROP COLUMN dept_no;
ALTER TABLE dept_emp
	ADD dept_no VARCHAR;
ALTER TABLE 
ADD COLUMN dept_no

SELECT * FROM employees
UPDATE employees
SET hire_date = hire_date DATE

ALTER TABLE salaries
FOREIGN KEY (emp_no) RFERENCES employees (emp_no)

ALTER TABLE dept_emp 
ADD CONSTRAINT emp_no
FOREIGN KEY (emp_no) REFERENCES employees(emp_no);




SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salaries
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;




SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' and '1987-01-01'






Select * FROM dept_manager

SELECT first_name, last_name
FROM employees
LEFT JOIN 
ON dept_manager.emp_no = employees.emp_no
LEFT JOIN
ON department.dept.no; = dept.no


SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name = 'Hercules' and employees.last_name like '%B%'










SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY 2 DESC;