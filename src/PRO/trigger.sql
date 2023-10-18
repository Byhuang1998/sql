-- 创建触发器
create trigger trigger_name before/after insert/update/delete on table_name for each row
    begin
        ...
    end;

-- 查询触发器
show triggers;

-- 删除触发器
delete trigger trigger_name;



-- 触发器实际使用

create table tb_user_log (
                             id int primary key auto_increment comment '主键',
                             operate varchar(10) comment '操作类型',
                             time datetime comment '操作时间',
                             param text comment '参数'
) comment '修改日志表';

drop trigger if exists trigger_tb_user;

create trigger trigger_tb_user_insert
    after insert on tb_user for each row
begin
    insert tb_user_log (operate, time, param) values ('insert', now(), concat('id: ', new.id, ', name: ', new.name, ', age: ', new.age, ', gender: ', new.gender));
end;


create trigger trigger_tb_user_update
    after update on tb_user for each row
begin
    insert into tb_user_log (operate, time, param) values ('update', now(),
                                                           concat('old data:: id: ', old.id, ', name: ', old.name, ', age: ', old.age, ', gender: ', old.gender,
                                                                  '; new data:: id: ', new.id, ', name: ', new.name, ', age: ', new.age, ', gender: ', new.gender));
end;

create trigger trigger_tb_user_delete
    after delete on tb_user for each row
begin
    insert into tb_user_log (operate, time, param) values ('delete', now(), concat('id: ', old.id, ', name: ', old.name, ', age: ', old.age, ', gender: ', old.gender));
end;

select * from tb_user_log;
select * from tb_user;
select * from user;

insert into tb_user values (1, 'zs', 1, '男');
insert into tb_user values (3, 'ls', 2, '男');
update tb_user set name = 'ww' where id = 1;
delete from tb_user where id = 1;