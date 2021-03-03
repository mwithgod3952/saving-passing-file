-- traffic accident
-- ����, ������ܺ� �� ���Ǽ� ��ȸ
SELECT YEAR
      ,trans_type
      ,SUM(total_acct_num)   AS ���Ǽ�
      ,SUM(death_person_num) AS ����ڼ�
FROM traffic_accident
WHERE 1=1
GROUP BY YEAR, trans_type
ORDER BY 1, 2;


SELECT CASE WHEN year BETWEEN 1980 AND 1989 THEN '1980���'
            WHEN year BETWEEN 1990 AND 1999 THEN '1990���'
            WHEN year BETWEEN 2000 AND 2009 THEN '2000���'
            WHEN year BETWEEN 2010 AND 2019 THEN '2010���'
       END AS YEARS
      ,trans_type
      ,SUM(total_acct_num)   AS ���Ǽ�
      ,SUM(death_person_num) AS ����ڼ�
FROM traffic_accident
WHERE 1=1
GROUP BY CASE WHEN year BETWEEN 1980 AND 1989 THEN '1980���'
              WHEN year BETWEEN 1990 AND 1999 THEN '1990���'
              WHEN year BETWEEN 2000 AND 2009 THEN '2000���'
              WHEN year BETWEEN 2010 AND 2019 THEN '2010���'
         END, trans_type
ORDER BY 1, 2;


-- ������ ���� �м�
-- ������ �÷� ���·� ��ȸ
SELECT trans_type
      ,CASE WHEN year BETWEEN 1980 AND 1989 THEN total_acct_num ELSE 0 END "1980���"
      ,CASE WHEN year BETWEEN 1990 AND 1999 THEN total_acct_num ELSE 0 END "1990���"
      ,CASE WHEN year BETWEEN 2000 AND 2009 THEN total_acct_num ELSE 0 END "2000���"
      ,CASE WHEN year BETWEEN 2010 AND 2019 THEN total_acct_num ELSE 0 END "2010���"
FROM traffic_accident
WHERE 1=1
ORDER BY trans_type;

SELECT trans_type
      ,SUM(CASE WHEN year BETWEEN 1980 AND 1989 THEN total_acct_num ELSE 0 END) "1980���"
      ,SUM(CASE WHEN year BETWEEN 1990 AND 1999 THEN total_acct_num ELSE 0 END) "1990���"
      ,SUM(CASE WHEN year BETWEEN 2000 AND 2009 THEN total_acct_num ELSE 0 END) "2000���"
      ,SUM(CASE WHEN year BETWEEN 2010 AND 2019 THEN total_acct_num ELSE 0 END) "2010���"
FROM traffic_accident
WHERE 1=1
GROUP BY trans_type
ORDER BY trans_type;

-- ������ܺ� ���� ���� ����� ���� �߻��� ���� ���ϱ�
SELECT trans_type
      ,MAX(death_person_num) death_per
  FROM traffic_accident
 GROUP BY trans_type;
 
SELECT a.*
 FROM traffic_accident a
     ,( SELECT trans_type
              ,MAX(death_person_num) death_per
          FROM traffic_accident
         GROUP BY trans_type
      ) B
WHERE a.trans_type       = b.trans_type
  AND a.death_person_num = b.death_per;


