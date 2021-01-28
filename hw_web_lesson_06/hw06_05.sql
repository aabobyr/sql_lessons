# Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

SELECT 
	users_id,
    ((SELECT COUNT(*) FROM likes WHERE likes.users_id = profiles.users_id) +
    (SELECT COUNT(*) FROM media WHERE media.users_id = profiles.users_id) +
    (SELECT COUNT(*) FROM posts WHERE posts.users_id = profiles.users_id) +
    (SELECT COUNT(*) FROM messages WHERE messages.from_users_id = profiles.users_id) +
    (SELECT COUNT(*) FROM messages WHERE messages.to_users_id = profiles.users_id))AS c_activity
FROM profiles 
ORDER BY c_activity
LIMIT 10;