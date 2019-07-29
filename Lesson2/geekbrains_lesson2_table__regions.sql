
-- --------------------------------------------------------

--
-- Структура таблицы `_regions`
--

CREATE TABLE `_regions` (
  `id` int(11) NOT NULL,
  `country-id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
