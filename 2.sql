Select last_name,salary,job_id from employees where salary>1000 and job_id like'%MAN%';
Select last_name,salary,job_id from employees where salary>1000 or job_id like '%man';
select last_name,salary,job_id from employees where job_id not in ('st_man','sa_rep','cad_up');
Select last_name,department_id,salary from employees where department_id=60 or department_id=90 and salary>10000;
Select last_name,department_id,salary from employees where (department_id=60 or department_id=90) and salary>10000;
select last_name,department_id from employees where job_id='SA_REP' AND salary>8000;
select last_name,job_id from employees where salary between 3000 and 5000;
select last_name,DEPARTMENT_ID from employees where job_id in('SA-REP','SA_MAN');
SELECT employee_id,last_name,hire_date from employees order by hire_date;
select employee_id,last_name,department_id,manager_id from employees order by 3;
select employee_id,last_name,salary*12 as annsal from employees order by annsal;
select employee_id,last_name,department_id from employees order by department_id,salary desc;
select last_name,department_id,salary from employees order by department_id,salary desc;
select last_name,department_id,salary,employee_id from employees order by employee_id;
select last_name,employee_id,salary*12 from employees order by salary;
select department_id,salary from employees order by department_id,salary desc;
select last_name,salary from employees where department_id=80 order by salary desc;
select last_name,salary from employees order by 2