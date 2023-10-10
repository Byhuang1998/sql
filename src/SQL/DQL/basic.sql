-- 基本查询
-- 查询指定字段
select workno, gender from emp;

-- 查询所有字段
select * from emp;

-- 查询某字段，并起别名 as 可省略
select gender as sex from emp;
select gender sex from emp;

-- 去重 distinct关键字
select distinct gender from emp;