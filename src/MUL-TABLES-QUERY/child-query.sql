-- 子查询（嵌套查询）

-- 1. 标量子查询
-- 子查询返回的结果是单个值（数字、字符串、日期等），最简单的形式

-- 2. 列子查询
-- 子查询返回的结果是一列（可以是多行）
-- 操作符：in / not in / any / some / all
-- in / not in经常用，不解释
-- any/some一样,返回结果中的任何一个


-- 查询比财务部所有人工资都高的员工信息
-- select * from emp where salary > all (select salary from emp dept_id = (select id form dept where name = '财务部'));


-- all 返回结果的每一个
-- 查询比研发部中任何一个人工资高的员工信息
-- select * from emp where salary > any (select salary from emp dept_id = (select id from dept where name = '研发部'));

-- 3. 行子查询
-- 子查询返回的结果是一行（可以是多列）
-- 查询与 “张三” 薪资及直属领导相同的员工信息
select * from emp where (salary, manaager_id) = (select salary, manager_id from emp where name = '张三');

-- 4. 表子查询
-- 子查询返回的结果是多行多列
-- 子查询返回的结果是多行多列
-- 查询与张三或李四职位和薪资相同的员工信息
select * from emp where (job, salar) in (select job, salary from emp where name in ('张三', '李四'));