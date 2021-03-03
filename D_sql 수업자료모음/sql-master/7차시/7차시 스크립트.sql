-- INSERT ��
DROP TABLE EMP;

CREATE TABLE  EMP (
       emp_no      VARCHAR2(30)  NOT NULL,
       emp_name    VARCHAR2(80)  NOT NULL,
       salary      NUMBER            NULL,
       hire_date   DATE              NULL
);

ALTER TABLE EMP
ADD CONSTRAINTS EMP_PK PRIMARY KEY (emp_no);

-- INSERT ����1
INSERT INTO EMP ( emp_no, emp_name, salary, hire_date)
VALUES (1, 'ȫ�浿', 1000, '2020-06-01');

SELECT *
  FROM emp;

INSERT INTO EMP ( emp_no, emp_name)
VALUES (2, '������');

INSERT INTO EMP ( emp_name, emp_no )
VALUES ('������', 3);

INSERT INTO EMP 
VALUES (4, '�������', 1000, SYSDATE);

INSERT INTO EMP  ( emp_no,  salary, hire_date)
VALUES (5,  1000, SYSDATE);

INSERT INTO EMP  
VALUES (4, '�Ż��Ӵ�', 1000, SYSDATE);

INSERT INTO EMP  
VALUES (5, '�Ż��Ӵ�', 1000, TO_DATE('2020-06-29 19:54:30', 'YYYY-MM-DD HH24:MI:SS'));


-- INSERT ����2

INSERT INTO EMP
SELECT emp_no + 10, emp_name, salary, hire_date
  FROM emp;

TRUNCATE TABLE EMP;


INSERT INTO EMP
SELECT employee_id, first_name || ' ' || last_name, salary, hire_date
FROM EMPLOYEES
WHERE department_id = 90;


INSERT INTO EMP
SELECT employee_id, first_name || ' ' || last_name, salary, hire_date
FROM employees;


CREATE TABLE EMP_INFO1 (
   emp_no          VARCHAR2(30)  NOT NULL,
   emp_name        VARCHAR2(80)  NOT NULL,
   salary          NUMBER            NULL,
   hire_date       DATE              NULL,
   department_name VARCHAR2(80)      NULL,
   country_name    VARCHAR2(80)      NULL
);

INSERT INTO EMP_INFO1
SELECT a.employee_id, 
       a.first_name || ' ' || a.last_name, 
       a.salary, a.hire_date,
       b.department_name,
       d.country_name
  FROM employees a,
       departments b,
       locations c,
       countries d
 WHERE a.department_id = b.department_id
   AND b.location_id   = c.location_id
   AND c.country_id    = d.country_id;


-- INSERT ����3
CREATE TABLE  EMP1 (
       emp_no      VARCHAR2(30)  NOT NULL,
       emp_name    VARCHAR2(80)  NOT NULL,
       salary      NUMBER            NULL,
       hire_date   DATE              NULL,
       dept_id     NUMBER            NULL       
);

ALTER TABLE EMP1
ADD CONSTRAINTS EMP1_PK PRIMARY KEY (emp_no);

CREATE TABLE  EMP2 (
       emp_no      VARCHAR2(30)  NOT NULL,
       emp_name    VARCHAR2(80)  NOT NULL,
       salary      NUMBER            NULL,
       hire_date   DATE              NULL,
       dept_id     NUMBER            NULL       
);

ALTER TABLE EMP2
ADD CONSTRAINTS EMP2_PK PRIMARY KEY (emp_no);

CREATE TABLE  EMP3 (
       emp_no      VARCHAR2(30)  NOT NULL,
       emp_name    VARCHAR2(80)  NOT NULL,
       salary      NUMBER            NULL,
       hire_date   DATE              NULL,
       dept_id     NUMBER            NULL       
);

ALTER TABLE EMP3
ADD CONSTRAINTS EMP3_PK PRIMARY KEY (emp_no);

INSERT ALL
  INTO EMP1 (emp_no, emp_name, salary, hire_date)
    VALUES  (emp_no, emp_name, salary, hire_date)
  INTO EMP2 (emp_no, emp_name, salary, hire_date)
    VALUES  (emp_no, emp_name, salary, hire_date)    
SELECT employee_id emp_no, first_name || ' ' || last_name emp_name, salary, hire_date
  FROM employees;
  
SELECT *
FROM EMP1;

SELECT *
FROM EMP2;

  
TRUNCATE TABLE emp1;
TRUNCATE TABLE emp2;  

INSERT ALL
  INTO EMP1 (emp_no, emp_name, salary, hire_date)
    VALUES  (emp_no, emp_name, salary, hire_date)
  INTO EMP2 (emp_no, emp_name, salary)
    VALUES  (emp_no, emp_name, salary)
  INTO EMP3 (emp_no, emp_name)
    VALUES  (emp_no, emp_name)        
SELECT employee_id emp_no, first_name || ' ' || last_name emp_name, salary, hire_date
  FROM employees;
  
-- INSERT ���� 4-1 
TRUNCATE TABLE emp1;
TRUNCATE TABLE emp2;  
TRUNCATE TABLE emp3;  
 
INSERT ALL
  WHEN dept_id = 20 THEN
    INTO EMP1 (emp_no, emp_name, salary, hire_date, dept_id)
       VALUES (emp_no, emp_name, salary, hire_date, dept_id)
  WHEN dept_id BETWEEN 30 AND 50 THEN        
    INTO EMP2 (emp_no, emp_name, salary, hire_date, dept_id)
       VALUES (emp_no, emp_name, salary, hire_date, dept_id)
  WHEN dept_id > 50 THEN        
    INTO EMP3 (emp_no, emp_name, salary, hire_date, dept_id)
       VALUES (emp_no, emp_name, salary, hire_date, dept_id)
SELECT employee_id emp_no, 
       first_name || ' ' || last_name emp_name, 
       salary, hire_date, department_id dept_id
  FROM employees;
  
  
-- INSERT ���� 4-2
TRUNCATE TABLE emp1;
TRUNCATE TABLE emp2;  
TRUNCATE TABLE emp3;

INSERT ALL
  WHEN salary >= 2500 THEN
    INTO EMP1 (emp_no, emp_name, salary, hire_date, dept_id)
       VALUES (emp_no, emp_name, salary, hire_date, dept_id)
  WHEN salary >= 5000 THEN        
    INTO EMP2 (emp_no, emp_name, salary, hire_date, dept_id)
       VALUES (emp_no, emp_name, salary, hire_date, dept_id)
  WHEN salary >= 7000 THEN        
    INTO EMP3 (emp_no, emp_name, salary, hire_date, dept_id)
       VALUES (emp_no, emp_name, salary, hire_date, dept_id)
SELECT employee_id emp_no, 
       first_name || ' ' || last_name emp_name, 
       salary, hire_date, department_id dept_id
  FROM employees;
  
SELECT MIN(salary), MAX(salary)
FROM EMP1;

SELECT MIN(salary), MAX(salary)
FROM EMP2;

SELECT MIN(salary), MAX(salary)
FROM EMP3;

TRUNCATE TABLE emp1;
TRUNCATE TABLE emp2;  
TRUNCATE TABLE emp3;
  
INSERT FIRST
  WHEN salary >= 2500 THEN
    INTO EMP1 (emp_no, emp_name, salary, hire_date, dept_id)
       VALUES (emp_no, emp_name, salary, hire_date, dept_id)
  WHEN salary >= 5000 THEN        
    INTO EMP2 (emp_no, emp_name, salary, hire_date, dept_id)
       VALUES (emp_no, emp_name, salary, hire_date, dept_id)
  WHEN salary >= 7000 THEN        
    INTO EMP3 (emp_no, emp_name, salary, hire_date, dept_id)
       VALUES (emp_no, emp_name, salary, hire_date, dept_id)
SELECT employee_id emp_no, 
       first_name || ' ' || last_name emp_name, 
       salary, hire_date, department_id dept_id
  FROM employees;  
  
  
SELECT MIN(salary), MAX(salary)
FROM EMP1;

SELECT MIN(salary), MAX(salary)
FROM EMP2;

SELECT MIN(salary), MAX(salary)
FROM EMP3;  
  
-- UPDATE
SELECT *
  FROM EMP;
  
UPDATE emp
   SET salary = 0
 WHERE salary < 20000;


ALTER TABLE emp
ADD retire_date DATE ;

UPDATE emp
   SET retire_date = SYSDATE
 WHERE emp_no = 102;

SELECT *
  FROM EMP;


UPDATE EMP_INFO1 
   SET emp_name = emp_name || '(middle)'
 WHERE salary BETWEEN 10000 AND 20000;
 
SELECT *
  FROM EMP_INFO1
 WHERE INSTR(emp_name, 'middle') > 0 ;
 
SELECT *
  FROM EMP_INFO1
 WHERE INSTR(emp_name, 'middle') > 0 
   AND salary NOT BETWEEN 10000 AND 20000;
     
UPDATE EMP_INFO1
   SET emp_name = emp_name || ' (1)',
       department_name = department_name || ' (1)'
 WHERE hire_date < TO_DATE('2005-01-01', 'YYYY-MM-DD');


SELECT *
  FROM EMP_INFO1
 WHERE INSTR(department_name, '(1)') > 0 ;


SELECT *
  FROM EMP1
 WHERE dept_id IS NULL;
 
 
UPDATE EMP1
   SET dept_id = ( SELECT MAX(department_id)
                     FROM DEPARTMENTS
                    WHERE manager_id IS NULL
                 )
 WHERE dept_id IS NULL;
 
SELECT *
  FROM EMP1
 WHERE emp_no = 178;
 

-- DELETE
SELECT *
  FROM emp;
  
DELETE emp
 WHERE emp_no in (101, 102);
 

DELETE emp1
 WHERE emp_name LIKE 'J%';

SELECT *
  FROM emp1
 ORDER BY emp_name;

  
  
-- 2. Ʈ����� ó�� 
CREATE TABLE emp_tran AS
SELECT *
FROM emp1;


SELECT *
  FROM emp_tran;


DELETE emp_tran 
WHERE dept_id = 90;

COMMIT;

SELECT * FROM emp_tran;

UPDATE emp_tran
   SET emp_name = 'HAHA'
 WHERE dept_id = 60;

ROLLBACK;

SELECT * FROM emp_tran;

  
-- Merge
CREATE TABLE dept_mgr AS
SELECT *
FROM departments;

ALTER TABLE dept_mgr
ADD CONSTRAINTS dept_mgr_pk PRIMARY KEY (department_id);

SELECT *
  FROM dept_mgr;


MERGE INTO dept_mgr a
USING ( SELECT 280 dept_id, '������(Merge)' dept_name
          FROM dual
        UNION ALL
        SELECT 285 dept_id, '�渮��(Merge)' dept_name
          FROM dual
      ) b
  ON ( a.department_id = b.dept_id)
WHEN MATCHED THEN 
UPDATE SET a.department_name = b.dept_name
WHEN NOT MATCHED THEN
INSERT (a.department_id, a.department_name)
VALUES (b.dept_id, b.dept_name);


MERGE INTO dept_mgr a
USING ( SELECT 280 dept_id, '������(Merge)2' dept_name
          FROM dual
        UNION ALL
        SELECT 285 dept_id, '�渮��(Merge)2' dept_name
          FROM dual
      ) b
  ON ( a.department_id = b.dept_id)
WHEN MATCHED THEN 
UPDATE SET a.department_name = b.dept_name
WHEN NOT MATCHED THEN
INSERT (a.department_id, a.department_name)
VALUES (b.dept_id, b.dept_name);


MERGE INTO dept_mgr a
USING ( SELECT 280 dept_id, '������(Merge)3' dept_name
          FROM dual
        UNION ALL
        SELECT 290 dept_id, '������(Merge)' dept_name
          FROM dual
      ) b
  ON ( a.department_id = b.dept_id)
WHEN MATCHED THEN 
UPDATE SET a.department_name = b.dept_name
WHEN NOT MATCHED THEN
INSERT (a.department_id, a.department_name)
VALUES (b.dept_id, b.dept_name);


-- View
SELECT a.employee_id, a.first_name || ' ' || a.last_name emp_names, 
       b.department_id ,b.department_name
  FROM employees a,
       departments b
 WHERE a.department_id = b.department_id
 ORDER BY 1; 
 
 
CREATE OR REPLACE VIEW emp_dept_v AS
SELECT a.employee_id, 
       a.first_name || ' ' || a.last_name emp_names, 
       b.department_id ,b.department_name
  FROM employees a,
       departments b
 WHERE a.department_id = b.department_id
 ORDER BY 1; 
 
SELECT *
  FROM emp_dept_v;
  
CREATE OR REPLACE VIEW emp_dept_v AS
SELECT a.employee_id, 
       a.first_name || ' ' || a.last_name emp_names, 
       a.salary,
       b.department_id ,b.department_name
  FROM employees a,
       departments b
 WHERE a.department_id = b.department_id
 ORDER BY 1;   
 
-- hr2 ����� ����  
CREATE USER hr2 IDENTIFIED BY hr2;
 
-- hr2 ���� ���� �ο� 
GRANT CREATE SESSION TO hr2;

CREATE OR REPLACE VIEW emp_dept_v2 AS
SELECT a.employee_id, 
       a.first_name || ' ' || a.last_name emp_names, 
       b.department_id ,b.department_name
  FROM employees a,
       departments b
 WHERE a.department_id = b.department_id
 ORDER BY 1; 

GRANT SELECT ON emp_dept_v2 TO hr2;

-- hr2 ����ڷ� �α���
SELECT *
  FROM emp_dept_v2;
  

SELECT *
  FROM hr.emp_dept_v2;
  
  
SELECT *
  FROM hr.employees;
  
  
  
-- ������ ��ųʸ�
SELECT *
  FROM user_objects;

SELECT *
  FROM user_tables
 ORDER BY 1;
 
SELECT *
  FROM user_indexes;
  
SELECT *
  FROM user_constraints;    
  
SELECT *
  FROM user_tab_cols
 ORDER BY table_name, column_id ;
 
SELECT ',a.' || column_name
  FROM user_tab_cols
 WHERE table_name = 'EMPLOYEES' 
 ORDER BY column_id ; 
 
-- �ζ��κ� �ǽ�

-- ���λ��
SELECT a.employee_id,
       a.first_name || a.last_name emp_name,
       a.department_id, 
       b.department_name
  FROM employees a,
       departments b
 WHERE a.department_id = b.department_id
 ORDER BY 1;
 
-- �ζ��κ� ���
SELECT a.employee_id,
       a.first_name || a.last_name emp_name,
       a.department_id, 
       c.dept_name
  FROM employees a,
      ( SELECT b.department_id, 
               b.department_name  dept_name
          FROM departments b ) c
 WHERE a.department_id = c.department_id
 ORDER BY 1;
 
 
-- ����
SELECT a.employee_id 
      ,a.first_name || ' ' || a.last_name emp_names
      ,b.job_title ,c.department_name
      ,d.street_address, d.city
      ,e.country_name ,f.region_name
  FROM employees a,
       jobs b,
       departments c,
       locations d,
       countries e,
       regions f
 WHERE a.job_id        = b.job_id
   AND a.department_id = c.department_id
   AND c.location_id   = d.location_id 
   AND d.country_id    = e.country_id
   AND e.region_id     = f.region_id
 ORDER BY 1;  
 

-- �ζ��� ��
SELECT a.employee_id 
      ,a.first_name || ' ' || a.last_name emp_names
      ,b.job_title ,k.department_name
      ,k.street_address, k.city
      ,k.country_name ,k.region_name
  FROM employees a,
       jobs b,
       ( SELECT c.department_id, c.department_name,
                d.street_address, d.city,
                e.country_name, f.region_name
           FROM departments c,
                locations d,
                countries e,
                regions f
          WHERE c.location_id = d.location_id
            AND d.country_id  = e.country_id
            AND e.region_id   = f.region_id
        ) k
 WHERE a.job_id        = b.job_id
   AND a.department_id = k.department_id
 ORDER BY 1;  


-- ����� �޿��� ȸ�� ��ü ��� �޿��� �ش� ����� ���� �μ� ��� �޿��� ��
SELECT a.employee_id, 
       a.first_name || ' ' || a.last_name emp_name, 
       a.salary,
       a.department_id, b.department_name, AVG(a.salary)
  FROM employees a,
       departments b
 WHERE a.department_id = b.department_id
 GROUP BY a.employee_id, 
       a.first_name || ' ' || a.last_name ,
       a.salary,
       a.department_id, b.department_name
 ORDER BY 1  ;
 
-- �μ��� ��� �޿�
SELECT department_id,
       ROUND(AVG(salary),0) dept_avg_sal
  FROM employees
 GROUP BY department_id
 ORDER BY 1;
 
-- ��� ���̺�� �μ��� ��� �޿� ������ ���� ? �������� ���
SELECT a.employee_id, 
       a.first_name || ' ' || a.last_name emp_name, 
       a.department_id, 
       a.salary, b.dept_avg_sal
  FROM employees a,
       ( SELECT department_id,
                ROUND(AVG(salary),0) dept_avg_sal
           FROM employees
          GROUP BY department_id
       ) b   
 WHERE a.department_id = b.department_id
 ORDER BY 1  ;
 
 
-- ȸ�� ��ü �޿� ��յ� ���������� �߰� 
SELECT a.employee_id, 
       a.first_name || ' ' || a.last_name emp_name, 
       a.department_id, 
       a.salary, b.dept_avg_sal,
       c.all_avg_sal
  FROM employees a,
       ( SELECT department_id,
                ROUND(AVG(salary),0) dept_avg_sal
           FROM employees
          GROUP BY department_id
       ) b
      ,( SELECT ROUND(AVG(salary),0) all_avg_sal
           FROM employees  
       ) c    
 WHERE a.department_id = b.department_id
 ORDER BY 1  ;
 
-- ȸ�� ��ü �޿� ��յ� ���������� �߰� 
SELECT a.employee_id, 
       a.first_name || ' ' || a.last_name emp_name, 
       a.department_id, 
       a.salary, b.dept_avg_sal,
       ( SELECT ROUND(AVG(salary),0) 
           FROM employees  
       ) all_avg_sal  
  FROM employees a,
       ( SELECT department_id,
                ROUND(AVG(salary),0) dept_avg_sal
           FROM employees
          GROUP BY department_id
       ) b
 WHERE a.department_id = b.department_id
 ORDER BY 1  ; 
 

-- ����� ���� �μ��� ��� �����͸� ��ȸ�϶�
-- ���1 : �μ�, ��� ���̺��� ����
SELECT a.department_id, a.department_name,
       a.manager_id, a.location_id
  FROM departments a,
       employees b
 WHERE a.department_id = b.department_id
 ORDER BY 1;     
 
-- ��� 2 : �μ� ���̺��� ��� ���̺��� �μ���ȣ�� �ִ� �Ǹ� üũ
SELECT *
  FROM departments 
 WHERE department_id IN ( SELECT department_id
                            FROM employees
                        ) ;
    
    
SELECT *
  FROM departments a
 WHERE EXISTS
           ( SELECT  1
                FROM employees b
             WHERE a.department_id = b.department_id 
          ) ;
    
    
    
SELECT *
  FROM departments a
 WHERE EXISTS ( SELECT 'A'
                  FROM employees b
                 WHERE a.department_id = b.department_id 
                   AND b.salary > 10000
               ) ;    