Q1
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Employees
JOIN Salaries 
ON Employees.emp_no=Salaries.emp_no; 

Q2 
SELECT first_name, last_name, hire_date 
FROM Employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;

Q3
SELECT DeptManager.dept_no, Departments.dept_name, DeptManager.emp_no, Employees.last_name, Employees.first_name
FROM DeptManager
JOIN Departments 
ON DeptManager.dept_no=Departments.dept_no
JOIN Employees 
ON DeptManager.emp_no=Employees.emp_no;

Q4
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees 
JOIN DeptEmployee
ON Employees.emp_no=DeptEmployee.emp_no
JOIN Departments
ON DeptEmployee.dept_no=Departments.dept_no; 

Q5
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules';
/*Not sure how to get the first letter B thing!!!*/

Q6
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees 
JOIN DeptEmployee 
ON Employees.emp_no=DeptEmployee.emp_no
JOIN Departments
ON DeptEmployee.dept_no=Departments.dept_no 
WHERE Departments.dept_name = 'Sales';

Q7
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees 
JOIN DeptEmployee 
ON Employees.emp_no=DeptEmployee.emp_no
JOIN Departments
ON DeptEmployee.dept_no=Departments.dept_no 
WHERE Departments.dept_name = 'Sales' OR 'Development';

Q8
SELECT last_name, COUNT (*) AS "LastNameFreq" 
FROM Employees
GROUP BY last_name
ORDER BY "LastNameFreq" DESC;