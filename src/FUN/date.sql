-- curdate() 当前日期
select curdate(); -- 2023-10-10

-- curtime() 当前时间
select curtime(); -- 21:49:33

-- now()
select now(); -- 2023-10-10 21:49:33

-- YEAR()
select YEAR(now()); -- 2023

-- MONTH()
select MONTH(now()); -- 10

-- DAY()
select DAY(now()); -- 10

-- data_add(time, INTERVAL m unit)  INTERVAL是固定的
select date_add(now(), INTERVAL 3 DAY);

-- datediff(m, n)  m - n
select datediff('2020-10-08', '2020-10-10');

-- 查询所有员工的入职天数
select workno, name, datediff(now(), entrydate) as entrydates from emp;