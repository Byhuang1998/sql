-- 查询所有数据库
show databases;

-- 查询当前数据库
select database();

-- 创建
create database if not exists by_test default charset utf8mb4 collate utf8mb4_general_ci;

-- 删除
drop database if exists by_test;

-- 使用
use test;