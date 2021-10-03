--1.List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, last_name, first_name, sex, salary
from employees
join salaries
on employees.emp_no=salaries.emp_no;

--2.List first name, last name, and hire date for employees who were hired in 1986.
select first_name,last_name, hire_date 
from employeeS
WHERE hire_date BETWEEN '1986/1/1' AND '1986/12/31' 
order by hire_date ;

--3.List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
select emp_no_manager, departments.dept_no, dept_name, first_name, last_name 
from departments_manager
join departments 
on departments.dept_no=departments_manager.dept_no
join employees
on employees.emp_no=departments_manager.emp_no_manager;

--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
select  employees.emp_no, last_name, first_name,dept_name
from departments_employees
join employees
on departments_employees.emp_no=employees.emp_no
join departments
on departments_employees.dept_no=departments.dept_no;

--5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name='Hercules' and last_name like 'B%';

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
select  employees.emp_no, last_name, first_name,dept_name
from departments_employees
join employees
on departments_employees.emp_no=employees.emp_no
join departments
on departments_employees.dept_no=departments.dept_no
where dept_name='Sales';

--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select  employees.emp_no, last_name, first_name,dept_name
from departments_employees
join employees
on departments_employees.emp_no=employees.emp_no
join departments
on departments_employees.dept_no=departments.dept_no
where dept_name='Sales' or dept_name='Development'
order by dept_name;

--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) as "Frequency of different last name"
from employees
group by last_name
order by count(last_name) desc;




