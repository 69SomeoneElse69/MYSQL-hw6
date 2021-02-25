select *,
(select TIMESTAMPDIFF(YEAR, birthday, NOW()) from profiles p where user_id = id) as age,
(select birthday from profiles p2 where user_id=id) as birthday 
from likes where target_type_id = '2' 
ORDER BY age
LIMIT 10;
