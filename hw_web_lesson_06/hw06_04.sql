# Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT distinct IF(
		(SELECT COUNT(*) FROM vk.likes) - (SELECT COUNT(*) FROM vk.likes WHERE users_id IN (SELECT users_id FROM profiles WHERE gender ='m'))
        <=
        (SELECT COUNT(*) FROM vk.likes WHERE users_id IN (SELECT users_id FROM profiles WHERE gender ='m')), 'man', 'women') as gender_activity
from vk.likes;