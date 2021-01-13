/*insert into vk.messages values
(DEFAULT, '43', '1', 'G dfdjh hjhds hd', DEFAULT);
Добавил сообщений к первому юзеру чтобы было проще
/*insert into vk.friend_requests values ('1', '43', '1');
добавил в друзья для наглядности
*/
-- Задание 2
select 
	* 
from vk.friend_requests
where from_users_id = 1;
-- нашли друзей id =  43, 96

select 
	*,
    count(*) as summ_messages
from vk.messages  
where to_users_id = 1 and (from_users_id = 43 or from_users_id = 96)
order by summ_messages DESC
limit 1;
-- таким образом нашли друга который больше всех писал id = 1

-- Задание 3

select 
	profiles.users_id, 
    profiles.birthday, 
    count(likes.users_id) as likes
from vk.profiles, vk.likes
where profiles.users_id = likes.users_id
group by users_id
order by birthday desc limit 10 ;
/*так и не понял как посчитать сумму,  не нашел информации 
как посчитать сумму всех значений столбца, with rollup  сработал не коректно в моем случае*/

-- Задание 4
/* не получается не понимаю как выбрать для сравнения лайки, подзапрос возвращает больше одного значения 
а при добавлении столбца из другой таблицы почему то выростает quantity не могу понять от чего следовательно
задание 5 так же не получится*/
select 
	profiles.gender,
    profiles.users_id,
    count(profiles.gender) as quantity
    
from vk.profiles
group by gender;
