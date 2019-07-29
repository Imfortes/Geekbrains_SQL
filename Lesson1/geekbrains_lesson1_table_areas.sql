
-- --------------------------------------------------------

--
-- Структура таблицы `areas`
--

CREATE TABLE `areas` (
  `id-area` int(10) NOT NULL,
  `id-region` int(10) NOT NULL,
  `id-country` int(10) NOT NULL,
  `title-area-ru` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title-area-en` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `areas`
--

INSERT INTO `areas` (`id-area`, `id-region`, `id-country`, `title-area-ru`, `title-area-en`) VALUES
(4, 1, 392, 'Мияги ', 'Miyagi'),
(5, 1, 392, 'Акита ', 'Akita'),
(49231, 33, 643, 'Суздальский район', 'Suzdal district'),
(49244, 33, 643, 'Александровский район', 'Alexandrovsky district');
