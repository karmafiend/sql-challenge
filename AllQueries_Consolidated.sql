SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    e.sex,
    s.salary
FROM
    employees e
JOIN
    salaries s ON e.emp_no = s.emp_no;
	
SELECT 
    e.first_name,
    e.last_name,
    e.hire_date 
FROM
    employees e

WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT
    d.dept_no,
    d.dept_name,
    dm.emp_no AS manager_emp_no,
    e.last_name AS manager_last_name,
    e.first_name AS manager_first_name
FROM
    departments d
JOIN
    department_manager dm ON d.dept_no = dm.dept_no
JOIN
    employees e ON dm.emp_no = e.emp_no;

SELECT
    de.dept_no,
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM
    department_employee de
JOIN
    employees e ON de.emp_no = e.emp_no
JOIN
    departments d ON de.dept_no = d.dept_no;

SELECT
    first_name,
    last_name,
    sex
FROM
    employees
WHERE
    first_name = 'Hercules'
    AND last_name LIKE 'B%'

SELECT
    d.dept_name,
	e.emp_no,
	e.first_name,
    e.last_name
FROM employees e
JOIN department_employee de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees e
JOIN department_employee de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

SELECT
    last_name,
    COUNT(last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC, last_name;

