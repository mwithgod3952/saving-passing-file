CREATE TABLE EMP(
    EMP_NO VARCHAR2(30) NOT NULL, 
    EMP_NAME VARCHAR2(80) NOT NULL,
    SALARY NUMBER NULL,
    HIRE_DATE DATE NULL
);

ALTER TABLE EMP ADD CONSTRAINTS FIRST_TEST_EMP_PK PRIMARY KEY(EMP_NO);

ALTER TABLE EMP ADD TEST_COL VARCHAR2(30) DEFAULT '-' NOT NULL;
ALTER TABLE EMP DROP COLUMN TEST_COL;
ALTER TABLE EMP ADD GENDER CHAR(1) CHECK(GENDER IN('T','F')) NULL;
ALTER TABLE EMP DROP COLUMN GENDER;
ALTER TABLE EMP MODIFY EMP_NAME VARCHAR2(100);
ALTER TABLE EMP RENAME COLUMN EMP_NAME TO EMP_NAME3;

ALTER TABLE EMP RENAME COLUMN EMP_NAME3 TO EMP_NAME;
DROP TABLE EMP;

COMENT ON TABLE EMP IS '�������';
COMENT ON COLUMN EMP_NO IS '���';
COMENT ON COLUMN EMP_NAME IS '�̸�';
COMENT ON COLUMN SALAY IS '���';
COMENT ON COLUMN HIRE_DATE IS '�Ի糯¥'

-- ���� : DROP�� ���̺��� ���������� �����ϴ� ����̱� ������ DESC�����δ� ���̺��� �о�帱 �� ���Եȴ�.
DESC DEPT_TABLE;
DROP TABLE EMP;

-- 20,11,18 ����
CREATE TABLE DEPT_TABLE(
    DEPT_NO NUMBER NOT NULL,
    DEPT_NAVER VARCHAR2(50) NOT NULL,
    DEPT_DESC VARCHAR2(100) NULL,
    CREATE_DATE DATE NULL
);    
ALTER TABLE DEPT_TABLE ADD DEPT_DESC1 VARCHAR(80) NULL;
ALTER TABLE DEPT_TABLE DROP COLUMN DEPT_DESC1;
ALTER TABLE DEPT_TABLE ADD CONSTRAINTS DEPT_TEST_PK PRIMARY KEY(DEPT_NO);

-- TEST 2 ONPEN TABLE�� ����
SELECT * FROM EMPLOYEES;
-- ������ �Ӽ� ��, ������ ���ٴ� ������ ū �� ����. SELECT�� �����ؼ� �����ϴ� ��!!
DESC EMPLOYEES;
-- 1
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES;
-- 2 
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID>100 AND 
JOB_ID='ST_CLERK';

-- �����δ� employee_id cloumn �� ���� ����������� alias �� Ȱ���Ͽ� ���� ���ϴ� column ������ ���ϴ� �� �Ǵ� ������ ������� ���÷��� �� �� �ִ�.
select employee_id emp_no from employees;
select 'A'||'b' first_col,'c'||'d'||'f' second_col from dual;

-- 20.11.23 �Լ��� ���� 
select sysdate from dual;

SELECT SYSDATE
    ,ROUND(SYSDATE, 'YYYY') Years
    ,ROUND(SYSDATE, 'MM') Months
    ,ROUND(SYSDATE, 'DD') Days
    ,ROUND(SYSDATE, 'HH24') Hours
    ,ROUND(SYSDATE, 'MI') Minutes
    ,ROUND(SYSDATE) DFAULT
FROM DUAL; 

-- Self Q / ++ �� �ܿ��� �� �� �� ����� ���� �� ���ε�, �⺻������ DML SELECT �� ���� ���� ���� �� � ��Ű�� �� COL�� �����Ѵ��� ������ �´��� Ȯ�� �� �ʿ� ����
-- DML SELECT �� WHEN OR CALSE ������ �԰� ����ϴ� ��쿡 ���� ������ �� �ʿ䰡 ����( Stack over flow ������ ���캼 �� ) **
SELECT 
    CONCAT(SYSDATE, 'To check the information today') Test_Clolumn 
FROM DUAL;

select * from departments;
select * from Employees;

-- T
SELECT DEPARTMENT_NAME FROM DEPARTMENTS;

/*
CREATE OR REPLACE FUNCTION GET_TEST_FU(RAN_NUM NUMBER)
RETURN VARCHAR2
IS
T_FUNC VARCHAR2(80);
BEGIN
SELECT DEPARTMENT_NAME
INTO T_FUNC
FROM DEPARTMENTS
WHERE department_id = RAN_NUM;

RETURN T_FUNC;
END;
*/

-- 2020.12.07
select * from Titanic;
select * from user_objects;
