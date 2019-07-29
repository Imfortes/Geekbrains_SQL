
-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id-city` int(10) NOT NULL,
  `id-area` int(10) NOT NULL,
  `id-region` int(10) NOT NULL,
  `id-country` int(10) NOT NULL,
  `title-city-ru` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title-city-eng` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id-city`, `id-area`, `id-region`, `id-country`, `title-city-ru`, `title-city-eng`) VALUES
(1, 49231, 33, 643, 'город Суздаль', 'Suzdal city'),
(2, 49231, 33, 643, 'посёлок Боголюбово', 'village Bogolyubovo');
