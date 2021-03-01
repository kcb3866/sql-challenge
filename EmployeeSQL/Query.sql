SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON (salaries.emp_no = employees.emp_no);

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT departments.dept_no, departments.dept_name, dept_managers.emp_no, employees.first_name, employees.last_name 
FROM departments
JOIN dept_managers ON (departments.dept_no = dept_managers.dept_no)
JOIN employees ON (dept_managers.emp_no = employees.emp_no);

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON (dept_emp.emp_no = employees.emp_no)
JOIN departments ON (departments.dept_no = dept_emp.dept_no);

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON (dept_emp.emp_no = employees.emp_no)
JOIN departments ON (departments.dept_no = dept_emp.dept_no)
WHERE dept_name = 'Sales';

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON (dept_emp.emp_no = employees.emp_no)
JOIN departments ON (departments.dept_no = dept_emp.dept_no)
WHERE dept_name = 'Sales' OR dept_name = 'Development';

SELECT last_name, COUNT(employees.last_name) AS "Frequency"
FROM employees
GROUP BY employees.last_name
ORDER BY "Frequency" DESC;
