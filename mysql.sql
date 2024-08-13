-- Создаем БД -------------------------------------------------------
CREATE SCHEMA `друзья_человека` ;
use `друзья_человека` ;

-- Создаем талицы в БД ----------------------------------------------
CREATE TABLE `друзья_человека`.`dogs` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `birthday` DATE NOT NULL,
  `commands` VARCHAR(150) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `друзья_человека`.`cats` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `birthday` DATE NOT NULL,
  `commands` VARCHAR(150) NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `друзья_человека`.`hamsters` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `birthday` DATE NOT NULL,
  `commands` VARCHAR(150) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `друзья_человека`.`horses` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `birthday` DATE NOT NULL,
  `commands` VARCHAR(150) NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `друзья_человека`.`camels` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `birthday` DATE NOT NULL,
  `commands` VARCHAR(150) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `друзья_человека`.`donkeys` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `birthday` DATE NOT NULL,
  `commands` VARCHAR(150) NULL,
  PRIMARY KEY (`id`));

-- Наполняем таблицы ------------------------------------------------
INSERT INTO dogs (firstname, birthday, commands)
VALUES
('Арон', '2023-10-27', 'Брось, Дай лапу, Ко мне, Лежать, Рядом, Сидеть, Фу'),
('Бруно', '2022-03-20', 'Апорт, Гуляй, Дай лапу, Ко мне, Лежать, Рядом, Сидеть, Фу'),
('Зевс', '2019-11-10', 'Апорт, Брось, Гуляй, Дай лапу, Домой, Ко мне, Лежать, Место, Обойди, Рядом, Сидеть, Стоять, Тихо, Фу'),
('Каспер', '2021-12-15', 'Гуляй, Дай лапу, Ко мне, Лежать, Место, Рядом, Сидеть, Стоять, Тихо, Фу'),
('Мейсон', '2020-04-05', 'Брось, Гуляй, Дай лапу, Домой, Ко мне, Лежать, Место, Рядом, Сидеть, Стоять, Тихо, Фу'),
('Плуто', '2023-06-13', 'Брось, Дай лапу, Ко мне, Лежать, Рядом, Сидеть, Фу'),
('Портос', '2022-12-27', 'Апорт, Брось, Дай лапу, Домой, Ко мне, Лежать, Место, Рядом, Сидеть, Стоять, Фу'),
('Скай', '2018-08-17', 'Апорт, Брось, Гуляй, Дай лапу, Домой, Ко мне, Лежать, Место, Обойди, Рядом, Сидеть, Стоять, Фу'),
('Тайсон', '2021-07-07', 'Брось, Гуляй, Дай лапу, Домой, Ко мне, Лежать, Место, Рядом, Сидеть, Тихо, Фу'),
('Честер', '2023-02-12', 'Дай лапу, Ко мне, Лежать, Место, Рядом, Сидеть, Фу');

INSERT INTO cats (firstname, birthday, commands)
VALUES
('Асасин', '2022-11-27', 'Дай лапу, Ко мне, Принеси'),
('Барон', '2021-04-20', 'Голос, Дай лапу, Ползи, Прыжок, Сидеть'),
('Багира', '2018-10-10', 'Голос, Ко мне, Сидеть'),
('Викки', '2020-11-12', 'Дай лапу, Принеси, Сидеть'),
('Гуччи', '2019-05-05', 'Ко мне, Принеси, Прыжок, Сидеть'),
('Зефира', '2022-05-14', 'Дай лапу, Сидеть'),
('Лео', '2021-11-15', 'Голос, Прыжок, Сидеть'),
('Мурзик', '2017-10-11', 'Голос, Дай лапу, Ко мне, Ползи, Принеси, Прыжок, Служить, Сидеть'),
('Персик', '2021-09-10', 'Дай лапу, Принеси, Прыжок, Служить, Сидеть'),
('Селена', '2022-01-11', 'Принеси, Служить, Сидеть');

INSERT INTO hamsters (firstname, birthday, commands)
VALUES
('Афоня', '2024-05-23', 'Имя, Домик'),
('Боня', '2023-05-20', 'Имя'),
('Вилли', '2024-01-10', ''),
('Геша', '2022-10-15', ''),
('Жора', '2020-10-05', 'Имя, Домик'),
('Клепа', '2023-02-12', 'Имя'),
('Мася', '2022-12-19', 'Имя, Домик'),
('Сеня', '2021-10-17', 'Домик'),
('Филя', '2021-12-23', 'Имя'),
('Яшка', '2022-02-18', '');

INSERT INTO horses (firstname, birthday, commands)
VALUES
('Агат', '2022-07-23', 'Встать, Вперед, Лечь, Назад, Кругом, Стой'),
('Аврора', '2021-01-20', 'Встать, Вперед, Галоп, Лечь, Назад, Кругом, Рысь, Стой, Шаг'),
('Буян', '2022-01-10', 'Встать, Вперед, Галоп, Лечь, Назад, Стой'),
('Валет', '2020-11-15', 'Встать, Вперед, Галоп, Лечь, Назад, Кругом, Рысь, Стой, Шаг'),
('Комета', '2020-02-05', 'Барьер, Встать, Вперед, Галоп, Лечь, Назад, Кругом, Рысь, Стой, Шаг'),
('Марсель', '2018-04-12', 'Барьер, Встать, Вперед, Галоп, Гох, Карьер, Лечь, Назад, Кругом, Рысь, Стой, Шаг'),
('Лаванда', '2021-12-10', 'Встать, Вперед, Галоп, Лечь, Назад, Кругом, Рысь, Стой, Шаг'),
('Николь', '2020-05-15', 'Барьер, Встать, Вперед, Галоп, Лечь, Назад, Кругом, Рысь, Стой, Шаг'),
('Оскар', '2019-10-12', 'Барьер, Встать, Вперед, Галоп, Гох, Лечь, Назад, Кругом, Рысь, Стой, Шаг'),
('Янтарь', '2020-03-15', 'Встать, Вперед, Галоп, Карьер, Лечь, Назад, Кругом, Рысь, Стой, Шаг');

INSERT INTO camels (firstname, birthday, commands)
VALUES
('Альбатрос', '2019-05-12', 'Встать, Вперед, Лечь, Назад, Стой'),
('Гарнель', '2017-03-20', 'Встать, Вперед, Галоп, Лечь, Назад, Стой'),
('Джокер', '2022-01-10', 'Встать, Вперед, Лечь, Стой'),
('Жаде', '2018-10-13', 'Встать, Вперед, Галоп, Лечь, Назад, Стой'),
('Кэмерон', '2020-08-05', 'Встать, Вперед, Лечь, Назад, Стой'),
('Омлет', '2018-03-11', 'Встать, Вперед, Галоп, Лечь, Назад, Кругом,Стой'),
('Петрос', '2021-12-11', 'Встать, Вперед, Лечь, Назад, Стой'),
('Риан', '2018-06-15', 'Встать, Вперед, Галоп, Лечь, Назад, Стой'),
('Сугар', '2019-09-12', 'Встать, Вперед, Галоп, Лечь, Назад, Кругом, Стой'),
('Фараон', '2020-03-15', 'Встать, Вперед, Лечь, Назад, Стой');

INSERT INTO donkeys (firstname, birthday, commands)
VALUES
('Артуро', '2018-08-14', 'Вперед, Стой'),
('Бони', '2019-06-20', 'Вперед, Назад, Стой'),
('Джексон', '2022-03-10', 'Вперед, Стой'),
('Дора', '2018-10-13', 'Вперед, Назад, Стой'),
('Кэмерон', '2021-10-05', 'Вперед, Стой'),
('Кобэ', '2018-11-01', 'Вперед, Стой'),
('Лора', '2021-12-11', 'Вперед, Стой'),
('Маркос', '2018-10-16', 'Вперед, Назад, Стой'),
('Торо', '2019-04-19', 'Вперед, Стой'),
('Чоко', '2020-06-18', 'Вперед, Стой');

-- Удаляем из таблицы верблюдов -------------------------------------
TRUNCATE TABLE camels;
SELECT * FROM camels;

-- Объединяем таблицы лошади и ослы ---------------------------------
-- var.1
SELECT id, firstname, birthday, commands FROM horses 
UNION ALL SELECT id, firstname, birthday, commands FROM donkeys;

-- var.2
CREATE TABLE `друзья_человека`.`horses_and_donkeys` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `birthday` DATE NOT NULL,
  `commands` VARCHAR(150) NULL,
  PRIMARY KEY (`id`));

INSERT INTO horses_and_donkeys (firstname, birthday, commands)
SELECT firstname, birthday, commands
FROM horses;

INSERT INTO horses_and_donkeys (firstname, birthday, commands)
SELECT firstname, birthday, commands
FROM donkeys;

SELECT * FROM horses_and_donkeys;

-- Объединяем все таблицы в одну ------------------------------------
CREATE TABLE `друзья_человека`.`animals_all` (
  `id` INT AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `birthday` DATE NOT NULL,
  `commands` VARCHAR(150) NULL,
  `source_table` VARCHAR(50),
  PRIMARY KEY (`id`));

INSERT INTO all_animals (firstname, birthday, commands, source_table)
SELECT firstname, birthday, commands, 'dogs' AS source_table
FROM dogs;

INSERT INTO all_animals (firstname, birthday, commands, source_table)
SELECT firstname, birthday, commands, 'cats' AS source_table
FROM cats;

INSERT INTO all_animals (firstname, birthday, commands, source_table)
SELECT firstname, birthday, commands, 'hamsters' AS source_table
FROM hamsters;

INSERT INTO all_animals (firstname, birthday, commands, source_table)
SELECT firstname, birthday, commands, 'horses' AS source_table
FROM horses;

INSERT INTO all_animals (firstname, birthday, commands, source_table)
SELECT firstname, birthday, commands, 'camels' AS source_table
FROM camels;

INSERT INTO all_animals (firstname, birthday, commands, source_table)
SELECT firstname, birthday, commands, 'donkeys' AS source_table
FROM donkeys;

SELECT * FROM animals_all;

-- Объединяем молодых животных --------------------------------------
CREATE TABLE `друзья_человека`.`animals_young` (
  `id` INT AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `birthday` DATE NOT NULL,
  `commands` VARCHAR(150) NULL,
  `age_months` INT,
  `source_table` VARCHAR(50),  
  PRIMARY KEY (`id`));

INSERT INTO animals_young (firstname, birthday, commands, age_months, source_table)
SELECT firstname, birthday, commands, 
       TIMESTAMPDIFF(MONTH, birthday, CURDATE()) AS age_months,
       'dogs' AS source_table
FROM dogs
WHERE birthday BETWEEN DATE_SUB(CURDATE(), INTERVAL 3 YEAR) AND DATE_SUB(CURDATE(), INTERVAL 1 YEAR); 

INSERT INTO animals_young (firstname, birthday, commands, age_months, source_table)
SELECT firstname, birthday, commands, 
       TIMESTAMPDIFF(MONTH, birthday, CURDATE()) AS age_months,
       'cats' AS source_table
FROM cats
WHERE birthday BETWEEN DATE_SUB(CURDATE(), INTERVAL 3 YEAR) AND DATE_SUB(CURDATE(), INTERVAL 1 YEAR); 

INSERT INTO animals_young (firstname, birthday, commands, age_months, source_table)
SELECT firstname, birthday, commands, 
       TIMESTAMPDIFF(MONTH, birthday, CURDATE()) AS age_months,
       'hamsters' AS source_table
FROM hamsters
WHERE birthday BETWEEN DATE_SUB(CURDATE(), INTERVAL 3 YEAR) AND DATE_SUB(CURDATE(), INTERVAL 1 YEAR); 

INSERT INTO animals_young (firstname, birthday, commands, age_months, source_table)
SELECT firstname, birthday, commands, 
       TIMESTAMPDIFF(MONTH, birthday, CURDATE()) AS age_months,
       'horses' AS source_table
FROM horses
WHERE birthday BETWEEN DATE_SUB(CURDATE(), INTERVAL 3 YEAR) AND DATE_SUB(CURDATE(), INTERVAL 1 YEAR); 

INSERT INTO animals_young (firstname, birthday, commands, age_months, source_table)
SELECT firstname, birthday, commands, 
       TIMESTAMPDIFF(MONTH, birthday, CURDATE()) AS age_months,
       'camels' AS source_table
FROM camels
WHERE birthday BETWEEN DATE_SUB(CURDATE(), INTERVAL 3 YEAR) AND DATE_SUB(CURDATE(), INTERVAL 1 YEAR); 

INSERT INTO animals_young (firstname, birthday, commands, age_months, source_table)
SELECT firstname, birthday, commands, 
       TIMESTAMPDIFF(MONTH, birthday, CURDATE()) AS age_months,
       'donkeys' AS source_table
FROM donkeys
WHERE birthday BETWEEN DATE_SUB(CURDATE(), INTERVAL 3 YEAR) AND DATE_SUB(CURDATE(), INTERVAL 1 YEAR); 

SELECT * FROM animals_young;






