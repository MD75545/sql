select last_name,hire_date from employees where 
hire_date>(select hire_date from employees where last_name='Davies')

....single row subquries......
select last_name,job_id,salary from employees 
where job_id=(select job_id from employees where employee_id=141)

select last_name,job_id,salary from employees 
where job_id=(select job_id from employees where last_name='Fox')
AND salary>(select salary from employees where last_name='Fox')
......by gp function...
select last_name,salary from employees where salary=(select min(salary)from employees)

select *from employees
select *from departments
select last_name,salary from employees where salary>(select avg(salary)from employees)

....
select department_id,min(salary) from employees
group by department_id
having min(salary)>(select min (salary) from employees where department_id=30)

.....ASSIGNMENTS....
SELECT LAST_NAME,FIRST_NAME from employees 
where last_name(select first_name from employees where last_name='Miller')

select last_name,salary from employees 
where salary>any(select salary from employees where last_name='Taylor')

select first_name,last_name from employees natural join departments 
where department_name='Finance'

select department_id,avg(salary) from employees 
group by department_id
having avg(salary)=(select avg(salary) from employees where department_id=50)

select last_name,salary,job_id from employees
where salary<any(select salary from employees WHERE job_id='IT_PROG')
and job_id<>'IT_PROG'

select last_name,salary,job_id from employees
where salary<all(select salary from employees WHERE job_id='IT_PROG')
and job_id<>'IT_PROG'


