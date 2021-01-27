#Пусть задан некоторый пользователь.
#Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим
#пользователем.

SELECT
	from_users_id,
    to_users_id,
	COUNT(*) as count,
    concat_ws(',',(SELECT 'friend' FROM vk.friend_requests WHERE from_users_id = messages.from_users_id AND to_users_id = messages.to_users_id), 
    (SELECT 'friend' FROM vk.friend_requests WHERE to_users_id = messages.from_users_id AND from_users_id = messages.to_users_id)) as friend
    
from vk.messages
WHERE from_users_id = 79 OR to_users_id = 79
GROUP BY to_users_id, from_users_id
ORDER BY friend DESC, count DESC;
