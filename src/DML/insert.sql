-- 插入
insert into
    emp(id, workno, name, gender, age, idcard, entrydate)
values(1, 1, 'zs', '男', 20, 362232199802161411, '2020-01-12');

-- 部分插入
insert into
    emp(id, workno, name, gender, age, idcard)
values(2, 2, 'ls', '女', 21, 362232199802161411);

-- 全字段插入可省略字段名
insert into emp
values(3, 3, 'ww', '男', 22, 362232199802161413, '2020-01-13');

-- 批量插入
insert into emp
values(4, 4, 'zl', '男', 23, 362232199802161414, '2020-01-13'),
      (5, 5, 'qq', '男', 24, 362232199802161415, '2020-01-15');
