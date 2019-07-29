
-- --------------------------------------------------------

--
-- Структура таблицы `dates`
--

CREATE TABLE `dates` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `entrance` date DEFAULT NULL,
  `layoff` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
