-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 25 2020 г., 15:27
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `polls`
--

-- --------------------------------------------------------

--
-- Структура таблицы `polls`
--

CREATE TABLE `polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `polls`
--

INSERT INTO `polls` (`id`, `name`, `status`) VALUES
(4, 'Сессия #1', 1),
(8, 'Сессия #2', 1),
(9, 'asfasfasf', 0),
(12, '1231232123', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `quastions`
--

CREATE TABLE `quastions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `options` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `quastions`
--

INSERT INTO `quastions` (`id`, `poll_id`, `name`, `type`, `options`) VALUES
(10, 8, 'asdasd', 1, 'a:1:{s:0:\"\";s:1:\"0\";}'),
(11, 8, 'asdasdsdfn', 1, 'a:1:{s:0:\"\";s:1:\"0\";}'),
(12, 8, 'asdasdzxvzxv', 3, 'a:1:{s:0:\"\";s:1:\"0\";}'),
(13, 8, 'zxvxcvnxcvn', 4, 'a:1:{s:0:\"\";s:1:\"0\";}'),
(20, 4, 'Числовое поле', 1, 'a:1:{s:0:\"\";s:1:\"0\";}'),
(21, 4, 'Положительное число', 2, 'a:1:{s:0:\"\";s:1:\"0\";}'),
(22, 4, 'Строка', 3, 'a:1:{s:0:\"\";s:1:\"0\";}'),
(23, 4, 'Текстовое поле', 4, 'a:1:{s:0:\"\";s:1:\"0\";}'),
(24, 4, 'Селекты', 5, 'a:3:{s:17:\"Селект №1\";s:4:\"-100\";s:17:\"Селект №2\";s:1:\"0\";s:17:\"Селект №3\";s:3:\"100\";}'),
(25, 4, 'Чекбоксы', 6, 'a:3:{s:19:\"Чекбокс №1\";s:4:\"-100\";s:19:\"Чекбокс №2\";s:1:\"0\";s:19:\"Чекбокс №3\";s:3:\"100\";}'),
(26, 9, 'asfasf', 5, 'a:2:{s:0:\"\";s:1:\"0\";s:8:\"qwrwrwqr\";s:1:\"0\";}'),
(33, 12, 'asdgasdgsdag', 5, 'a:2:{s:9:\"asdasdasd\";s:1:\"0\";s:12:\"asdasdasd222\";s:2:\"12\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(32) NOT NULL,
  `results` text NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `results`
--

INSERT INTO `results` (`id`, `poll_id`, `link`, `results`, `title`) VALUES
(1, 8, '0d05c3ad78ee7d19296982dadde5c5b9', '', 'Тест 1'),
(3, 8, '6c303ace0c91c76038cfe41333e9e420', '', 'Тест 2'),
(4, 4, '758f6d3ea8624c45cd837f5e8f76574d', '', 'Тест 1'),
(5, 12, 'c322a3817c54df5659a838d1d0b0134b', '', 'asd');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `quastions`
--
ALTER TABLE `quastions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`);

--
-- Индексы таблицы `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `polls`
--
ALTER TABLE `polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `quastions`
--
ALTER TABLE `quastions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
