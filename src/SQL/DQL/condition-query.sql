-- 比较运算符
-- 1. 等于
select * from emp where address = '上海';

-- 2. 小于
select * from emp where age < 22;

-- 3. 小于等于
select * from emp where age <= 22;

-- 4. is null
select * from emp where entrydate is null;

-- 5. is not null
select * from emp where entrydate is not null;

-- 6. 不等于 <> !=
select * from emp where age <> 20;
select * from emp where age != 20;

-- 7. between a and b  (including a and b, a is smaller, b is bigger)
select * from emp where age between 20 and 21;
select * from emp where age between 21 and 20;  -- return null;

-- 8. and &&
select * from emp where age = 21 and gender = '女';
select * from emp where age = 21 && gender = '女';

-- 9. or ||
select * from emp where age < 21 or age > 22;
select * from emp where age < 21 || age > 22;

-- 10. in
select * from emp where age in (20, 21, 22);

-- 11. _ 表示1位字符
select * from emp where name like '__';

-- 12. % 表示0或多位字符
select * from emp where idcard like '%X';
