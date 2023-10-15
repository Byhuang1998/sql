-- 右连接：right (outer) join. 会保存所有的右表数据，如果有左表数据可以匹配则显示，无左表数据则仅显示右表数据
-- select field1, field2, ... from table_a right outer join table_b on table_a.field = table_b.field;

-- 实际左连接用得比右连接更多，因为右连接可以改成左连接，如上式可改成：把left -> right,  并交互两表的位置
-- select field1, field2, ... from table_b left outer join table_a on table_a.field = table_b.field;
