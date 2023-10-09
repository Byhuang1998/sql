-- aggregate function: count max min avg sum
-- 1. count
select count(*) from emp;
select count(entrydate) from emp;

-- 2. avg
select avg(age) from emp;

-- 3. max
select max(age) from emp;

-- 4. min
select min(age) from emp;

-- 5. sum
select sum(age) from emp;

-- 6. group by
select gender, count(*) from emp group by gender;
select gender, avg(age) from emp group by gender;

-- 查询年龄小于22，并根据工作地址分组，获取员工数大于3的工作地址  where是对每一条记录过滤，having是对组进行过滤
select address, count(*) from emp where age < 22 group by address having count(*) > 3;

-- 7. order by   默认是asc
select * from emp order by name desc;

-- 8. limit m, n   从第m个开始， 查询n条记录
select * from emp limit 0, 2;
select * from emp limit 3, 5;

-- 9. 执行顺序
-- from where group by having select order by limit