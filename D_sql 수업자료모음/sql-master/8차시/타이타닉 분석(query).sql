-- titanic
CREATE TABLE TITANIC
(	PASSENGERID  NUMBER,
	SURVIVED     NUMBER,
	PCLASS       NUMBER,
	NAME         VARCHAR2(100 CHAR),
	SEX          VARCHAR2(50 CHAR),
	AGE          NUMBER,
	SIBSP        NUMBER,
	PARCH        NUMBER,
	TICKET       VARCHAR2(80 CHAR),
	FARE         NUMBER,
	CABIN        VARCHAR2(50 CHAR) ,
	EMBARKED     VARCHAR2(20 CHAR) 
   )
;

-- ������ Import

-- �м� ���̺� ���� 
CREATE TABLE titanic2 AS
SELECT passengerid
      ,CASE WHEN survived = 0 THEN '���' ELSE '����' end survived
      ,TO_CHAR(pclass) || '���' pclass
      ,name
      ,DECODE(sex, 'male','����', 'female','����', '����') gender
      ,age
      ,sibsp
      ,parch
      ,ticket
      ,fare
      ,cabin
      ,CASE embarked WHEN 'C' THEN '������-�θ��θ�'
                     WHEN 'Q' THEN '���Ϸ���-����Ÿ��'
                     WHEN 'S' THEN '����-��������'
                     ELSE ''
      END embarked
FROM titanic
ORDER BY 1;

-- (1) ���� ����/����� ��
SELECT gender, survived, COUNT(*) cnt
  FROM titanic2
 GROUP BY gender, survived
 ORDER BY 1, 2;

SELECT gender, survived, cnt, 
       ROUND(cnt / SUM(cnt) OVER ( PARTITION BY gender ORDER BY gender),2) ����
  FROM ( SELECT gender, survived, count(*) cnt
           FROM titanic2
          GROUP BY gender, survived
       ) t;

-- (2) ��޺� ���� ��Ȳ
SELECT pclass, survived, count(*)
  FROM titanic2
GROUP BY pclass, survived
ORDER BY pclass, survived;  

SELECT pclass, survived, cnt, 
       ROUND(cnt / SUM(cnt) OVER ( PARTITION BY pclass ORDER BY pclass),2) ����
  FROM ( SELECT pclass, survived, count(*) cnt
           FROM titanic2
          GROUP BY pclass, survived
       ) t;
       
-- (3) ���ɴ뺰 ���� ��Ȳ
SELECT CASE WHEN age BETWEEN 1  AND  9 THEN '(1)10�� ����'
            WHEN age BETWEEN 10 AND 19 THEN '(2)10��'
            WHEN age BETWEEN 20 AND 29 THEN '(3)20��'
            WHEN age BETWEEN 30 AND 39 THEN '(4)30��'
            WHEN age BETWEEN 40 AND 49 THEN '(5)40��'
            WHEN age BETWEEN 50 AND 59 THEN '(6)50��'
            WHEN age BETWEEN 60 AND 69 THEN '(7)60��'
            ELSE '(8)70�� �̻�'
        END ages 
       ,survived, COUNT(*)
  FROM titanic2
GROUP BY CASE WHEN age BETWEEN 1  AND  9 THEN '(1)10�� ����'
              WHEN age BETWEEN 10 AND 19 THEN '(2)10��'
              WHEN age BETWEEN 20 AND 29 THEN '(3)20��'
              WHEN age BETWEEN 30 AND 39 THEN '(4)30��'
              WHEN age BETWEEN 40 AND 49 THEN '(5)40��'
              WHEN age BETWEEN 50 AND 59 THEN '(6)50��'
              WHEN age BETWEEN 60 AND 69 THEN '(7)60��'
              ELSE '(8)70�� �̻�'
         END
        ,survived
ORDER BY 1,2;       

-- ���̸� �������� ���� 
SELECT age
  FROM titanic2
 ORDER BY 1 DESC;
 
-- ���̸� �������� ���� 
SELECT age
  FROM titanic2
 ORDER BY 1; 

-- ���� ����(1)
SELECT CASE WHEN age BETWEEN 0  AND  9 THEN '(1)10�� ����'
            WHEN age BETWEEN 10 AND 19 THEN '(2)10��'
            WHEN age BETWEEN 20 AND 29 THEN '(3)20��'
            WHEN age BETWEEN 30 AND 39 THEN '(4)30��'
            WHEN age BETWEEN 40 AND 49 THEN '(5)40��'
            WHEN age BETWEEN 50 AND 59 THEN '(6)50��'
            WHEN age BETWEEN 60 AND 69 THEN '(7)60��'
            ELSE '(8)70�� �̻�'
        END ages 
       ,survived, COUNT(*)
  FROM titanic2
 WHERE age IS NOT NULL -- NULL ���� 
GROUP BY CASE WHEN age BETWEEN 0  AND  9 THEN '(1)10�� ����'
              WHEN age BETWEEN 10 AND 19 THEN '(2)10��'
              WHEN age BETWEEN 20 AND 29 THEN '(3)20��'
              WHEN age BETWEEN 30 AND 39 THEN '(4)30��'
              WHEN age BETWEEN 40 AND 49 THEN '(5)40��'
              WHEN age BETWEEN 50 AND 59 THEN '(6)50��'
              WHEN age BETWEEN 60 AND 69 THEN '(7)60��'
              ELSE '(8)70�� �̻�'
         END
        ,survived
ORDER BY 1,2;  


-- ���� ����(2)
SELECT CASE WHEN age BETWEEN 0  AND  9 THEN '(1)10�� ����'
            WHEN age BETWEEN 10 AND 19 THEN '(2)10��'
            WHEN age BETWEEN 20 AND 29 THEN '(3)20��'
            WHEN age BETWEEN 30 AND 39 THEN '(4)30��'
            WHEN age BETWEEN 40 AND 49 THEN '(5)40��'
            WHEN age BETWEEN 50 AND 59 THEN '(6)50��'
            WHEN age BETWEEN 60 AND 69 THEN '(7)60��'
            WHEN age >= 70             THEN '(8)70�� �̻�'
            ELSE '(9)�˼�����'
        END ages 
       ,survived, COUNT(*)
  FROM titanic2
 GROUP BY CASE WHEN age BETWEEN 0  AND  9 THEN '(1)10�� ����'
              WHEN age BETWEEN 10 AND 19 THEN '(2)10��'
              WHEN age BETWEEN 20 AND 29 THEN '(3)20��'
              WHEN age BETWEEN 30 AND 39 THEN '(4)30��'
              WHEN age BETWEEN 40 AND 49 THEN '(5)40��'
              WHEN age BETWEEN 50 AND 59 THEN '(6)50��'
              WHEN age BETWEEN 60 AND 69 THEN '(7)60��'
              WHEN age >= 70             THEN '(8)70�� �̻�'
              ELSE '(9)�˼�����'
         END
        ,survived
ORDER BY 1,2;  

-- (4) ���ɴ뺰, ���� ���� ��Ȳ
SELECT CASE WHEN age BETWEEN 0  AND  9 THEN '(1)10�� ����'
            WHEN age BETWEEN 10 AND 19 THEN '(2)10��'
            WHEN age BETWEEN 20 AND 29 THEN '(3)20��'
            WHEN age BETWEEN 30 AND 39 THEN '(4)30��'
            WHEN age BETWEEN 40 AND 49 THEN '(5)40��'
            WHEN age BETWEEN 50 AND 59 THEN '(6)50��'
            WHEN age BETWEEN 60 AND 69 THEN '(7)60��'
            WHEN age >= 70             THEN '(8)70�� �̻�'
            ELSE '(9)�˼�����'
        END ages
       ,gender, survived, COUNT(*)
  FROM titanic2
GROUP BY gender, 
         CASE WHEN age BETWEEN 0  AND  9 THEN '(1)10�� ����'
              WHEN age BETWEEN 10 AND 19 THEN '(2)10��'
              WHEN age BETWEEN 20 AND 29 THEN '(3)20��'
              WHEN age BETWEEN 30 AND 39 THEN '(4)30��'
              WHEN age BETWEEN 40 AND 49 THEN '(5)40��'
              WHEN age BETWEEN 50 AND 59 THEN '(6)50��'
              WHEN age BETWEEN 60 AND 69 THEN '(7)60��'
              WHEN age >= 70             THEN '(8)70�� �̻�'
              ELSE '(9)�˼�����'
         END
        ,gender, survived
ORDER BY 1,3,2;     

-- (5) ����,����� ��, �θ��ڽļ��� ������ ��
SELECT sibsp, parch, survived, count(*)
  FROM titanic2
 GROUP BY sibsp, parch, survived
 ORDER BY 1, 2, 3;
 
SELECT sibsp, survived, count(*)
  FROM titanic2
 GROUP BY sibsp, survived
 ORDER BY 1, 2;
 
SELECT parch, survived, count(*)
  FROM titanic2
 GROUP BY parch, survived
 ORDER BY 1, 2; 