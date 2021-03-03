-- GROUP BY ��
-- 1
SELECT employee_id
FROM employees
GROUP BY employee_id;

-- 2
SELECT employee_id, job_id
FROM employees
ORDER by 2;

SELECT job_id
FROM employees
GROUP BY job_id;

-- 3
SELECT TO_CHAR(hire_date, 'YYYY') HIRE_YEAR
FROM employees
GROUP BY TO_CHAR(hire_date, 'YYYY') ;

-- 4
SELECT TO_CHAR(hire_date, 'YYYY') HIRE_YEAR
FROM employees
GROUP BY hire_date;

-- 5
SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY 2 DESC;

-- 6
SELECT COUNT(*)
FROM employees;

-- 7
SELECT COUNT(*) total_cnt, MIN(salary) min_salary, MAX(salary) max_salary
FROM employees;

-- 8
SELECT job_id, COUNT(*) total_cnt, MIN(salary) min_salary, MAX(salary) max_salary
FROM employees
GROUP BY job_id
ORDER BY job_id;

-- 9
SELECT TO_CHAR(hire_date, 'YYYY') HIRE_YEAR, department_id, COUNT(*), SUM(salary), AVG(salary)
FROM employees
GROUP BY TO_CHAR(hire_date, 'YYYY'), department_id
ORDER BY 1, 2;

-- 10
SELECT TO_CHAR(hire_date, 'YYYY') HIRE_YEAR, department_id, COUNT(*), SUM(salary), AVG(salary)
FROM employees
WHERE TO_CHAR(hire_date, 'YYYY') >= '2004'
GROUP BY TO_CHAR(hire_date, 'YYYY'), department_id
ORDER BY 1, 2;

-- 11
SELECT TO_CHAR(hire_date, 'YYYY') HIRE_YEAR, department_id, COUNT(*), SUM(salary), ROUND(AVG(salary),0)
FROM employees
WHERE TO_CHAR(hire_date, 'YYYY') >= '2004'
GROUP BY TO_CHAR(hire_date, 'YYYY'), department_id
ORDER BY 1, 2;

-- 12
SELECT TO_CHAR(hire_date, 'YYYY') HIRE_YEAR, department_id, COUNT(*), SUM(salary), ROUND(AVG(salary),0)
FROM employees
WHERE ROUND(AVG(salary),0) >= 5000
GROUP BY TO_CHAR(hire_date, 'YYYY'), department_id
ORDER BY 1, 2;


-- having ��
-- 13. ���� ����
SELECT TO_CHAR(hire_date, 'YYYY') HIRE_YEAR, department_id, COUNT(*), SUM(salary), ROUND(AVG(salary),0)
FROM employees
WHERE ROUND(AVG(salary),0) >= 5000
GROUP BY TO_CHAR(hire_date, 'YYYY'), department_id
ORDER BY 1, 2;

-- 14
SELECT TO_CHAR(hire_date, 'YYYY') HIRE_YEAR, department_id, COUNT(*), SUM(salary), ROUND(AVG(salary),0)
FROM employees
--WHERE ROUND(AVG(salary),0) >= 5000
GROUP BY TO_CHAR(hire_date, 'YYYY'), department_id
HAVING ROUND(AVG(salary),0) >= 5000
ORDER BY 1, 2;

-- 15
SELECT TO_CHAR(hire_date, 'YYYY') HIRE_YEAR, department_id, COUNT(*), SUM(salary), ROUND(AVG(salary),0)
FROM employees
GROUP BY TO_CHAR(hire_date, 'YYYY'), department_id
HAVING COUNT(*) > 1
ORDER BY 1, 2;

-- 16
SELECT job_id
FROM employees
GROUP BY job_id;

-- 17
SELECT DISTINCT job_id
FROM employees;

-- 18
SELECT DISTINCT TO_CHAR(hire_date, 'YYYY') HIRE_YEAR, department_id
FROM employees
ORDER BY 1, 2;

----------------------------------------------------------
-- 19
SELECT  substr(phone_number,1,3), JOB_ID, SUM(salary)
FROM EMPLOYEES
group by JOB_ID, substr(phone_number,1,3)
order by 1, 2;

-- 20
SELECT  SUBSTR(phone_number,1,3), JOB_ID, SUM(salary)
FROM EMPLOYEES
GROUP BY  ROLLUP(substr(phone_number,1,3), JOB_ID)
;

-- 21
SELECT  SUBSTR(phone_number,1,3), JOB_ID, SUM(salary)
FROM EMPLOYEES
GROUP BY  CUBE(substr(phone_number,1,3), JOB_ID)
;

----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------

-- A ���� 
SELECT job_id
  FROM employees
 WHERE 1=1
   AND salary BETWEEN 2000 and 5000
 ORDER BY job_id;
 
SELECT DISTINCT job_id
  FROM employees
 WHERE 1=1
   AND salary BETWEEN 2000 and 5000
 ORDER BY job_id;
-- AD_ASST, IT_PROG, PU_CLERK, SH_CLERK, ST_CLERK 

-- B ����    
SELECT job_id
  FROM employees
 WHERE 1=1   
   AND salary BETWEEN 5001 AND 6000
 ORDER BY job_id;
-- IT_PROG, MK_REP, ST_MAN 
 
-- UNION 
SELECT job_id
  FROM employees
 WHERE 1=1
   AND salary BETWEEN 2000 and 5000
 UNION 
SELECT job_id
  FROM employees
 WHERE 1=1   
   AND salary BETWEEN 5001 AND 6000
 ORDER BY job_id;
 
 
-- UNION ���� -- ��� �� �� ����ġ 
SELECT job_id, salary
  FROM employees
 WHERE 1=1
   AND salary BETWEEN 2000 and 5000
 UNION 
SELECT job_id
  FROM employees
 WHERE 1=1   
   AND salary BETWEEN 5001 AND 6000
 ORDER BY job_id;
 
 
-- UNION ���� -- ��� ���� �������� ����ġ 
SELECT job_id, salary
  FROM employees
 WHERE 1=1
   AND salary BETWEEN 2000 and 5000
 UNION 
SELECT job_id, phone_number
  FROM employees
 WHERE 1=1   
   AND salary BETWEEN 5001 AND 6000
 ORDER BY job_id; 
 

-- UNION ���� -- ��������� ������ �ǹ̻� ������ ���� 
SELECT job_id, salary
  FROM employees
 WHERE 1=1
   AND salary BETWEEN 2000 and 5000
 UNION 
SELECT job_id, department_id
  FROM employees
 WHERE 1=1   
   AND salary BETWEEN 5001 AND 6000
 ORDER BY job_id;  
 
 
-- UNION ALL
SELECT job_id
  FROM employees
 WHERE 1=1
   AND salary BETWEEN 2000 and 5000
 UNION ALL
SELECT job_id
  FROM employees
 WHERE 1=1   
   AND salary BETWEEN 5001 AND 6000
 ORDER BY job_id; 
 
 
-- INTERSECT 
SELECT job_id
  FROM employees
 WHERE 1=1
   AND salary BETWEEN 2000 and 5000
 INTERSECT
SELECT job_id
  FROM employees
 WHERE 1=1   
   AND salary BETWEEN 5001 AND 6000
 ORDER BY job_id;  
 

-- MINUS
-- A - B
SELECT job_id
  FROM employees
 WHERE 1=1
   AND salary BETWEEN 2000 and 5000
 MINUS
SELECT job_id
  FROM employees
 WHERE 1=1   
   AND salary BETWEEN 5001 AND 6000
 ORDER BY job_id;  
 
-- B - A 
SELECT job_id
  FROM employees
 WHERE 1=1   
   AND salary BETWEEN 5001 AND 6000 
 MINUS
SELECT job_id
  FROM employees
 WHERE 1=1
   AND salary BETWEEN 2000 and 5000
 ORDER BY job_id;


-- ���� ���� �ǽ� 
-- (1) �޿��� 10000 �̻��� ����� ��� �޿��� ���϶�
SELECT AVG(salary)
  FROM employees
 WHERE salary >= 10000;
 
SELECT ROUND(AVG(salary), 0)
  FROM employees
 WHERE salary >= 10000;

-- (2) �Ի� ���� ������� ���϶�
SELECT TO_CHAR(hire_date, 'MM'), COUNT(*)
  FROM employees
GROUP BY TO_CHAR(hire_date, 'MM')
ORDER BY 1;

-- ���Ϻ� �Ի� �������? 
SELECT TO_CHAR(hire_date, 'day'), COUNT(*)
  FROM employees
GROUP BY TO_CHAR(hire_date, 'day')
ORDER BY 1;


-- (3) �̸��� ������ ����� ������ ���� ���϶�
SELECT  *
  FROM employees
ORDER BY first_name;

SELECT first_name
      ,COUNT(*)
  FROM employees
 GROUP BY first_name
 ORDER BY first_name;
 
 
SELECT first_name
      ,COUNT(*)
  FROM employees
 GROUP BY first_name
 HAVING COUNT(*) > 1
 ORDER BY first_name;
 

  
-- ���տ����� Ȱ��
-- 1.���� ��� ���� 
create table budget_table (
     yearmon      VARCHAR2(6),
     budget_amt   NUMBER     );
     
INSERT INTO budget_table values('201901', 1000);   
INSERT INTO budget_table values('201902', 2000);   
INSERT INTO budget_table values('201903', 1500);   
INSERT INTO budget_table values('201904', 3000);   
INSERT INTO budget_table values('201905', 1050);   

create table sale_table (
     yearmon      VARCHAR2(6),
     sale_amt     NUMBER     );
     
INSERT INTO sale_table values('201901', 900);   
INSERT INTO sale_table values('201902', 2000);   
INSERT INTO sale_table values('201903', 1000);   
INSERT INTO sale_table values('201904', 3100);   
INSERT INTO sale_table values('201905', 800);   

SELECT yearmon, budget_amt, 0 sale_amt
  FROM budget_table
 UNION 
SELECT yearmon, 0 budget_amt, sale_amt
  FROM sale_table;
  
SELECT yearmon, 
       SUM(budget_amt) budget, 
       SUM(sale_amt) sale,
       ROUND(SUM(sale_amt) / SUM(budget_amt),2) * 100 rates
  FROM ( SELECT yearmon, budget_amt, 0 sale_amt
                FROM budget_table
                UNION 
                SELECT yearmon, 0 budget_amt, sale_amt
                FROM sale_table
              )   
  GROUP BY yearmon
  ORDER BY 1;


-- �ο츦 �÷����� 
CREATE TABLE test_score (
    years     VARCHAR2(4),
    gubun     VARCHAR2(20),
    korean    NUMBER,
    english   NUMBER,
    math      NUMBER );
    
INSERT INTO test_score VALUES ('2019', '�߰����', 92, 87, 67);
INSERT INTO test_score VALUES ('2019', '�⸻���', 88, 80, 91);


SELECT years, gubun, '����' subject, korean score FROM test_score
UNION ALL
SELECT years, gubun, '����' subject, english score FROM test_score
UNION ALL
SELECT years, gubun, '����' subject, math score FROM test_score
ORDER BY 2 desc;

-- INTERSECT
SELECT state_province dup_loc_name
  FROM locations
INTERSECT
SELECT city
  FROM locations
ORDER BY 1;  

SELECT state_province, city
  FROM locations 
 WHERE state_province = city
ORDER BY 1;

/*
-- ���ν���
CREATE OR REPLACE PROCEDURE create_dept_p ( p_dept_id NUMBER,
                                            p_dept_nm VARCHAR2,
                                            p_man_id  NUMBER,
                                            p_loc_id  NUMBER )
IS
BEGIN
	INSERT INTO departments (department_id, department_name, manager_id, location_id)
	VALUES ( p_dept_id, p_dept_nm, p_man_id, p_loc_id );
	
	COMMIT;
	
EXCEPTION WHEN OTHERS THEN
  RAISE_APPLICATION_ERROR (-20205, SQLERRM);
  ROLLBACK;
END;                           

-- ���ν��� ȣ�� 
EXEC CREATE_DEPT_P ( 300, 'TEST_DEPT', NULL, 1700);

SELECT *
FROM DEPARTMENTS;

-- ���ν��� ȣ�� 
EXEC CREATE_DEPT_P ( 300, 'TEST_DEPT', NULL, 1700);

-- �����
CREATE OR REPLACE PROCEDURE create_dept_p ( p_dept_id NUMBER,
                                            p_dept_nm VARCHAR2,
                                            p_man_id  NUMBER,
                                            p_loc_id  NUMBER )
IS
  v_cnt  NUMBER;
BEGIN
    -- �μ���ȣ üũ 
    SELECT COUNT(*)
      INTO v_cnt
      FROM departments
     WHERE department_id = p_dept_id;
    -- v_cnt�� 0���� ũ�� �̹� �����ϴ� �μ��� 
    IF v_cnt > 0 THEN
       RAISE_APPLICATION_ERROR (-20201, p_dept_id || '�� �μ��� �̹� �����մϴ�');
       RETURN; -- ���ν������� return ������ ���� ���� ���� ���ϰ� �������� 
    END IF;
    -- �μ����� �Է� 
	INSERT INTO departments (department_id, department_name, manager_id, location_id)
	VALUES ( p_dept_id, p_dept_nm, p_man_id, p_loc_id );
	
	COMMIT;
	
EXCEPTION WHEN OTHERS THEN
  RAISE_APPLICATION_ERROR (-20205, SQLERRM);
  ROLLBACK;
END;        

EXEC CREATE_DEPT_P ( 10, 'TEST_DEPT', NULL, 1700);

EXEC CREATE_DEPT_P ( 10, 'TEST_DEPT', NULL, 9000);

*/
-- ���ʽ� ���� 
create table GROUPBYMULTIPLY
(
  department_name  VARCHAR2(100),
  num_data         NUMBER 
);


-- insert 
insert into groupbymultiply values ('dept1', 10);
insert into groupbymultiply values ('dept1', 20);
insert into groupbymultiply values ('dept1', 30);


insert into groupbymultiply values ('dept2', 5);
insert into groupbymultiply values ('dept2', 7);
insert into groupbymultiply values ('dept2', 40);

insert into groupbymultiply values ('dept3', 69);
insert into groupbymultiply values ('dept3', 71);
insert into groupbymultiply values ('dept3', 12);

commit;

SELECT *
FROM groupbymultiply;


SELECT department_name,
       SUM(num_data)
FROM groupbymultiply
GROUP BY department_name
ORDER BY 1 ;


