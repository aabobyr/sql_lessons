#Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT 
	users_id,
    birthday,
    (SELECT COUNT(*) FROM likes WHERE media_id IN (SELECT id FROM media WHERE media.users_id = profiles.users_id)) +
    (SELECT COUNT(*) FROM likes WHERE posts_id IN (SELECT id FROM posts WHERE posts.users_id = profiles.users_id)) +
    (SELECT COUNT(*) FROM likes WHERE messages_id IN (SELECT id FROM messages WHERE messages.from_users_id = profiles.users_id)) AS c_likes
FROM profiles 
ORDER BY birthday DESC
LIMIT 10



/* -- лайки, которые поставили пользователи
SELECT 
	users_id,
    birthday,
    (SELECT COUNT(*) FROM likes WHERE likes.users_id = profiles.users_id) as c_likes
FROM profiles 
ORDER BY birthday DESC
LIMIT 10
*/