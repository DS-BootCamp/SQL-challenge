How are tables related to each other:

Employees:
emp_no int
emp_title_id int
birth_date date
first_name varchar
last_name varchar
sex varchar
hire_date date

Titles:
title_id int
title varchar

Salaries:
emp_no int
salary int

Managers:
dept_no int
emp_no int

DeptEmployee:
emp_no	int
dept_no int

Departments:
dept_no int
dept_name varchar

Salaries:
emp_no int
salary int

