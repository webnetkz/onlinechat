-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: srv-pleskdb28.ps.kz:3306
-- Время создания: Май 19 2020 г., 03:09
-- Версия сервера: 10.2.32-MariaDB
-- Версия PHP: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `webnetkz_easyfin`
--

-- --------------------------------------------------------

--
-- Структура таблицы `biks`
--

CREATE TABLE `biks` (
  `id` int(10) NOT NULL,
  `name` varchar(55) NOT NULL,
  `bik` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `biks`
--

INSERT INTO `biks` (`id`, `name`, `bik`) VALUES
(1, 'Altyn Bank', 'ATYNKZKA'),
(2, 'AsiaCredit Bank', 'LARIKZKA'),
(3, 'Bank RBK', 'KINCKZKA'),
(4, 'Capital Bank Kazakhstan', 'TBKBKZKA'),
(5, 'First Heartland Jýsan Bank', 'TSESKZKA'),
(6, 'ForteBank', 'IRTYKZKA'),
(7, 'Kaspi Bank', 'CASPKZKA'),
(8, 'Tengri Bank', 'TNGRKZKX'),
(9, 'АТФБанк', 'ALMNKZKA'),
(10, 'Банк Kassa Nova', 'KSNVKZKA'),
(11, 'Банк ЦентрКредит', 'KCJBKZKX'),
(12, 'ДБ \"Альфа-Банк\"', 'ALFAKZKA'),
(13, 'ДБ \"Банк Китая в Казахстане\"', 'BKCHKZKA'),
(14, 'ДБ «КЗИ Банк»', 'KZIBKZKA'),
(15, 'ДБ «Национальный Банк Пакистана»', 'NBPAKZKA'),
(16, 'ДБ АО \"Банк Хоум Кредит\"', 'INLMKZKA'),
(17, 'ДБ АО «Сбербанк России»', 'SABRKZKA'),
(18, 'ДО АО Банк ВТБ (Казахстан)', 'VTBAKZKZ'),
(19, 'Евразийский Банк', 'EURIKZKA'),
(20, 'Жилстройсбербанк Казахстана', 'HCSKKZKA'),
(21, 'Заман-Банк', 'ZAJSKZ22'),
(22, 'Исламский Банк \"Al-Hilal\"', 'HLALKZKZ'),
(23, 'Народный сберегательный банк Казахстана', 'HSBKKZKX'),
(24, 'Нурбанк', 'NURSKZKX'),
(25, 'Ситибанк Казахстан', 'CITIKZKA'),
(26, 'ТП Банк Китая в Алматы', 'ICBKKZKX'),
(27, 'Шинхан Банк Казахстан', 'SHBKKZKA');

-- --------------------------------------------------------

--
-- Структура таблицы `conter_agents`
--

CREATE TABLE `conter_agents` (
  `id` int(10) NOT NULL,
  `bin_iin` bigint(12) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `adres` varchar(400) NOT NULL,
  `bik` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `conter_agents`
--

INSERT INTO `conter_agents` (`id`, `bin_iin`, `name`, `adres`, `bik`) VALUES
(1, 991040001502, 'Тополь', 'Республика Казахстан, город  Алматы, улица Жамбула, дом 75, н.п. 27', 'KCJBKZKX');

-- --------------------------------------------------------

--
-- Структура таблицы `Invoice`
--

CREATE TABLE `Invoice` (
  `id` int(10) NOT NULL,
  `date` varchar(50) NOT NULL,
  `code` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `id` int(10) NOT NULL,
  `name` varchar(400) NOT NULL,
  `price` bigint(15) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `bin_iin` bigint(12) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `adres` varchar(400) DEFAULT NULL,
  `nds` tinyint(1) DEFAULT NULL,
  `bik` varchar(8) DEFAULT NULL,
  `iik` varchar(22) DEFAULT NULL,
  `kbe` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `bin_iin`, `name`, `adres`, `nds`, `bik`, `iik`, `kbe`) VALUES
(1, 160240008320, 'MM Group of Companies', 'Республика Казахстан, город Алматы, Алмалинский район, проспект Райымбека, дом № 251Г, офис 2/4', 0, 'KCJBKZKX', 'KZ148562203102353638', 17);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `biks`
--
ALTER TABLE `biks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `conter_agents`
--
ALTER TABLE `conter_agents`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Invoice`
--
ALTER TABLE `Invoice`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `biks`
--
ALTER TABLE `biks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `conter_agents`
--
ALTER TABLE `conter_agents`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `Invoice`
--
ALTER TABLE `Invoice`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
