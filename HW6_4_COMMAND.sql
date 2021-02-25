
select *,
(select TIMESTAMPDIFF(YEAR, birthday, NOW()) from profiles p where user_id = id) as age,
(select birthday from profiles p2 where user_id=id) as birthday 
from likes
ORDER BY age
LIMIT 10;