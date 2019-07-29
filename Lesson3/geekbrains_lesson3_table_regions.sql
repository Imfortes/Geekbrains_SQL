
-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

CREATE TABLE `regions` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `regions`
--

INSERT INTO `regions` (`id`, `title`, `country_id`) VALUES
(2, 'Тохоку', 392),
(3, 'Канто', 392),
(10, 'Хубэй', 156),
(16, 'Цинхай', 156),
(19, 'Кентукки', 840),
(31, 'Флорида', 840),
(33, 'Владимирская область', 643),
(38, 'Канзас', 840),
(50, 'Московская область', 643);
