USE employees;

#Question Number 2
SELECT gender, MIN(salary) AS minSal, MAX(salary), AVG(salary)
FROM employees e, salaries s
WHERE e.emp_no = e.emp_no
GROUP BY gender;

#Question Number 3
SELECT COUNT(DISTINCT emp_no) AS mycount
FROM dept_emp
WHERE dept_no = ‘d007’ BETWEEN ‘1987-01-01’ AND ‘1991-03-07’;

#Question Number 4
SELECT COUNT(DISTINCT emp_no) AS empCount, AVG(salary) AS avgSalary
FROM salaries
GROUP BY emp_no, salary
ORDER BY emp_no, salary

#Question Number 5
SELECT COUNT(emp_no) AS empCount, title
FROM titles
WHERE title BETWEEN ‘Senior staff’ AND ‘staff’
GROUP BY title;
