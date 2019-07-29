
-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

CREATE TABLE `regions` (
  `id-region` int(10) NOT NULL,
  `id-country` int(10) NOT NULL,
  `title-region-ru` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title-region-en` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `regions`
--

INSERT INTO `regions` (`id-region`, `id-country`, `title-region-ru`, `title-region-en`) VALUES
(1, 392, 'Тохоку', 'Tohoku'),
(2, 392, 'Канто ', 'Kanto'),
(22, 643, 'Алтайский край', 'Altai region'),
(29, 643, 'Архангельская область', 'Arkhangelsk region'),
(33, 643, 'Владимирская область', 'Vladimir region'),
(40, 643, 'Калужская область', 'Kaluga region');
