DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_managers;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

-- create tables with Primary Keys
CREATE TABLE Departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

CREATE TABLE Dept_emp (
	emp_no INT PRIMARY KEY,
	dept_no VARCHAR
);

CREATE TABLE Dept_managers (
	dept_no VARCHAR,
	emp_no INT PRIMARY KEY
);

CREATE TABLE Employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

CREATE TABLE Salaries (
	emp_no INT PRIMARY KEY,
	salary VARCHAR
);

CREATE TABLE Title (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);



