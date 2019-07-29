
-- --------------------------------------------------------

--
-- Структура таблицы `_countries`
--

CREATE TABLE `_countries` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `_countries`
--

INSERT INTO `_countries` (`id`, `title`) VALUES
(643, 'Россия');
