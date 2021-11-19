SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM employees
SELECT * FROM salaries
SELECT * FROM titles

-- Employee Details
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM salaries AS s
JOIN employees AS e 
ON e.emp_no = s.emp_no;


-- Employees Hired in 1986 Details
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE ('%1986%');


-- Manager of Each Department Info
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
JOIN employees AS e 
ON e.emp_no = dm.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no;


-- Each Employee Department
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no;


-- Hercules B Employees
SELECT first_name, last_name, sex
FROM employees
WHERE first_name LIKE ('%Hercules%') 
AND last_name LIKE ('%B%');


-- Sales Department 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no 
WHERE dept_name LIKE ('%Sales%') OR dept_name LIKE ('%Development%');


-- Frequency Count in Descending Order
SELECT last_name, COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" desc;
