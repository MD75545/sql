......nvl2........
select last_name,job_id,commission_pct,nvl2('commission_pct',salary+commission_pct,salary)from employees

.......nulif......
select first_name,length(first_name)as "exp1",
last_name,length(last_name)as "exp2",
nullif(length(first_name),length(last_name))result from employees

select commission_pct from employees

select last_name,salary,commission_pct,nvl2('salary',salary+commission_pct,12*salary+commission_pct)result from employees

.....case expression...
select last_name,job_id,salary,case job_id
when 'IT_PROG' THEN SALARY*1.10
when'SA_REP' THEN SALARY*1.15
when 'ST-CLERK'THEN SALARY*1.20
ELSE SALARY END "REVISED_SALARY"
FROM EMPLOYEES

.....SEARCHED CASE EDPRESSION..........
SELECT LAST_NAME,SALARY, 
(CASE WHEN salary<5000 then 'low'
      when salary<10000 then 'medium'
      when salary<20000 then 'good'
      else 'Excellent'
      END) qualify_salary
      from employees
      
.....decode function...
select LAST_NAME,job_id,salary,
DECODE (job_id,'it_prog',salary*1.20,
               'SA_REP',salary*1.15,  
              'ST_CLERK',SALARY*1.10,
               salary)revised_salary from employees
               
 select LAST_NAME,job_id,salary,
DECODE (job_id,'MK_MAN','Marketing_manager',
               'pu_man','purchasing_manager',
               'HR_REP','HR_REPRESENTATIVE', 
               job_id,'same as job')
  FROM EMPLOYEES
  
  ....group function.....
  select max (salary),min(salary),avg(salary)from employees where job_id like '%REP'
  select salary,job_id from employees where job_id like '%REP%'
  SELECT MAX(SALARY) FROM EMPLOYEES
  SELECT COUNT(*) FROM EMPLOYEES
  
  SELECT MIN(HIRE_DATE),MAX(HIRE_DATE)FROM EMPLOYEES
  SELECT MIN(FIRST_NAME),MAX(LAST_NAME)FROM EMPLOYEES
   ....COUNT FUNCTION...
  SELECT COUNT(*) FROM EMPLOYEES WHERE DEPARTMENT_ID=50;
  SELECT COUNT (COMMISSION_PCT) FROM EMPLOYEES WHERE DEPARTMENT_ID=50;
  
  ...USING DISTINCTKEYWORD...
  SELECT COUNT(DISTINCT department_id) from employees
  
  .....group functions and null values 
  select AVG (commission_pct)
  from employees
  
  ...same usimng null....
  select AVG (NVL(commission_pct,0)) from employees