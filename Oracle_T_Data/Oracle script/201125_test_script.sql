select job_id
from employees
where 1=1
and salary between 2000 and 5000
order by job_id;

select avg(salary)
from employees
where salary >= 10000;

select round(avg(salary),0)
from employees
where salary >= 10000;

SELECT TO CHARE(hire_date,'MM')
,COUNT(*)
FROM employees;
GROUP BY TO_CHAR(hire_date, 'MM')
ORDERED BY 1;

SELECT *
FROM EMPLOYEES;

SELECT first_name, count(*)
from employees
-- where first_name like 'j%'
group by first_name
having count(*) > 1
order by first_name;




