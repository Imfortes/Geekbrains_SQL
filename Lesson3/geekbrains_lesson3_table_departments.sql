
-- --------------------------------------------------------

--
-- Структура таблицы `departments`
--

CREATE TABLE `departments` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) UNSIGNED DEFAULT 0,
  `head_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `departments`
--

INSERT INTO `departments` (`id`, `title`, `count`, `head_id`) VALUES
(1, 'Администрация', 0, NULL),
(2, 'Отдел кадров', 0, NULL),
(3, 'Бухгалтерия', 0, NULL),
(4, 'Юридический отдел', 0, NULL),
(5, 'IT отдел', 0, NULL),
(6, 'Отдел маркетинга', 0, NULL),
(7, 'Отдел продаж', 0, NULL),
(8, 'Охрана', 0, NULL),
(9, 'Администрация', 0, NULL),
(10, 'Отдел кадров', 0, NULL),
(11, 'Бухгалтерия', 0, NULL),
(12, 'Юридический отдел', 0, NULL),
(13, 'IT отдел', 0, NULL),
(14, 'Отдел маркетинга', 0, NULL),
(15, 'Отдел продаж', 0, NULL),
(16, 'Охрана', 0, NULL);
