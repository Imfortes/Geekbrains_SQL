
-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id-country` int(10) NOT NULL,
  `title-country-ru` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title-country-en` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title-continent` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id-country`, `title-country-ru`, `title-country-en`, `title-continent`) VALUES
(392, 'Япония', 'Japan', 'Азия'),
(410, 'Корея', 'Korea', 'Азия'),
(643, 'Российская Федерация', 'Russia Federation', 'Европа'),
(840, 'Соединенные Штаты Америки', 'United States of America', 'Северная Америка');
