SELECT (select gender from profiles where id = user_id) as GENDER, 
(select name from target_types tt where target_type_id = id) as WHO
  FROM likes where target_type_id = '2'
 ORDER BY GENDER DESC
LIMIT 1; 