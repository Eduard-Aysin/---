-- Выбрали всех пользователей у которых номер телефона с одинаковым кодом города
SELECT 
	* 
FROM mydb.users
WHERE phone_number LIKE '%495%';


-- Таким образом мы бы нашли всех пользователей которые живут в этой локации по индексу (к сожалению индексы все уникальные получились)
SELECT 
	* 
FROM mydb.profiles
WHERE 
	substring_index(address, ' ', 1) = (SELECT substring_index(address, ' ', 1) FROM mydb.profiles WHERE Customer_id = 1) ;


-- Нашли пользователей старше 18
SELECT 
	Customer_id,
    TIMESTAMPDIFF(YEAR, birthday, NOW()) AS years_old
FROM mydb.profiles
WHERE 
	TIMESTAMPDIFF(YEAR, birthday, NOW()) > 18;


-- Процедура которая выдает отзывы на товар
CALL show_good_review('Socs');



select * from mydb.users;