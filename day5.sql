....to char....
select to_char(sysdate,'fm dd-mm-yy')from dual
select to_char(sysdate,'dd-mm-yyyy hh24:mi:ss am')from dual

select to_char (sysdate,'dd-"of"-month')from dual
select to_char(sysdate,'dd "ddspth" month')from dual
select to_char(sysdate,'ddspth "of" month')from dual

...hiredate....
select to_char(hire_date,'fm dd-month-yyyy')from employees

...to date to date...
select last_name,to_char(hire_date,'dd-mon-yyyy')from employees where hire_date<to_date('01-jan-90','dd-mm-rr')

...null_pct...

select nvl(commission_pct,0) from employees
select NVL(hire_date,'01-jan-90')from employees
SELECT LAST_NAME,SALARY,NVL(COMMISSION_PCT,0),(SALARY*12)+(SALARY*12*NVL(COMMISSION_PCT,0)) AN_SAL FROM EMPLOYEES
select nvl(manager_id,0)from departments
select nvl(job_id,'no job yet')from employees
