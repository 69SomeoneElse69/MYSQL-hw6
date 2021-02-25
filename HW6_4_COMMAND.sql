
select
(select TIMESTAMPDIFF(YEAR, birthday, NOW()) from profiles p where user_id = id) as age,
(select birthday from profiles p2 where user_id=id) as birthday,
null as amount
from likes where target_type_id = '2' 
union all 
select null ,null, count(id) from likes l2 where target_type_id = '2'
ORDER BY age 
LIMIT 10;
