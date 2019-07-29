
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

--
-- Дамп данных таблицы `dates`
--

INSERT INTO `dates` (`id`, `emp_id`, `entrance`, `layoff`) VALUES
(1, 1, '2019-07-14', NULL),
(2, 2, '2019-07-14', NULL),
(3, 3, '2019-07-14', NULL),
(4, 4, '2019-07-14', NULL),
(5, 5, '2019-07-14', NULL),
(6, 6, '2019-07-14', NULL),
(7, 7, '2019-07-14', NULL),
(8, 8, '2019-07-14', NULL),
(9, 9, '2019-07-14', NULL),
(10, 10, '2019-07-14', NULL),
(11, 11, '2019-07-14', NULL),
(12, 12, '2019-07-14', NULL),
(13, 13, '2019-07-14', NULL),
(14, 14, '2019-07-14', NULL),
(15, 15, '2019-07-15', NULL),
(16, 16, '2019-07-15', '2019-07-15');
