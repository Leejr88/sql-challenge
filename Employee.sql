-- 1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no

-- 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3
SELECT dept_manager.dept_no, dept_manager.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_manager
JOIN employees ON dept_manager.emp_no = employees.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no;

-- 4
SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

-- 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6
SELECT dept_emp.emp_no, employees.first_name, employees.last_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_emp.dept_no = 'd007';

-- 7
SELECT dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_emp.dept_no = 'd007' 
OR dept_emp.dept_no = 'd005'
ORDER BY departments.dept_name ASC;

-- 8
SELECT last_name, COUNT(*) AS last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name ASC;