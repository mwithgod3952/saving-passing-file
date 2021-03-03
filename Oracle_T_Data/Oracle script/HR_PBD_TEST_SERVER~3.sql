create table budget_table(
yearmon VARCHAR2(6),
budget_amt NUMBER );
INSERT INTO budget_table values('201901', 1000);
INSERT INTO budget_table values('201902', 2000);
INSERT INTO budget_table values('201903', 1500);
INSERT INTO budget_table values('201904', 3000);
INSERT INTO budget_table values('201905', 1050);

create table sale_table(
yearmon VARCHAR2(6),
sale_amt NUMBER );
INSERT INTO sale_table values('201901', 900);
INSERT INTO sale_table values('201902', 2000);
INSERT INTO sale_table values('201903', 1000);
INSERT INTO sale_table values('201904', 3100);
INSERT INTO sale_table values('201905', 800);

SELECT * FROM budget_table;
select * from sale_table;

SELECT yearmon , budget_amt , 0 sale_amt
FROM budget_table
UNION
SELECT yearmon , 0 budget_amt , sale_amt
FROM sale_table
ORDER BY 1;