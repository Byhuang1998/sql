-- if(value, t, f)  if value == true, then t, else f
select if(true, 'OK', 'No');

-- ifnull(v1, v2) if v1 is not null, return v1, else v2
select ifnull(null, '2'); -- 2
select ifnull('', '2'); -- ''
select ifnull('1', '2'); -- '1'

-- case when bool1 then r1 when bool2 then r2 ... else v_default end
select name,
       case address
           when '北京' then '一线城市'
           when '上海' then '一线城市'
           else '二线城市' end
from emp;

-- case field when v1 then r1 when v2 then r2 ... else v_default end
select name,
       case when address = '上海' or address = '北京' then '一线城市' else '二线城市' end
from emp;