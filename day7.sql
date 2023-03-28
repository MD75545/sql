.....group by clause....
select department_id,avg(salary)
from employees
group by department_id
order by department_id

.........group by clause multiple functions....
select department_id,job_id,sum(salary)
from employees
where department_id>40
group by department_id,job_id
order by department_id,job_id


select department_id,count(last_name) from employees
group by department_id
order by department_id

select department_id,job_id, count(last_name)
from employees
group by department_id,job_id
order by department_id

....assignment...

select department_id, max(hire_date)
from employees
group by department_id
order by department_id

select department_id,avg(salary)
from employees 
where department_id=20
group by department_id

select count(commission_pct) from employees

select department_id,job_id, max(salary)
from employees
group by department_id,job_id
order by department_id,job_id

select job_id,sum(salary)payroll
from employees
where job_id not like'%rep%'
group by job_id
having sum(salary)>13000
order by sum(salary)

select max(avg(salary))
from employees
group by department_id;


.....asiignmen2.....
 select department_id,count(employee_id)
 from employees
 group by department_id
 having  count(employee_id)>10
  
select max(count(employee_id))
from employees
group by department_id

