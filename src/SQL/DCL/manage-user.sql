use mysql;
select database();

-- 创建用户
create user 'by'@'%' identified by '123456';

-- 修改用户密码
alter user 'by'@'%' identified with mysql_native_password by '1234567';

-- 删除用户
drop user 'by'@'%';

select *
from user;




