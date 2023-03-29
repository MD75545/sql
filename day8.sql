.......natural joints...
select first_name,last_name,job_title from employees natural join jobs

...using clause...
select e.first_name,e.last_name,d.department_name from employees 
e join departments d 
using (department_id)
 
.....using 3 way joints....
select *from locations
select e.first_name,d.department_name,d.location_id ,l.location_id,l.city from employees e join departments d
on(e.department_id=d.department_id)join locations l
on(d.location_id=l.location_id)

...using where...
select e.employee_id,e.last_name,d.location_id,d.department_name 
from employees e 
join departments d on(e.department_id=d.department_id) 
where e.manager_id=149

select w.last_name,w.manager_id,m.last_name from employees 
w join employees m on(w.manager_id=m.employee_id)

...non equivalent joints...
select e.last_name,e.salary,j.grade_level from employees 
e join job_grades j on
e.salary between j.lowest_sal and j.highest_sal

...rightouterjoints....
select e.first_name,e.last_name,d.department_id,d.department_name 
from employees e right outer join departments d 
on(e.department_id=d.department_id)

...left outer joints...
select e.first_name,e.last_name,d.department_id,d.department_name 
from employees e left outer join departments d 
on(e.department_id=d.department_id)

....cartesian products...
select e.first_name,e.last_name,d.department_name from employees e cross join departments d

select department_id,avg(salary) from employees
group by department_id
having department_id='10' and department_id='30'

SELECT e.last_name,e.first_name,e.salary,m.manager_id,m.salary from employees
e join departments d 
on(e.department_id=d.department_id)
where e.salary>m.salary