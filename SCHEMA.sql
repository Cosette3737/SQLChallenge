CREATE TABLE employees(
emp_no INTEGER PRIMARY KEY,
emp_title VARCHAR,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR,
hire_date DATE);

CREATE TABLE departments(
dept_no VARCHAR PRIMARY KEY,
dept_name VARCHAR
);

CREATE TABLE dept_emp(
emp_no INTEGER,
dept_no VARCHAR
);

CREATE TABLE dept_manager(
dept_no VARCHAR,
emp_no INTEGER
);

CREATE TABLE salaries(
emp_no INTEGER,
salary INTEGER
);


CREATE TABLE titles(
title_id VARCHAR, 
title VARCHAR
);
