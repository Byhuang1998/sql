-- primary key 主键
-- unique 唯一
-- auto_increment 自增
-- check 检查
-- default 默认
-- not null 非空

create table test.user (
                           id int primary key auto_increment comment '主键',
                           name varchar(10) not null unique comment '姓名',
                           age int check ( age < 120 and age > 0 ) comment '年龄',
                           status char(1) default '1' comment '状态',
                           gender char(1) comment '性别'
) comment '用户表';

insert into test.user (name, age, status, gender) values ('zs', 21, '1', '男');
insert into test.user (name, age, gender) values ('ls', 21, '男'); -- default约束
insert into test.user (name, age, gender) values ('ls', 121, '男'); -- 违反age字段的check约束

select * from test.user;
select * from test.tb_user;
show tables;
desc tb_user;

-- 添加外键 alter table child_table_name add constraint foreign key (field) references father_table_name(field);
alter table test.tb_user add constraint foreign key (id) references test.user(id);
-- 删除外键 alter table table_name drop foreign key fk_name;
-- alter table test.tb_user drop foreign key tb_user_ibfk_1;
-- 查询外键名称
SELECT CONSTRAINT_NAME
FROM information_schema.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'test'
  AND TABLE_NAME = 'tb_user'
  AND CONSTRAINT_TYPE = 'FOREIGN KEY';