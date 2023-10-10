-- 查询所有表
show tables;

-- 建表
create table tb_user(
                        id int comment '主键',
                        name varchar(50) comment '姓名',
                        age int comment '年龄',
                        gender varchar(1) comment '性别'
) comment '用户';

create table emp(
                    id int comment '主键',
                    workno varchar(10) comment '员工编号',
                    name varchar(10) comment '姓名',
                    gender char(1) comment '性别',
                    age tinyint unsigned comment '年龄',
                    idcard char(18) comment '身份证号',
                    entrydate date comment '入职时间'
) comment '员工表';

-- 查询表结构
desc tb_user;

-- 查询表的建表语句
show create table tb_user;




