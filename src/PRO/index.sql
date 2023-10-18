-- 创建索引
create index idx_name on table_name;

-- 查询索引
show index from table_name;

-- 删除索引
drop index idx_name from table_name;



show tables ;

desc tb_user;

create index idx_name on tb_user(name);

show index from tb_user;

drop index idx_name on tb_user;