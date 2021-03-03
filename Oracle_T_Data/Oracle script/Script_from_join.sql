-- 20.11.30 JOIN 
-- Preview of View_ WHY IM LEARNING_ View Table is particular table able to 'join' 
/* 
: A view is a virtual table based on the result-set of an SQL statement.
: The fields in a view are field from one or more real tables in the database.
*/
SELECT * FROM DEPARTMENTS;
SELECT * FROM Manager_Location_ID; 

CREATE VIEW Manager_Location_ID AS
SELECT MANAGER_ID, LOCATION_ID
FROM DEPARTMENTS RNADV
WHERE RNADV.MANAGER_ID >= 100;

/*
Inner Join
Standard case
*/
CREATE VIEW CK_OB AS 
SELECT 
    A.EMPLOYEE_ID,     
    A.FIRST_NAME||' _ '||A.LAST_NAME EMP_NAME,
    A.DEPARTMENT_ID,
    B.DEPARTMENT_NAME
FROM
    EMPLOYEES A,
    DEPARTMENTS B
WHERE 
    A.DEPARTMENT_ID = B.DEPARTMENT_ID
ORDER BY 
    A.DEPARTMENT_ID;

SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;

/*
Inner Join
Case 1
*/
SELECT * FROM CK_OB;
-- EMPLOYEES_ID_178_EMPTY 
SELECT *
FROM 
    CK_OB
WHERE
    EMPLOYEE_ID = 178;
/*
Inner Join from 3 tables 
Table INFO CK
*/
SELECT * FROM EMPLOYEES;
SELECT COUNT(*) EMPC FROM EMPLOYEES;
--GROUP BY
--    EMPLOYEE_ID;

SELECT * FROM JOBS;
SELECT COUNT(*) JOBSC FROM JOBS;

SELECT * FROM DEPARTMENTS;
SELECT COUNT(*) DEPARTMENTC FROM DEPARTMENTS;

-- SELECT A.EMPC, B.JOBSC FROM EMPLOYEES A, JOBS B;
/*
  ***  pending ***
CREATE TABLE CUT_T(
    CUT_T1 NUMBER NOT NULL,
    CUT_T2 NUMBER NOT NULL,
    CUT_T3 NUMBER NOT NULL
);

INSERT INTO CUT_T.CUT_T1
    VALUES((SELECT COUNT(employees.phone_number) FROM EMPLOYEES));   
--    SELECT COUNT(EMPLOYEES.EMPLOYEE_ID) FROM EMPLOYEES;


ALTER TABLE CUT_T MODIFY CUT_T1 NUMBER;
ALTER TABLE CUT_T MODIFY CUT_T2 NUMBER;
ALTER TABLE CUT_T MODIFY CUT_T3 NUMBER;

DROP TABLE CUT_T 
*/ 

SELECT * FROM EMPLOYEES;
SELECT * FROM JOBS;
SELECT * FROM DEPARTMENTS;
--
SELECT COUNT(*) FROM EMPLOYEES;
SELECT COUNT(*) FROM JOBS;
SELECT COUNT(*) FROM DEPARTMENTS;
-- T_VIEW TABLE OF Multiple_T
SELECT COUNT(*) FROM Multiple_T;

CREATE VIEW Multiple_T AS
SELECT
    AA.EMPLOYEE_ID, AA.FIRST_NAME||''||AA.LAST_NAME EMPN_NAME,
    BB.JOB_TITLE,
    CC.DEPARTMENT_ID||'-'||CC.DEPARTMENT_NAME DPT_ID_INFO
FROM 
    EMPLOYEES AA,
    JOBS BB,
    DEPARTMENTS CC
WHERE
    AA.JOB_ID = BB.JOB_ID 
    AND AA.DEPARTMENT_ID = CC.DEPARTMENT_ID
ORDER BY 1;




FROM 
    EMPLOYEES A
    JOBS B
    DEPARTMENTS C;


-- Test Phrase
select a.employee_id,
    a.first_name||''||a.last_name emp_names_Created_FullName,
    b.department_id, b.department_name
from employees a,
departments b
where a.department_id(+) = b.department_id
order by 1;

-- Self Join
SELECT * FROM EMPLOYEES;
-- QUIZ

SELECT * FROM ORDERS;
SELECT * FROM CUSTOMERS;
SELECT * FROM STORES;
SELECT * FROM STAFFS;

SELECT 

FROM ORDERS a
CUSTOMERS b
where a.customer_id = b.customer_id(+)
order by 1;

/*
-- Q6
select
    d.fist_name||''||d.last_name staff_name
from 
    orders a,
    customers b,
    stores c,
    staffs d
where 
    a.order_date between to_date('20180101','yyyymmdd') and to_date('20180131','yyyymmdd')
    and a.customer_id = b.customer_id
    and a.store_id = c.store_id
    and a.staff_id = d.staff_id
order by 2,3;
*/