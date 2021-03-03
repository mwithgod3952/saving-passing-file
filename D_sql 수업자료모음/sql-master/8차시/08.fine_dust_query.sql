-- fine dust 
-- (1) ���� �̼������� �ʹ̼������� �ּ�,�ִ�,��հ� ���ϱ�

-- ���� �̼����� - �ּ�,�ִ�,��� 1
SELECT TO_CHAR(a.mea_date, 'YYYY-MM') months
       ,ROUND(MIN(a.pm10),0) pm10_min
       ,ROUND(MAX(a.pm10),0) pm10_max
       ,ROUND(AVG(a.pm10),0) pm10_avg
       ,ROUND(MIN(a.pm25),0) pm25_min
       ,ROUND(MAX(a.pm25),0) pm25_max
       ,ROUND(AVG(a.pm25),0) pm25_avg
  FROM fine_dust a
 GROUP BY  TO_CHAR(mea_date, 'YYYY-MM')
 ORDER BY 1;
 
-- ���� �̼����� - �ּ�,�ִ�,��� 2
SELECT TO_CHAR(a.mea_date, 'YYYY-MM') months
       ,ROUND(MIN(a.pm10),0) pm10_min
       ,ROUND(MAX(a.pm10),0) pm10_max
       ,ROUND(AVG(a.pm10),0) pm10_avg
       ,ROUND(MIN(a.pm25),0) pm25_min
       ,ROUND(MAX(a.pm25),0) pm25_max
       ,ROUND(AVG(a.pm25),0) pm25_avg
  FROM fine_dust a
 WHERE pm10 > 0
   AND pm25 > 0
 GROUP BY  TO_CHAR(mea_date, 'YYYY-MM')
 ORDER BY 1;
 
 

-- (2) �� ��� �̼����� ��Ȳ

SELECT *
FROM fine_dust_standard;
 
 
-- �� ��� �̼�����  
SELECT TO_CHAR(a.mea_date, 'YYYY-MM') months
       ,ROUND(AVG(a.pm10),0) pm10_avg
       ,ROUND(AVG(a.pm25),0) pm25_avg
  FROM fine_dust a
 WHERE pm10 > 0
   AND pm25 > 0
 GROUP BY  TO_CHAR(mea_date, 'YYYY-MM')
 ORDER BY 1;

-- �� ��� �̼����� ��Ȳ
SELECT a.months
      ,a.pm10_avg
      ,( SELECT b.std_name
           FROM fine_dust_standard b
          WHERE b.org_name = 'WHO'
            AND a.pm10_avg BETWEEN b.pm10_start
                               AND b.pm10_end
       ) "�̼����� ����"
      ,a.pm25_avg
      ,( SELECT b.std_name
           FROM fine_dust_standard b
          WHERE b.org_name = 'WHO'
            AND a.pm25_avg BETWEEN b.pm25_start
                               AND b.pm25_end
       ) "�ʹ̼����� ����"      
FROM ( -- ����� �̼����� �� ��������
       SELECT TO_CHAR(a.mea_date, 'YYYY-MM') months
             ,ROUND(AVG(a.pm10),0) pm10_avg
             ,ROUND(AVG(a.pm25),0) pm25_avg
        FROM fine_dust a
       WHERE a.pm10 > 0
         AND a.pm25 > 0 
       GROUP BY TO_CHAR(mea_date, 'YYYY-MM')
     ) a
ORDER BY 1; 
