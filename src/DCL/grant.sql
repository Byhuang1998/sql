-- 查询权限
show grants for 'by'@'%';

-- 授权
grant all on test.* to 'by'@'%';
grant all on mysql.* to 'by'@'%';

-- 撤销权限
revoke all on test.* from 'by'@'%';