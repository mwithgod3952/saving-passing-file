-- ��Į�� �������� 

-- 1
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       a.department_id, 
       ( SELECT b.department_name
           FROM departments b
          WHERE a.department_id = b.department_id ) dept_name
  FROM employees a
 ORDER BY 1;
 
-- 2
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       a.department_id, 
       ( SELECT b.department_name
           FROM departments b
       ) dept_name
  FROM employees a
 ORDER BY 1;
 

-- 3
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       a.department_id, 
       ( SELECT b.department_name, b.location_id
           FROM departments b
          WHERE a.department_id = b.department_id ) dept_name
  FROM employees a
 ORDER BY 1; 
 
-- 4
SELECT a.employee_id, 
       a.first_name || ' ' || a.last_name emp_names, a.job_id
      ,( SELECT b.job_title || '(' || b.job_id || ')'
           FROM jobs b
          WHERE a.job_id = b.job_id ) job_names
FROM employees a
ORDER BY 1;

-- 5-1
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       a.department_id, 
       b.department_name
  FROM employees a,
       departments b
 WHERE a.department_id = b.department_id   
 ORDER BY 1;

-- 5-2
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       a.department_id, 
       ( SELECT b.department_name
           FROM departments b
          WHERE a.department_id = b.department_id ) dept_name
  FROM employees a
 ORDER BY 1;
 
-- 6
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       a.department_id, 
       ( SELECT b.department_name
           FROM departments b
          WHERE a.department_id = b.department_id 
       ) dept_name,
       ( SELECT d.country_name
           FROM departments b
               ,locations c
               ,countries d
          WHERE a.department_id = b.department_id 
            AND b.location_id = c.location_id
            AND c.country_id = d.country_id
        ) country_name
             
  FROM employees a
 ORDER BY 1;

 
-- �ζ��� ��
-- 1
SELECT a.employee_id,
       a.first_name || a.last_name emp_name,
       a.department_id, 
       c.dept_name
FROM employees a,
    ( SELECT b.department_id, 
             b.department_name  dept_name
        FROM departments b 
    ) c
WHERE a.department_id = c.department_id
ORDER BY 1;
 
-- 2 
SELECT a.employee_id,
       a.first_name || a.last_name emp_name,
       a.department_id, 
       c.dept_name
FROM employees a,
    ( SELECT b.department_id, 
             b.department_name  dept_name
        FROM departments b
       WHERE a.department_id = b.department_id
    ) c
ORDER BY 1; 
  
-- 3 
SELECT a.employee_id,
       a.first_name || a.last_name emp_name,
       a.department_id, 
       c.dept_name
FROM employees a,
     LATERAL ( SELECT b.department_id, 
                      b.department_name  dept_name
                FROM departments b
               WHERE a.department_id = b.department_id
             ) c
  ORDER BY 1;   

-- 4
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       dept.department_name,
       loc.street_address, loc.city, loc.country_name
FROM employees a
   ,( SELECT *
        FROM departments b ) dept
   ,( SELECT l.location_id, l.street_address, 
             l.city, c.country_name
        FROM locations l,
             countries c
       WHERE l.country_id = c.country_id 
     ) loc
 WHERE a.department_id = dept.department_id
   AND dept.location_id = loc.location_id
 ORDER BY 1;   
             
             
-- 5
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       dept_loc.department_name,
       dept_loc.street_address, dept_loc.city, 
       reg.country_name, reg.region_name
FROM employees a
   ,( SELECT b.department_id, b.department_name,
             l.street_address, l.city, l.country_id
        FROM departments b,
             locations l
       WHERE b.location_id = l.location_id
     ) dept_loc
   ,( SELECT c.country_id, c.country_name,
             r.region_name
        FROM countries c,
             regions r
       WHERE c.region_id = r.region_id 
         AND c.country_id = dept_loc.country_id
     ) reg
 WHERE a.department_id = dept_loc.department_id
 ORDER BY 1;
 
 
-- 6
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       dept_loc.department_name,
       dept_loc.street_address, dept_loc.city, 
       reg.country_name, reg.region_name
FROM employees a
   ,( SELECT b.department_id, b.department_name,
             l.street_address, l.city, l.country_id
        FROM departments b,
             locations l
       WHERE b.location_id = l.location_id
     ) dept_loc
   ,LATERAL ( SELECT c.country_id, c.country_name,
             r.region_name
        FROM countries c,
             regions r
       WHERE c.region_id = r.region_id 
         AND c.country_id = dept_loc.country_id
     ) reg
 WHERE a.department_id = dept_loc.department_id
 ORDER BY 1; 
          
-- 7
SELECT a.department_id, a.last_name, a.salary,
       k.department_id second_dept_id,
       k.avg_salary 
  FROM employees a,
      ( SELECT b.department_id, AVG(b.salary) avg_salary
          FROM employees b
         GROUP BY b.department_id
      ) k
 WHERE a.department_id = k.department_id     
ORDER BY a.department_id;       
          
-- ��ø ��������
-- 1
SELECT *
  FROM departments 
 WHERE department_id IN ( SELECT department_id
                            FROM employees
                        ) ;

-- 2
SELECT *
  FROM departments a
 WHERE EXISTS ( SELECT  1
                  FROM employees b
                 WHERE a.department_id = b.department_id 
              ) ;

-- 3
SELECT *
  FROM departments a
 WHERE EXISTS ( SELECT 'A'
                  FROM employees b
                 WHERE a.department_id = b.department_id
                   AND b.salary > 10000 );

-- 4                   
SELECT employee_id,
       first_name || ' ' || last_name emp_name,
       job_id, 
       salary
  FROM employees 
 WHERE (job_id, salary ) IN ( SELECT job_id, min_salary
                                FROM jobs)
ORDER BY 1;                            

-- 5
SELECT last_name, employee_id
      ,salary + NVL(commission_pct, 0) tot_salary
      ,job_id, e.department_id
  FROM employees e
      ,departments d
WHERE e.department_id = d.department_id
  AND salary + NVL(commission_pct,0) > ( SELECT salary + NVL(commission_pct,0)
                                           FROM employees
                                          WHERE last_name = 'Pataballa')
ORDER BY last_name, employee_id;

-- 6
SELECT department_id, employee_id, last_name, salary
  FROM employees a
 WHERE salary > (SELECT AVG(salary)
                   FROM employees b
                  WHERE a.department_id = b.department_id)
ORDER BY department_id;



SELECT department_id, employee_id, last_name, salary
  FROM employees a
ORDER BY department_id;

SELECT department_id, AVG(salary)
  FROM employees b
 GROUP BY department_id
 ORDER BY 1;



------------------------------------------------------------

-- ��������
-- 1. IN ������ ���
SELECT *
  FROM employees a
 WHERE a.employee_id IN ( SELECT employee_id
                            FROM job_history )
 ORDER BY 1;
            
-- 2. Exists ������ ���                            
SELECT *
  FROM employees a
 WHERE EXISTS ( SELECT 0
                 FROM job_history  b
                WHERE a.employee_id = b.employee_id)
 ORDER BY 1;                                           

-- ��Ƽ����
SELECT a.employee_id, 
       a.first_name || ' ' || a.last_name
  FROM employees a
 WHERE a.employee_id NOT IN ( SELECT employee_id
                                FROM job_history )
 ORDER BY 1;

SELECT a.employee_id, 
       a.first_name || ' ' || a.last_name
  FROM employees a
 WHERE NOT EXISTS ( SELECT 0
                      FROM job_history  b
                     WHERE a.employee_id = b.employee_id)
 ORDER BY 1; 


--------------------------------------------------------------------
-- �پ��� ������ �������� 

SELECT last_name, employee_id
      ,salary + NVL(commission_pct, 0)
      ,job_id, e.department_id
  FROM employees e
      ,departments d
WHERE e.department_id = d.department_id
  AND salary + NVL(commission_pct,0) > ( SELECT salary + NVL(commission_pct,0)
                                           FROM employees
                                          WHERE last_name = 'Pataballa')
ORDER BY last_name, employee_id;


-- WITH ��
-- 1
WITH dept AS (
SELECT department_id, 
       department_name  dept_name
  FROM departments 
)
SELECT a.employee_id
      ,a.first_name || ' ' || a.last_name
  FROM employees a,
       dept b
 WHERE a.department_id = b.department_id
ORDER BY 1;       

 
-- 2
WITH dept_loc AS (
SELECT a.department_id, a.department_name dept_name,
       b.location_id, b.street_address, 
       b.city, b.country_id
  FROM departments a,
       locations b 
 WHERE a.location_id = b.location_id
),
cont AS (
SELECT b.department_id, b.dept_name, 
       b.street_address, b.city, a.country_name
  FROM countries a,
       dept_loc b
 WHERE a.country_id = b.country_id
)
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       b.dept_name, b.street_address,
       b.country_name
  FROM employees a,
       cont b
 WHERE a.department_id = b.department_id
 ORDER BY 1;       
        

-- 3
WITH emp_info AS (
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       b.department_id, b.department_name dept_name,
       c.street_address, c.city,
       d.country_name, e.region_name
  FROM employees a,
       departments b,
       locations c,
       countries d,
       regions e 
 WHERE a.department_id = b.department_id
   AND b.location_id   = c.location_id
   AND c.country_id    = d.country_id
   AND d.region_id     = e.region_id
)
SELECT *
  FROM emp_info
 ORDER BY 1;   


-- 4
WITH coun_sal AS (
SELECT c.country_id, SUM(a.salary) sal_amt
  FROM employees a,
       departments b,
       locations c
 WHERE a.department_id = b.department_id 
   AND b.location_id = c.location_id
GROUP BY c.country_id ),
mains AS (
SELECT b.country_name, a.sal_amt
  FROM coun_sal a,
       countries b
 WHERE a.country_id = b.country_id       
)
SELECT *
  FROM mains
 ORDER BY 1;     
 
-- Top N Query
-- 1 
SELECT *
FROM ( SELECT a.employee_id,
              a.first_name || ' ' || a.last_name emp_name,
              a.salary
         FROM employees a
        ORDER BY a.salary DESC
     ) b
WHERE ROWNUM <= 5; 

-- 2
SELECT *
FROM ( SELECT a.employee_id,
              a.first_name || ' ' || a.last_name emp_name,
              a.salary,
              ROW_NUMBER() OVER (ORDER BY a.salary DESC) ROW_SEQ
         FROM employees a
     ) b
WHERE ROW_SEQ <= 5;

-- 3
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       a.salary
  FROM employees a
 ORDER BY a.salary DESC
 FETCH FIRST 5 ROWS ONLY;
 
 
-- 4
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       a.salary
  FROM employees a
 FETCH FIRST 5 ROWS ONLY;
 
             
-- 5
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       a.salary
  FROM employees a
 ORDER BY a.salary DESC  
 FETCH FIRST 5 PERCENT ROWS ONLY;
 
 
-- 6
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       a.salary
  FROM employees a
 ORDER BY a.salary   
 FETCH FIRST 5 PERCENT ROWS ONLY;
 
-- 7
SELECT a.employee_id,
       a.first_name || ' ' || a.last_name emp_name,
       a.salary
  FROM employees a
 ORDER BY a.salary   
 FETCH FIRST 5 PERCENT ROWS WITH TIES;
 
 
-- SQL ó������ 
-- 1
WITH coun_sal AS ( /*+ gather_plan_statistics */
SELECT c.country_id, SUM(a.salary) sal_amt
  FROM employees a,
       departments b,
       locations c
 WHERE a.department_id = b.department_id 
   AND b.location_id = c.location_id
GROUP BY c.country_id ),
mains AS (
SELECT b.country_name, a.sal_amt
  FROM coun_sal a,
       countries b
 WHERE a.country_id = b.country_id       
)
SELECT *
  FROM mains
 ORDER BY 1;
 
 
-- 2
SELECT /*+ gather_plan_statistics */
       d.country_name, SUM(a.salary) sal_amt
  FROM employees a,
       departments b,
       locations c, 
       countries d
 WHERE a.department_id = b.department_id 
   AND b.location_id = c.location_id
   AND c.country_id = d.country_id
GROUP BY d.country_name
ORDER BY 1;

 
SELECT *
FROM V$SQL 
WHERE sql_text LIKE '%gather%'
;


select *
from table(dbms_xplan.display_cursor ( 'gx8yap8azwk86', null, 'ADVANCED ALLSTATS LAST'));


-- 3
SELECT /*+ gather_plan_statistics */
       -- hong123
       a.employee_id, 
       a.first_name || ' ' || a.last_name emp_name,
       b.department_id, b.department_name dept_name
  FROM employees a,
       departments b
 WHERE a.department_id = b.department_id      
 ORDER BY 1; 
 
SELECT * -- 9f725pnmu4zcq
FROM V$SQL 
WHERE sql_text LIKE '%hong123%'
; 
 
 
select *
from table(dbms_xplan.display_cursor ( '9f725pnmu4zcq', null, 'ADVANCED ALLSTATS LAST'));
 
 
-- �ο츦 �÷����� 
CREATE TABLE score_table (
       YEARS     VARCHAR2(4),   -- ����
       GUBUN     VARCHAR2(30),  -- ����(�߰�/�⸻)
    SUBJECTS     VARCHAR2(30),  -- ����
       SCORE     NUMBER );      -- ���� 
       
       
INSERT INTO score_table VALUES('2020','�߰����','����',92);
INSERT INTO score_table VALUES('2020','�߰����','����',87);
INSERT INTO score_table VALUES('2020','�߰����','����',67);
INSERT INTO score_table VALUES('2020','�߰����','����',80);
INSERT INTO score_table VALUES('2020','�߰����','����',93);
INSERT INTO score_table VALUES('2020','�߰����','���Ͼ�',82);
INSERT INTO score_table VALUES('2020','�⸻���','����',88);
INSERT INTO score_table VALUES('2020','�⸻���','����',80);
INSERT INTO score_table VALUES('2020','�⸻���','����',93);
INSERT INTO score_table VALUES('2020','�⸻���','����',91);
INSERT INTO score_table VALUES('2020','�⸻���','����',89);
INSERT INTO score_table VALUES('2020','�⸻���','���Ͼ�',83);
COMMIT;       


SELECT *
  FROM score_table;
  
  
SELECT years,
       gubun,
       CASE WHEN subjects = '����'   THEN score ELSE 0 END "����",
       CASE WHEN subjects = '����'   THEN score ELSE 0 END "����",
       CASE WHEN subjects = '����'   THEN score ELSE 0 END "����",
       CASE WHEN subjects = '����'   THEN score ELSE 0 END "����",
       CASE WHEN subjects = '����'   THEN score ELSE 0 END "����",
       CASE WHEN subjects = '���Ͼ�' THEN score ELSE 0 END "���Ͼ�"
 FROM score_table a;  
 
 
 
SELECT years, gubun,
       SUM(����) AS ����, SUM(����) AS ����, SUM(����) AS ����,
       SUM(����) AS ����, SUM(����) AS ����, SUM(���Ͼ�) AS ���Ͼ�
 FROM (
       SELECT years, gubun,       
              CASE WHEN subjects = '����'   THEN score ELSE 0 END "����",
              CASE WHEN subjects = '����'   THEN score ELSE 0 END "����",
              CASE WHEN subjects = '����'   THEN score ELSE 0 END "����",
              CASE WHEN subjects = '����'   THEN score ELSE 0 END "����",
              CASE WHEN subjects = '����'   THEN score ELSE 0 END "����",
              CASE WHEN subjects = '���Ͼ�' THEN score ELSE 0 END "���Ͼ�"
        FROM score_table a
     )
  GROUP BY years, gubun;
  
  
SELECT years, gubun,
       SUM(����) AS ����, SUM(����) AS ����, SUM(����) AS ����,
       SUM(����) AS ����, SUM(����) AS ����, SUM(���Ͼ�) AS ���Ͼ�
 FROM (
       SELECT years, gubun,       
              DECODE(subjects,'����',score,0) "����",
              DECODE(subjects,'����',score,0) "����",
              DECODE(subjects,'����',score,0) "����",
              DECODE(subjects,'����',score,0) "����",
              DECODE(subjects,'����',score,0) "����",
              DECODE(subjects,'���Ͼ�',score,0) "���Ͼ�"
        FROM score_table a
     )
  GROUP BY years, gubun;  
  
  
WITH mains AS ( SELECT years, gubun,
                       CASE WHEN subjects = '����'   THEN score ELSE 0 END "����",
                       CASE WHEN subjects = '����'   THEN score ELSE 0 END "����",
                       CASE WHEN subjects = '����'   THEN score ELSE 0 END "����",
                       CASE WHEN subjects = '����'   THEN score ELSE 0 END "����",
                       CASE WHEN subjects = '����'   THEN score ELSE 0 END "����",
                       CASE WHEN subjects = '���Ͼ�' THEN score ELSE 0 END "���Ͼ�"
                  FROM score_table a
               )
SELECT years, gubun,
       SUM(����) AS ����, SUM(����) AS ����, SUM(����) AS ����,
       SUM(����) AS ����, SUM(����) AS ����, SUM(���Ͼ�) AS ���Ͼ�
 FROM mains
GROUP BY years, gubun;  


SELECT *
  FROM ( SELECT years, gubun, subjects, score
          FROM score_table )
 PIVOT ( SUM(score)
          FOR subjects IN ( '����', '����', '����', '����', '����', '���Ͼ�')
        );
        
-- �÷��� �ο�� 
CREATE TABLE score_col_table  (
    YEARS     VARCHAR2(4),   -- ����
    GUBUN     VARCHAR2(30),  -- ����(�߰�/�⸻)
    KOREAN    NUMBER,        -- ��������
    ENGLISH   NUMBER,        -- ��������
    MATH      NUMBER,        -- ��������
    SCIENCE   NUMBER,        -- ��������
    GEOLOGY   NUMBER,        -- ��������
    GERMAN    NUMBER         -- ���Ͼ�����
    );        
    
    
INSERT INTO score_col_table
VALUES ('2020', '�߰����', 92, 87, 67, 80, 93, 82 );

INSERT INTO score_col_table
VALUES ('2020', '�⸻���', 88, 80, 93, 91, 89, 83 );

COMMIT;

SELECT *
  FROM score_col_table;
    
    
SELECT YEARS, GUBUN, '����' AS SUBJECT, KOREAN AS SCORE
  FROM score_col_table
 UNION ALL
SELECT YEARS, GUBUN, '����' AS SUBJECT, ENGLISH AS SCORE
  FROM score_col_table
 UNION ALL
SELECT YEARS, GUBUN, '����' AS SUBJECT, MATH AS SCORE
  FROM score_col_table
 UNION ALL
SELECT YEARS, GUBUN, '����' AS SUBJECT, SCIENCE AS SCORE
  FROM score_col_table
 UNION ALL
SELECT YEARS, GUBUN, '����' AS SUBJECT, GEOLOGY AS SCORE
  FROM score_col_table
 UNION ALL
SELECT YEARS, GUBUN, '���Ͼ�' AS SUBJECT, GERMAN AS SCORE
  FROM score_col_table
 ORDER BY 1, 2 DESC;    
 
 
 
SELECT *
  FROM score_col_table
UNPIVOT ( score
            FOR subjects IN ( KOREAN   AS '����',
                              ENGLISH  AS '����',
                              MATH     AS '����',
                              SCIENCE  AS '����',
                              GEOLOGY  AS '����',
                              GERMAN   AS '���Ͼ�'
                            )
        ); 
        
        
CREATE OR REPLACE TYPE obj_subject AS OBJECT (
      YEARS     VARCHAR2(4),   -- ����
      GUBUN     VARCHAR2(30),  -- ����(�߰�/�⸻)
      SUBJECTS  VARCHAR2(30),  -- ����
      SCORE     NUMBER         -- ����
     );        
     
     
CREATE OR REPLACE TYPE subject_nt IS TABLE OF obj_subject;     



CREATE OR REPLACE FUNCTION fn_pipe_table_ex
  RETURN subject_nt
  PIPELINED
IS

  vp_cur  SYS_REFCURSOR;
  v_cur   score_col_table%ROWTYPE;

  -- ��ȯ�� �÷��� ���� ���� (�÷��� Ÿ���̹Ƿ� �ʱ�ȭ�� �Ѵ�)
  vnt_return  subject_nt :=  subject_nt();
BEGIN
  -- SYS_REFCURSOR ������ ch14_score_col_table ���̺��� ������ Ŀ���� ����
  OPEN vp_cur FOR SELECT * FROM score_col_table ;

  -- ������ ���� �Է� �Ű����� vp_cur�� v_cur�� ��ġ
  LOOP
    FETCH vp_cur INTO v_cur;
    EXIT WHEN vp_cur%NOTFOUND;

    -- �÷��� Ÿ���̹Ƿ� EXTEND �޼ҵ带 ����� �� �ο쾿 �ű� ����
    vnt_return.EXTEND();
    -- �÷��� ����� OBJECT Ÿ�Կ� ���� �ʱ�ȭ
    vnt_return(vnt_return.LAST) := obj_subject(null, null, null, null);

    -- �÷��� ������ Ŀ�� ������ �� �Ҵ�
    vnt_return(vnt_return.LAST).YEARS     := v_cur.YEARS;
    vnt_return(vnt_return.LAST).GUBUN     := v_cur.GUBUN;
    vnt_return(vnt_return.LAST).SUBJECTS  := '����';
    vnt_return(vnt_return.LAST).SCORE     := v_cur.KOREAN;
    PIPE ROW ( vnt_return(vnt_return.LAST));                 -- ���� ��ȯ

    vnt_return(vnt_return.LAST).SUBJECTS  := '����';
    vnt_return(vnt_return.LAST).SCORE     := v_cur.ENGLISH;
    PIPE ROW ( vnt_return(vnt_return.LAST));                 -- ���� ��ȯ

    vnt_return(vnt_return.LAST).SUBJECTS  := '����';
    vnt_return(vnt_return.LAST).SCORE     := v_cur.MATH;
    PIPE ROW ( vnt_return(vnt_return.LAST));                 -- ���� ��ȯ

    vnt_return(vnt_return.LAST).SUBJECTS  := '����';
    vnt_return(vnt_return.LAST).SCORE     := v_cur.SCIENCE;
    PIPE ROW ( vnt_return(vnt_return.LAST));                 -- ���� ��ȯ

    vnt_return(vnt_return.LAST).SUBJECTS  := '����';
    vnt_return(vnt_return.LAST).SCORE     := v_cur.GEOLOGY;
    PIPE ROW ( vnt_return(vnt_return.LAST));                 -- ���� ��ȯ

    vnt_return(vnt_return.LAST).SUBJECTS  := '���Ͼ�';
    vnt_return(vnt_return.LAST).SCORE     := v_cur.GERMAN;
    PIPE ROW ( vnt_return(vnt_return.LAST));                 -- ���Ͼ� ��ȯ

  END LOOP;
  RETURN;
END;


SELECT *
  FROM TABLE ( fn_pipe_table_ex );