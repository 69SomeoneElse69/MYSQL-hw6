 
(SELECT (select first_name from users where id = user_id) as name, updated_at, TIMESTAMPDIFF(day, updated_at, NOW()) as day FROM friendship)
UNION
(select (select first_name from users where id = user_id) as name, updated_at, TIMESTAMPDIFF(day, updated_at, NOW()) as day FROM media m2)
union
(SELECT (select first_name from users where id = user_id) as name, updated_at, TIMESTAMPDIFF(day, updated_at, NOW()) as day FROM posts p2)
  LIMIT 10;
  