-- 添加字段
alter table emp add nickname varchar(20) comment '昵称';

-- 修改数据类型
alter table emp modify nickname varchar(30);

-- 修改字段名和字段类型
alter table emp change nickname username varchar(30) comment '昵称';

-- 删除字段
alter table emp drop username;

-- 修改表名
alter table emp rename to employee;

-- 删除表
drop table if exists emp;

-- 删除指定表并重新创建该表
truncate table emp;