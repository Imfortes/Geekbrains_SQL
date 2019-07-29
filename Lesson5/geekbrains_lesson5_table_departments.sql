
-- --------------------------------------------------------

--
-- Структура таблицы `departments`
--

CREATE TABLE `departments` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) UNSIGNED DEFAULT 0,
  `head_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `departments`
--

INSERT INTO `departments` (`id`, `name`, `count`, `head_id`) VALUES
(1, 'Администрация', 2, NULL),
(2, 'Отдел кадров', 1, NULL),
(3, 'Бухгалтерия', 2, NULL),
(4, 'Юридический отдел', 1, NULL),
(5, 'IT отдел', 3, NULL),
(6, 'Отдел маркетинга', 1, NULL),
(7, 'Отдел продаж', 2, NULL),
(8, 'Охрана', 2, NULL);
