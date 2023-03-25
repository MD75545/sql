select *from employees where rownum<=5;
select *from employees where rownum<=10;
select employee_id,last_name ,&col from employees;
select employee_id,last_name,job_id from employees where employee_id=&col;
select *from employees order by &col;

select employee_id,last_name,&&col from employees order by &col; 

select employee_id,first_name, &column from employees where &column order by &column;

select employee_id,first_name,last_name,&column from employees where &column order by &column
select concat ('seed','infotech') from dual
SELECT LOWER('SEED') FROM DUAL
SELECT UPPER('SEED') FROM DUAL
select length ('mohammed') from dual
select instr ('seed infotech','n') from dual
select substr ('seed infotech',1,6) from dual
select rpad ('seedinfo',20,'*') from dual
select lpad ('seedinfo',20,'*') from dual

select last_name,upper(concat(SUBSTR(LAST_NAME,1,8),'_US')) AS DETAILS FROM EMPLOYEES WHERE DEPARTMENT_ID=60;  

select initcap(first_name),initcap(last_name),lower(job_id) from employees 
select concat(last_name,job_id) from employees;
select *from employees where length(salary)>4;
select lpad(salary,20,'*') from employees;
select last_name, length(last_name) from employees