-- ������ �Լ�
-- ABS
SELECT ABS(-7), ABS(0), ABS(7.8)
  FROM DUAL;
  
-- CEIL, FLOOR  
SELECT CEIL(7.6), FLOOR(7.6)
  FROM DUAL;  
  
-- EXP, LN, LOG
SELECT EXP(5), LN(148.413159102576603421115580040552279624), LOG(10, 10000)
FROM DUAL; 

SELECT EXP(LN(5))
FROM DUAL; 


-- MOD, SIGN
SELECT MOD(17, 3), SIGN(-19), SIGN(0)
  FROM DUAL;
  
-- POWER, SQRT
SELECT POWER(2,3), SQRT(3)
  FROM DUAL;
  
-- ROUND, TRUNC
SELECT ROUND(3.545, 2), ROUND(3.545, 1), TRUNC(3.545, 2), TRUNC(3.545, 1)
  FROM DUAL; 
   
  
-- ������ �Լ�
-- CONCAT
SELECT CONCAT('A', 'B'), 'A' || 'B' || 'C'
  FROM DUAL;
  
-- INITCAP, UPPER, LOWER
SELECT INITCAP('abc'), UPPER('abc'), LOWER('A��bC'), INITCAP('ȫgildong')
  FROM DUAL;  
  
SELECT *
FROM employees
WHERE first_name = 'steven';  

SELECT *
FROM employees
WHERE UPPER(first_name) = 'STEVEN';

-- LPAD, RPAD
SELECT LPAD( 'SQL', 5, '*' ), RPAD('SQL', 5, '*')
  FROM DUAL;
  
SELECT employee_id, 
       phone_number,
       LPAD(phone_number, 20, ' ') phone_number2
FROM employees
ORDER BY 1;  
  
-- LTRIM, RTRIM
SELECT LTRIM('**SQL**', '*'), RTRIM('**SQL**', '*')
  FROM DUAL;  
  
-- SUBSTR
SELECT SUBSTR('ABCDEFG', 1, 2) FIRSTS
      ,SUBSTR('ABCDEFG', 0, 2) SECONDS
      ,SUBSTR('ABCDEFG', 3, 2) THIRDS
      ,SUBSTR('ABCDEFG', 3 )   FOURTHS
      ,SUBSTR('ABCDEFG', -3)   FIFTHS
      ,SUBSTR('ABCDEFG', -3, 2)  SIXTHS
  FROM DUAL;    
  
-- TRIM, ASCII, LENGTH, LENGTHB
SELECT TRIM(' AB C D '), ASCII('a'), LENGTH('A B C'), LENGTHB('A B ��')
  FROM DUAL;  
  
-- REPLACE
SELECT REPLACE('���� ���̿� ���� ���̴�', '��', '���')
  FROM DUAL;  
  
SELECT TRIM(' AB C D '), REPLACE(' AB C D ', ' ', '')
  FROM DUAL;    
  
-- INSTR
SELECT INSTR('ABCABCABC', 'C')
      ,INSTR('ABCABCABC', 'c')
      ,INSTR('ABCABCABC', 'C', 2)
      ,INSTR('ABCABCABC', 'C', 2, 2)
FROM DUAL;

-- ��¥�� �Լ�
-- SYSDATE
SELECT SYSDATE
  FROM DUAL;
  
-- ADD_MONTHS
SELECT ADD_MONTHS(SYSDATE, 1), ADD_MONTHS(SYSDATE, -1), ADD_MONTHS(SYSDATE, 0)
  FROM DUAL;  
  
-- MONTHS_BETWEEN
SELECT SYSDATE + 31
      ,SYSDATE - 31
      ,MONTHS_BETWEEN(SYSDATE + 31, SYSDATE )
      ,MONTHS_BETWEEN(SYSDATE - 31, SYSDATE )
FROM DUAL;
  
-- LAST_DAY, NEXT_DAY
SELECT LAST_DAY(SYSDATE)
      ,NEXT_DAY(SYSDATE, '��')
FROM DUAL ;  

-- ROUND
SELECT SYSDATE 
      ,ROUND(SYSDATE, 'YYYY') YEARS
      ,ROUND(SYSDATE, 'MM') MONTHS
      ,ROUND(SYSDATE, 'DD')   DAYS
      ,ROUND(SYSDATE, 'HH24')  HOURS24
      ,ROUND(SYSDATE, 'MI')    MINUTES
      ,ROUND(SYSDATE)          DEFAULTS
FROM DUAL ;  


-- TRUNC
SELECT SYSDATE 
      ,TRUNC(SYSDATE, 'YYYY') YEARS
      ,TRUNC(SYSDATE, 'MM') MONTHS
      ,TRUNC(SYSDATE, 'DD')   DAYS
      ,TRUNC(SYSDATE, 'HH24')  HOURS24
      ,TRUNC(SYSDATE, 'MI')    MINUTES
      ,TRUNC(SYSDATE)          DEFAULTS
FROM DUAL ;  

SELECT SYSDATE,
       SYSDATE + 1 nextday,
       SYSDATE - 1 previousday
  FROM DUAL;

-- TO_NUMBER �Լ� - ���ڸ� ���ڷ� ��ȯ
SELECT TO_NUMBER('12345.6789'), TO_NUMBER(-12.0)
FROM DUAL;

SELECT TO_NUMBER(1234)
FROM DUAL;

SELECT TO_NUMBER('ABC')
FROM DUAL;

-- TO_CHAR �Լ� - ���ڸ� ���ڷ� ��ȯ
SELECT TO_CHAR(123456.78912), TO_CHAR(123456.78912, '999,999.99999')
FROM DUAL;

SELECT TO_CHAR(123456.78912, '999.99999')
FROM DUAL;

-- TO_CHAR �Լ� - ��¥�� ���ڷ� ��ȯ
SELECT TO_CHAR(SYSDATE) D1,
       TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') D2
FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'DD') D1, 
       TO_CHAR(SYSDATE, 'DAY') D2, 
       TO_CHAR(SYSDATE, 'DDD') D3
FROM DUAL;


SELECT SYSDATE D1, 
       TO_CHAR(SYSDATE, 'W') D2,
       TO_CHAR(SYSDATE, 'WW') D3,
       TO_CHAR(TO_DATE('2020-06-15','YYYY-MM-DD'), 'W') D4, 
       TO_CHAR(TO_DATE('2020-06-15','YYYY-MM-DD'), 'WW') D5
FROM DUAL;



-- TO_DATE �Լ� - ���ڸ� ��¥�� ��ȯ
SELECT TO_DATE('2020-06-15 17:10:15', 'YYYY-MM-DD HH24:MI:SS')
FROM DUAL;

SELECT TO_DATE('2020-06-15', 'YYYY-MM-DD HH24:MI:SS')
FROM DUAL;

SELECT TO_DATE('20200615', 'YYYY-MM-DD HH24:MI:SS')
FROM DUAL;

SELECT TO_DATE('2020-06-15', 'YYYYMMDD HH24:MI:SS')
FROM DUAL;

-- NULL ó��
-- NVL �Լ�
SELECT NVL(NULL, 'A'), NVL(NULL, 1), NVL(2, 3)
FROM DUAL;

-- NVL2 �Լ�
SELECT NVL2(NULL, 'A', 'B'), NVL2('A', 'B', 'C')
FROM DUAL;

-- COALESCE �Լ�
SELECT COALESCE(NULL, NULL, NULL, 'A', NULL, 'B')
FROM DUAL;

SELECT COALESCE(NULL, NULL, NULL, NULL, NULL, NULL)
FROM DUAL;

-- NULLIF �Լ�
SELECT NULLIF(100, 100), NULLIF(100, 200)
FROM DUAL;

  
-- DECODE �Լ� 
SELECT  DECODE(1, 2, 3, 4, 5, 1, 7, 9)
       ,DECODE(1, 2, 3, 4, 5, 6, 7, 9)
       ,DECODE(1, 2, 3, 4, 5, 6, 7)
FROM DUAL;


-- ����ִ� ���� Ǯ�� 
--1. ���� 1�� 1�� 1�Ϻ��� ���ñ��� 1������ ������ ���� �󸶸� ��� �ϴ��� ���Ͻÿ�. 
--   ���� ����� �Ҽ��� ù ° �ڸ����� �ݿø� �� �� 
SELECT TO_NUMBER(TO_CHAR(SYSDATE, 'YYYY')) - 1 LAST_YEAR
      ,TO_NUMBER(TO_CHAR(SYSDATE, 'DDD')) DAYS
      ,( ( TO_NUMBER(TO_CHAR(SYSDATE, 'YYYY')) - 1) * 365 ) + TO_NUMBER(TO_CHAR(SYSDATE, 'DDD')) DAYS_ALL
      , ROUND(1000000000000 / ( (( TO_NUMBER(TO_CHAR(SYSDATE, 'YYYY')) - 1) * 365 ) + TO_NUMBER(TO_CHAR(SYSDATE, 'DDD'))),0) TRILLIONS
FROM DUAL;

--2. 2019�� 9�� 10�� ���ΰ� ó�� ������. 100��, 500��, 1000�� �����Ƽ�� �ϰ� ������, �������� ����ϱⰡ �����...  
SELECT TO_DATE('2019-09-10', 'YYYY-MM-DD') + 100 AS "100��"
      ,TO_DATE('2019-09-10', 'YYYY-MM-DD') + 500 AS "500��"
      ,TO_DATE('2019-09-10', 'YYYY-MM-DD') + 1000 AS "1000��"
FROM DUAL ;

-- 3. 524288 �̶� ���ڰ� �ִ�. �� ���� 2�� �� ���ϱ�? 
SELECT log(2, 524288)
  FROM DUAL;

-- 4. 2050�� 2���� ������ ���� ���� �����ϱ�?
SELECT TO_CHAR(LAST_DAY(TO_DATE('20500201', 'YYYYMMDD')), 'DAY')
FROM DUAL;

