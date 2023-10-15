-- 多表查询分为连接查询和子查询。连接查询又分为内连接(inner join)和外连接(left join and right join)和自连接

-- 内连接inner join，其中的inner可以省略
-- 内连接查询语法分为：隐式内连接和显式内连接
-- 隐式：select field1, field2, ... from table_a, table_b where table_a.field = table_b.field; 用where作为连接条件
-- 显式：select field1, field2, ... from table_a (inner) join table_b on table_a.field = table_b.field; 关键字(inner) join ... on ...