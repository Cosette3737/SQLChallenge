



--1

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;


--2

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' and '1987-01-01'


--3

Select 
dept_manager.dept_no, dept_manager.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_manager
INNER JOIN employees
ON dept_manager.emp_no =employees.emp_no
INNER JOIN departments
ON dept_manager.dept_no = departments.dept_no 


--4
List the department of each employee with the following information: employee number, last name, first name, and department name.


Select 
employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
RIGHT JOIN employees
ON dept_emp.emp_no =employees.emp_no
FULL OUTER JOIN departments
ON dept_emp.dept_no = departments.dept_no 


---5  

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name = 'Hercules' and employees.last_name like '%B%'


--6
List all employees in the Sales department, including their employee number, last name, first name, and department name.

Select 
employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
RIGHT JOIN employees
ON dept_emp.emp_no =employees.emp_no
FULL OUTER JOIN departments
ON dept_emp.dept_no = departments.dept_no 
WHERE departments.dept_name = 'Sales';


--7
List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select 
employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
RIGHT JOIN employees
ON dept_emp.emp_no =employees.emp_no
FULL OUTER JOIN departments
ON dept_emp.dept_no = departments.dept_no 
WHERE departments.dept_name='Sales' 
OR departments.dept_name = 'Development'

--8
SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY 2 DESC;



