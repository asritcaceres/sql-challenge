--List the following details of each employee: employee number, last name, first name, sex, and salary.
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s
ON (e.emp_no = s.emp_no);

--List first name, last name, and hire date for employees who were hired in 1986.
Select first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01'
AND hire_date < '1987-01-01';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM departments as d
JOIN dept_manager as m
ON (d.dept_no=m.dept_no)
JOIN employees as e
ON (m.emp_no=e.emp_no)

--List the department of each employee with the following information: employee number, last name, first name, and department name.
Select e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments as d
JOIN dept_emp as de
ON (d.dept_no=de.dept_no)
JOIN employees as e 
ON (e.emp_no=de.emp_no);


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select first_name, last_name, sex
FROM employees
Where first_name = 'Hercules' AND last_name LIKE 'B%';


--List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments as d
JOIN dept_emp as de
ON (d.dept_no=de.dept_no)
JOIN employees as e 
ON (e.emp_no=de.emp_no)
Where dept_name = 'Sales';


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments as d
JOIN dept_emp as de
ON (d.dept_no=de.dept_no)
JOIN employees as e 
ON (e.emp_no=de.emp_no)
Where dept_name = 'Sales' OR dept_name = 'Development';


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select last_name, count(last_name) as "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC;