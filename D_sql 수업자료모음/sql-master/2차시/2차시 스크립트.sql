--2-1 
-- ���̺� ����
CREATE TABLE  EMP (
       emp_no      VARCHAR2(30)  NOT NULL,
       emp_name    VARCHAR2(80)  NOT NULL,
       salary      NUMBER            NULL,
       hire_date   DATE              NULL
);


-- emp ���̺� ���� ��ȸ
DESC EMP;

--emp_name �÷� ũ�⸦  80���� 100���� ���� 
ALTER TABLE emp 
MODIFY EMP_NAME VARCHAR2(100);

-- �÷� �߰� 
ALTER TABLE emp
ADD EMP_NAME2  VARCHAR2(80);

-- �÷��� ����
ALTER TABLE emp
RENAME COLUMN EMP_NAME2 TO EMP_NAME3;

-- �÷� ���� 
ALTER TABLE emp
DROP COLUMN EMP_NAME3;

-- emp ���̺� ���� ��ȸ
DESC EMP;

-- emp ���̺� ���� 
DROP TABLE emp;

-- emp ���̺� ���� Ȯ�� 
DESC EMP;

-- ���̺� ���� �� PK ����1
CREATE TABLE  EMP (
       emp_no      VARCHAR2(30)  PRIMARY KEY, 
       emp_name    VARCHAR2(80)  NOT NULL,
       salary      NUMBER            NULL,
       hire_date   DATE              NULL
);

-- ���̺� ���� �� PK ����2
CREATE TABLE  EMP2 (
       emp_no      VARCHAR2(30)  , 
       emp_name    VARCHAR2(80)  NOT NULL,
       salary      NUMBER            NULL,
       hire_date   DATE              NULL,
       PRIMARY KEY (emp_no)
);


-- alter table �� ���  
 CREATE TABLE  EMP3 (
       emp_no      VARCHAR2(30)  ,
       emp_name    VARCHAR2(80)  NOT NULL,
       salary      NUMBER            NULL,
       hire_date   DATE              NULL
       );


ALTER TABLE EMP3
ADD CONSTRAINTS EMP3_PK PRIMARY KEY ( EMP_NO );

-- ����, ����, ���� �ǽ�
CREATE TABLE DEPT_TEST (
       dept_no      NUMBER        NOT NULL,
       dept_name    VARCHAR2(50)  NOT NULL,
       dept_desc    VARCHAR2(100)     NULL,
       create_date  DATE 
);

-- ���̺� ���� Ȯ��
DESC DEPT_TEST;

-- DEPT_DESC1 �÷� �߰�
ALTER TABLE DEPT_TEST
ADD COLUMN DEPT_DESC1 VARCHAR2(80);

-- DEPT_DESC1 �÷� ����
ALTER TABLE DEPT_TEST
DROP COLUMN DEPT_DESC1 ;

-- DEPT_TEST_PK �� �̸����� PK ����
ALTER TABLE DEPT_TEST
ADD CONSTRAINTS DEP_TEST_PK PRIMARY KEY ( DEPT_NO);


-- DEPT_TEST ���̺� ���� 
DROP TABLE DEPT_TEST;

-----------------------------------------------------------------------------------------------------

-- SELECT �ǽ�

-- employees ���̺� ��ȸ  
SELECT *
FROM EMPLOYEES;

-- employees ���̺� layout  
DESC EMPLOYEES;

-- employees ���̺� �Ϻ��÷� ��ȸ  
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES;


-- departmemts ���̺� ��ȸ
SELECT *
  FROM departments;
  
  

-- WHERE �� �ǽ�
-- ����� 100���� ��� ��ȸ 
SELECT *
  FROM EMPLOYEES
 WHERE EMPLOYEE_ID = 100;

-- ����� 100���� �ƴ� ��� ��ȸ1
SELECT *
  FROM EMPLOYEES
 WHERE EMPLOYEE_ID <> 100;
 
-- ����� 100���� �ƴ� ��� ��ȸ12
 SELECT *
  FROM EMPLOYEES
 WHERE EMPLOYEE_ID != 100;
 
-- ����� 100���� ũ�� JOB_ID�� ST_CLERK�� ��� ��ȸ 
SELECT *
  FROM EMPLOYEES
 WHERE EMPLOYEE_ID > 100
   AND JOB_ID = 'ST_CLERK';
 
-- �޿��� 5000 �̻��� ��� ��ȸ
SELECT *
  FROM EMPLOYEES
 WHERE SALARY >= 5000;
 
-- �޿��� 5000 �̻��� ����� ����� �̸�, �޿��� ��ȸ 
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY
  FROM EMPLOYEES
 WHERE SALARY >= 5000;
 
-- �޿��� 2400 �����̰� 20000 �̻��� ��� ��ȸ  
SELECT *
  FROM employees
 WHERE salary <= 2400
    OR salary >= 20000; 
    
    
-- last_name�� grant�� ��� ��ȸ 
SELECT *
  FROM employees
 WHERE last_name = 'grant' ;
 
-- last_name�� Grant�� ��� ��ȸ  
SELECT *
  FROM employees
 WHERE last_name = 'Grant' ;

    
   
-- ORDER BY �� �ǽ�     
-- ��� ������ ����
SELECT *
FROM employees
ORDER BY employee_id;

-- ��� �������� ����
SELECT *
FROM employees
ORDER BY employee_id DESC;

-- �̸�, �� ������ �������� ����
SELECT *
FROM employees
ORDER BY first_name, last_name
;

-- �̸��� ��������, ���� ������������ ����
SELECT employee_id, first_name, last_name
FROM employees
ORDER BY first_name, last_name desc
;


SELECT employee_id, first_name, last_name, salary
  FROM employees
 WHERE salary >= 5000
 ORDER BY salary desc;


-- ���ڸ� ����� ����1 
SELECT *
FROM employees
ORDER BY 2, 3 DESC
;


-- ���ڸ� ����� ����2 
SELECT employee_id, first_name, last_name, email
FROM employees
ORDER BY 2, 3, 5;

-- ���ڸ� ����� ����3
SELECT employee_id, first_name, last_name, email
FROM employees
ORDER BY 2, 3, phone_number;


-- commission_pct �÷����� �������� ����
SELECT employee_id, first_name, last_name, commission_pct
FROM employees
ORDER BY commission_pct;


-- commission_pct �÷����� �������� ����
SELECT employee_id, first_name, last_name, commission_pct
FROM employees
ORDER BY commission_pct DESC;


-- ������ �ǽ�
-- ���ϱ�, ����
SELECT 1+1 plus_test, 1-1 minus_test
  FROM DUAL;

-- ���ϱ�, ������  
SELECT 1+1*3 multiply, 7-4/2 divide
  FROM DUAL;  

-- ��ȣ  
SELECT (1+1)*3 multiply, (7-4)/2 divide
  FROM DUAL;  
  
-- ���ڿ� ����
SELECT 'A' || 'B', 'C' || 'D' || 'F'
  FROM DUAL;  
  
-- ���ڿ� ���� ��� ��
SELECT first_name || ' ' || last_name full_name
FROM employees;

-- ���ϱ�, ����
SELECT 1+1 plus_test, 1-1 minus_test
  FROM DUAL;

--  ���ϱ�, ������  
SELECT 1+1*3 multiply, 7-4/2 divide
  FROM DUAL;  

-- ��ȣ  
SELECT (1+1)*3 multiply, (7-4)/2 divide
  FROM DUAL;  
  
-- ���ڿ� ����
SELECT 'A' || 'B', 'C' || 'D' || 'F'
  FROM DUAL;  
  
-- ���ڿ� ���� ��� ��
SELECT first_name || ' ' || last_name full_name
FROM employees;

-- �񱳿�����
-- �������
SELECT *
  FROM employees
 WHERE salary = 2500;
 
-- �񵿵����
SELECT *
  FROM employees
 WHERE salary != 2500;
 
 SELECT *
  FROM employees
 WHERE salary <> 2500;
 
-- �ε�ȣ ������1
 SELECT *
  FROM employees
 WHERE salary > 3000 
 ORDER BY salary;
 
--  �ε�ȣ ������2
 SELECT *
  FROM employees
 WHERE salary >= 3000 
 ORDER BY salary; 
 
-- �ε�ȣ ������3
SELECT *
  FROM employees
 WHERE salary < 3000 
 ORDER BY salary desc; 
 
--  �ε�ȣ ������4
SELECT *
  FROM employees
 WHERE salary <= 3000 
 ORDER BY salary desc;  
 
-- �ε�ȣ ������5
SELECT *
  FROM employees
 WHERE salary >= 3000 
   AND salary <= 5000
 ORDER BY salary ;  
 
-- between and  ������  
SELECT *
  FROM employees
 WHERE salary BETWEEN 3000 AND 5000
 ORDER BY salary ;   
 
-- not ������   
SELECT *
  FROM employees
 WHERE NOT (salary = 2500 )
 ORDER BY salary 
 ; 
 
-- null ��
-- null ��1
 SELECT *
  FROM employees
 WHERE commission_pct = NULL;
 
-- null ��2
SELECT *
  FROM employees
 WHERE commission_pct IS NULL;

-- null ��3
SELECT *
  FROM employees
 WHERE commission_pct IS NOT NULL; 
 
-- LIKE ������1
SELECT *
  FROM employees
 WHERE phone_number LIKE '011%';
 
-- 2-3-24. LIKE ������2
SELECT *
  FROM employees
 WHERE phone_number LIKE '%9'; 
 
-- LIKE ������3
SELECT *
  FROM employees
 WHERE phone_number LIKE '%124%';
 
-- IN ������1
SELECT *
  FROM employees
 WHERE JOB_ID IN ('IT_PROG', 'AD_VP', 'FI_ACCOUNT');
 
-- IN ������2
SELECT *
  FROM employees
 WHERE JOB_ID NOT IN ('IT_PROG', 'AD_VP', 'FI_ACCOUNT');
 

-- CASE
SELECT *
FROM regions;

SELECT *
FROM countries;

-- �ܼ��� CASE 
SELECT country_id
      ,country_name
      ,CASE region_id WHEN 1 THEN '����'
                      WHEN 2 THEN '�Ƹ޸�ī'
                      WHEN 3 THEN '�ƽþ�'
                      WHEN 4 THEN '�ߵ� �� ������ī'
       END region_name
FROM countries;

-- �˻��� CASE1
SELECT employee_id, first_name, last_name, salary, job_id
      ,CASE WHEN salary BETWEEN 1     AND 5000  THEN '����'
            WHEN salary BETWEEN 5001  AND 10000 THEN '�߰�'
            WHEN salary BETWEEN 10000 AND 15000 THEN '����'
            ELSE '�ֻ���'
       END salary_rank     
FROM employees;

-- �˻��� CASE2
SELECT employee_id, first_name, last_name, salary, job_id
      ,CASE WHEN salary BETWEEN 1     AND 5000  THEN '����'
            WHEN salary BETWEEN 5001  AND 10000 THEN '�߰�'
            WHEN salary BETWEEN 10000 AND 15000 THEN '����'
            ELSE 9
       END salary_rank     
FROM employees;

-- �˻��� CASE3
SELECT employee_id, first_name, last_name, salary, job_id
      ,CASE WHEN salary BETWEEN 1     AND 5000  THEN 1
            WHEN salary BETWEEN 5001  AND 10000 THEN 2
            WHEN salary BETWEEN 10000 AND 15000 THEN 3
            ELSE 9
       END salary_rank     
FROM employees;

-- rownum 1
SELECT employee_id, first_name, last_name, rownum
FROM employees;

--  rownum 2
SELECT employee_id, first_name, last_name, rownum
FROM employees
WHERE rownum <= 5;