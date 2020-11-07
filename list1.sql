SELECT * FROM salaries

ALTER TABLE employees
DROP COLUMN birth_date
ALTER TABLE employees
ADD COLUMN hire_date DATE

SELECT * FROM employees
UPDATE employees
SET hire_date = hire_date DATE

ALTER TABLE salaries
FOREIGN KEY (emp_no) RFERENCES employees (emp_no)

ALTER TABLE salaries 
ADD CONSTRAINT emp_no
FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salaries
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;


SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31'
