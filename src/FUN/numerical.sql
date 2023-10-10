-- ceil 向上取整
select avg(age), ceil(avg(age)) from emp;

-- floor 向下取整
select avg(age), floor(avg(age)) from emp;

-- mod 取余
select mod(10, 4); -- = 2

-- rand 取随机数 0~1
select rand();

-- round(m, n) m四舍五入，保留n位小数
select round(10.442, 2);

-- 生成一个六位数随机验证码
select lpad(round(rand(), 6) * 1000000, 6, '0');