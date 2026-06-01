-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 01 2026 г., 20:39
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `demo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `pickup_ponts`
--

CREATE TABLE `pickup_ponts` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `pickup_ponts`
--

INSERT INTO `pickup_ponts` (`id`, `address`) VALUES
(1, '420151, г. Лесной, ул. Вишневая, 32'),
(2, '125061, г. Лесной, ул. Подгорная, 8'),
(3, '630370, г. Лесной, ул. Шоссейная, 24'),
(4, '400562, г. Лесной, ул. Зеленая, 32'),
(5, '614510, г. Лесной, ул. Маяковского, 47'),
(6, '410542, г. Лесной, ул. Светлая, 46'),
(7, '620839, г. Лесной, ул. Цветочная, 8'),
(8, '443890, г. Лесной, ул. Коммунистическая, 1'),
(9, '603379, г. Лесной, ул. Спортивная, 46'),
(10, '603721, г. Лесной, ул. Гоголя, 41'),
(11, '410172, г. Лесной, ул. Северная, 13'),
(12, '614611, г. Лесной, ул. Молодежная, 50'),
(13, '454311, г.Лесной, ул. Новая, 19'),
(14, '660007, г.Лесной, ул. Октябрьская, 19'),
(15, '603036, г. Лесной, ул. Садовая, 4'),
(16, '394060, г.Лесной, ул. Фрунзе, 43'),
(17, '410661, г. Лесной, ул. Школьная, 50'),
(18, '625590, г. Лесной, ул. Коммунистическая, 20'),
(19, '625683, г. Лесной, ул. 8 Марта'),
(20, '450983, г.Лесной, ул. Комсомольская, 26'),
(21, '394782, г. Лесной, ул. Чехова, 3'),
(22, '603002, г. Лесной, ул. Дзержинского, 28'),
(23, '450558, г. Лесной, ул. Набережная, 30'),
(24, '344288, г. Лесной, ул. Чехова, 1'),
(25, '614164, г.Лесной,  ул. Степная, 30'),
(26, '394242, г. Лесной, ул. Коммунистическая, 43'),
(27, '660540, г. Лесной, ул. Солнечная, 25'),
(28, '125837, г. Лесной, ул. Шоссейная, 40'),
(29, '125703, г. Лесной, ул. Партизанская, 49'),
(30, '625283, г. Лесной, ул. Победы, 46'),
(31, '614753, г. Лесной, ул. Полевая, 35'),
(32, '426030, г. Лесной, ул. Маяковского, 44'),
(33, '450375, г. Лесной ул. Клубная, 44'),
(34, '625560, г. Лесной, ул. Некрасова, 12'),
(35, '630201, г. Лесной, ул. Комсомольская, 17'),
(36, '190949, г. Лесной, ул. Мичурина, 26');

-- --------------------------------------------------------

--
-- Структура таблицы `tovar`
--

CREATE TABLE `tovar` (
  `article` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `stock_quantity` int(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `tovar`
--

INSERT INTO `tovar` (`article`, `name`, `unit`, `price`, `supplier`, `manufacturer`, `category`, `discount`, `stock_quantity`, `description`, `image`) VALUES
('B320R5', 'Туфли', 'шт.', 4300.00, 'Kari', 'Rieker', 'Женская обувь', 2.00, 6, 'Туфли Rieker женские демисезонные, размер 41, цвет коричневый', '9.jpg'),
('D268G5', 'Туфли', 'шт.', 4399.00, 'Обувь для вас', 'Rieker', 'Женская обувь', 3.00, 12, 'Туфли Rieker женские демисезонные, размер 36, цвет коричневый', ''),
('D364R4', 'Туфли', 'шт.', 12400.00, 'Kari', 'Kari', 'Женская обувь', 16.00, 5, 'Туфли Luiza Belly женские Kate-lazo черные из натуральной замши', ''),
('D572U8', 'Кроссовки', 'шт.', 99.99, 'Обувь для вас', 'Рос', 'Мужская обувь', 3.00, 6, '129615-4 Кроссовки мужские', 'picture.png'),
('E482R4', 'Полуботинки', 'шт.', 1800.00, 'Kari', 'Kari', 'Женская обувь', 2.00, 14, 'Полуботинки kari женские MYZ20S-149, размер 41, цвет: черный', ''),
('F572H7', 'Туфли', 'шт.', 2700.00, 'Kari', 'Marco Tozzi', 'Женская обувь', 2.00, 14, 'Туфли Marco Tozzi женские летние, размер 39, цвет черный', '7.jpg'),
('G432E4', 'Туфли', 'шт.', 2800.00, 'Kari', 'Kari', 'Женская обувь', 3.00, 15, 'Туфли kari женские TR-YR-413017, размер 37, цвет: черный', '10.jpg'),
('H535R5', 'Ботинки', 'шт.', 2300.00, 'Обувь для вас', 'Rieker', 'Женская обувь', 2.00, 7, 'Женские Ботинки демисезонные', ''),
('H782T5', 'Туфли', 'шт.', 4499.00, 'Kari', 'Kari', 'Мужская обувь', 4.00, 5, 'Туфли kari мужские классика MYZ21AW-450A, размер 43, цвет: черный', '3.jpg'),
('J384T6', 'Ботинки', 'шт.', 3800.00, 'Обувь для вас', 'Rieker', 'Мужская обувь', 2.00, 16, 'B3430/14 Полуботинки мужские Rieker', '5.jpg'),
('J542F5', 'Тапочки', 'шт.', 500.00, 'Kari', 'Kari', 'Мужская обувь', 13.00, 0, 'Тапочки мужские Арт.70701-55-67син р.41', ''),
('K345R4', 'Полуботинки', 'шт.', 2100.00, 'Обувь для вас', 'CROSBY', 'Мужская обувь', 2.00, 3, '407700/01-02 Полуботинки мужские CROSBY', ''),
('K358H6', 'Тапочки', 'шт.', 599.00, 'Kari', 'Rieker', 'Мужская обувь', 20.00, 2, 'Тапочки мужские син р.41', ''),
('L754R4', 'Полуботинки', 'шт.', 1700.00, 'Kari', 'Kari', 'Женская обувь', 2.00, 7, 'Полуботинки kari женские WB2020SS-26, размер 38, цвет: черный', ''),
('M542T5', 'Кроссовки', 'шт.', 2800.00, 'Обувь для вас', 'Rieker', 'Мужская обувь', 18.00, 3, 'Кроссовки мужские TOFA', ''),
('N457T5', 'Полуботинки', 'шт.', 4600.00, 'Kari', 'CROSBY', 'Женская обувь', 3.00, 13, 'Полуботинки Ботинки черные зимние, мех', ''),
('O754F4', 'Туфли', 'шт.', 5400.00, 'Обувь для вас', 'Rieker', 'Женская обувь', 4.00, 18, 'Туфли женские демисезонные Rieker артикул 55073-68/37', ''),
('S213E3', 'Полуботинки', 'шт.', 2156.00, 'Обувь для вас', 'CROSBY', 'Мужская обувь', 3.00, 6, '407700/01-01 Полуботинки мужские CROSBY', ''),
('S326R5', 'Тапочки', 'шт.', 9900.00, 'Обувь для вас', 'CROSBY', 'Мужская обувь', 17.00, 15, 'Мужские кожаные тапочки \"Профиль С.Дали\" ', ''),
('S634B5', 'Кеды', 'шт.', 5500.00, 'Обувь для вас', 'CROSBY', 'Мужская обувь', 3.00, 0, 'Кеды Caprice мужские демисезонные, размер 42, цвет черный', ''),
('T324F5', 'Сапоги', 'шт.', 4699.00, 'Kari', 'CROSBY', 'Женская обувь', 2.00, 5, 'Сапоги замша Цвет: синий', ''),
('А112Т4', 'Ботинки', 'шт.', 4990.00, 'Kari', 'Kari', 'Женская обувь', 3.00, 6, 'Женские Ботинки демисезонные kari', '1.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `tovar_zakaz`
--

CREATE TABLE `tovar_zakaz` (
  `id` int(11) NOT NULL,
  `id_zakaz` int(11) NOT NULL,
  `id_article` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `tovar_zakaz`
--

INSERT INTO `tovar_zakaz` (`id`, `id_zakaz`, `id_article`, `quantity`) VALUES
(1, 1, 'А112Т4', 2),
(2, 1, 'H782T5', 1),
(3, 2, 'J384T6', 10),
(4, 2, 'F572H7', 5),
(5, 3, 'А112Т4', 2),
(6, 3, 'H782T5', 1),
(7, 4, 'J384T6', 10),
(8, 4, 'F572H7', 5),
(9, 5, 'B320R5', 5),
(10, 5, 'S213E3', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role`, `full_name`, `login`, `password`) VALUES
(2, 'Администратор', 'Сазонов Руслан Германович', 'admin', 'admin'),
(3, 'Администратор', 'Одинцов Серафим Артёмович', 'yzls62@outlook.com', 'JlFRCZ'),
(4, 'Менеджер', 'Степанов Михаил Артёмович', 'manager', 'manager'),
(5, 'Менеджер', 'Ворсин Петр Евгеньевич', 'tjde7c@yahoo.com', 'YOyhfR'),
(6, 'Менеджер', 'Старикова Елена Павловна', 'wpmrc3do@tutanota.com', 'RSbvHv'),
(7, 'Авторизированный клиент', 'Михайлюк Анна Вячеславовна', '5d4zbu@tutanota.com', 'rwVDh9'),
(8, 'Авторизированный клиент', 'Ситдикова Елена Анатольевна', 'ptec8ym@yahoo.com', 'LdNyos'),
(9, 'Авторизированный клиент', 'Ворсин Петр Евгеньевич', '1qz4kw@mail.com', 'gynQMT'),
(10, 'Авторизированный клиент', 'Старикова Елена Павловна', '4np6se@mail.com', 'AtnDjr');

-- --------------------------------------------------------

--
-- Структура таблицы `zakaz`
--

CREATE TABLE `zakaz` (
  `id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `deleviry_date` date NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_points` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `zakaz`
--

INSERT INTO `zakaz` (`id`, `order_date`, `deleviry_date`, `code`, `status`, `id_points`, `id_user`) VALUES
(1, '2025-02-27', '2025-04-20', '901', 'Завершен', 1, 5),
(2, '2022-09-28', '2025-04-21', '902', 'Завершен', 11, 2),
(3, '2025-03-21', '2025-04-22', '903', 'Завершен', 2, 3),
(4, '2025-02-20', '2025-04-23', '904', 'Завершен', 11, 4),
(5, '2025-03-17', '2025-04-24', '905', 'Завершен', 2, 5),
(6, '2025-03-01', '2025-04-25', '906', 'Завершен', 15, 2),
(7, '0000-00-00', '2025-04-26', '907', 'Завершен', 3, 3),
(8, '2025-03-31', '2025-04-27', '908', 'Новый ', 19, 4),
(9, '2025-04-02', '2025-04-28', '909', 'Новый ', 5, 5),
(10, '2025-04-03', '2025-04-29', '910', 'Новый ', 19, 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pickup_ponts`
--
ALTER TABLE `pickup_ponts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD PRIMARY KEY (`article`);

--
-- Индексы таблицы `tovar_zakaz`
--
ALTER TABLE `tovar_zakaz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_article` (`id_article`),
  ADD KEY `id_zakaz` (`id_zakaz`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `zakaz`
--
ALTER TABLE `zakaz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_points` (`id_points`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pickup_ponts`
--
ALTER TABLE `pickup_ponts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `tovar_zakaz`
--
ALTER TABLE `tovar_zakaz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `zakaz`
--
ALTER TABLE `zakaz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tovar_zakaz`
--
ALTER TABLE `tovar_zakaz`
  ADD CONSTRAINT `tovar_zakaz_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `tovar` (`article`),
  ADD CONSTRAINT `tovar_zakaz_ibfk_2` FOREIGN KEY (`id_zakaz`) REFERENCES `zakaz` (`id`);

--
-- Ограничения внешнего ключа таблицы `zakaz`
--
ALTER TABLE `zakaz`
  ADD CONSTRAINT `zakaz_ibfk_1` FOREIGN KEY (`id_points`) REFERENCES `pickup_ponts` (`id`),
  ADD CONSTRAINT `zakaz_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
