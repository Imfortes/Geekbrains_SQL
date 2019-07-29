
-- --------------------------------------------------------

--
-- Структура таблицы `salary`
--

CREATE TABLE `salary` (
  `id` int(11) UNSIGNED NOT NULL,
  `emp_id` int(11) NOT NULL,
  `paydate` date DEFAULT NULL,
  `payoff` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `salary`
--

INSERT INTO `salary` (`id`, `emp_id`, `paydate`, `payoff`) VALUES
(1, 15, '2019-07-18', 30000),
(2, 16, '2019-07-18', 30000),
(3, 14, '2019-07-18', 30000),
(4, 17, '2019-07-18', 30000),
(5, 18, '2019-07-18', 30000),
(6, 19, '2019-07-18', 20000);
