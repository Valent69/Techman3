-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 05 2022 г., 13:34
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `coin`
--

-- --------------------------------------------------------

--
-- Структура таблицы `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `checkoutName` varchar(50) NOT NULL,
  `checkoutLastname` varchar(50) NOT NULL,
  `checkoutCompany` varchar(50) NOT NULL,
  `checkoutCountry` varchar(50) NOT NULL,
  `checkoutAddress` varchar(100) NOT NULL,
  `checkoutZipcode` int(10) NOT NULL,
  `checkoutCity` varchar(50) NOT NULL,
  `checkoutPhone` int(50) NOT NULL,
  `checkoutEmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `checkout`
--

INSERT INTO `checkout` (`id`, `checkoutName`, `checkoutLastname`, `checkoutCompany`, `checkoutCountry`, `checkoutAddress`, `checkoutZipcode`, `checkoutCity`, `checkoutPhone`, `checkoutEmail`) VALUES
(1, 'Botezatu', 'Valentin', 'Orizont', 'Monaco', 'str.UNO/1', 1124, 'Gosty', 455645656, 'elev@giast.com'),
(2, 'Ghioltosu', 'Maria', 'Suprem', 'Moldova', 'str.UNO/1', 5347, '', 455645656, 'elev@giast.com'),
(3, 'Ghioltosu', 'Maria', 'Suprem', 'Moldova', 'str.UNO/1', 5347, 'Gosty', 455645656, 'elev@giast.com'),
(4, 'Botezatu', 'Valentin', 'Orizont', 'Moldova', 'str.UNO/1', 5347, 'Gosty', 455645656, 'elev@giast.com');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
