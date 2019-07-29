
-- --------------------------------------------------------

--
-- Структура таблицы `staff`
--

CREATE TABLE `staff` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` int(11) UNSIGNED NOT NULL,
  `position` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `staff`
--

INSERT INTO `staff` (`id`, `title`, `name`, `last_name`, `department`, `position`, `salary`) VALUES
(1, '', 'Иван', 'Мартынов', 1, 'Генеральный директор', 110000),
(2, '', 'Петр', 'Гришин', 1, 'Финансовый директор', 105000),
(3, '', 'Андрей', 'Меркушев', 2, 'Руководитель отдела кадров', 95000),
(4, '', 'Ольга', 'Богданова', 3, 'Главный бухгалтер', 90000),
(5, '', 'Оксана', 'Никонова', 3, 'Бухгалтер', 50000),
(6, '', 'Елена', 'Чернова', 4, 'Юрист', 60000),
(7, '', 'Глория', 'Кириллова', 5, 'Верстальщик', 50000),
(8, '', 'Петр', 'Громов', 5, 'Фронтэнд программист', 80000),
(9, '', 'Кирилл', 'Евсеев', 5, 'Бэкэнд программист', 80000),
(10, '', 'Дмитрий', 'Сорокин', 6, 'Маркетолог', 60000),
(11, '', 'Яна', 'Щербакова', 7, 'Менеджер по продажам', 50000),
(12, '', 'Кристина', 'Доронина', 7, 'Менеджер по продажам', 50000),
(13, '', 'Арсений', 'Голубев', 8, 'Начальник охраны', 80000),
(14, '', 'Самуил', 'Бобырев', 8, 'Охранник', 40000),
(15, '', 'Николай', 'Макуев', 4, 'Юрист', 55000);

--
-- Триггеры `staff`
--
DELIMITER $$
CREATE TRIGGER `trig1` AFTER INSERT ON `staff` FOR EACH ROW INSERT INTO dates (emp_id, entrance) VALUES(NEW.id, CURDATE())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trig2` BEFORE DELETE ON `staff` FOR EACH ROW UPDATE dates SET layoff = CURDATE() WHERE emp_id = OLD.id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trig3` AFTER INSERT ON `staff` FOR EACH ROW INSERT INTO salary (name, last_name, salary) VALUES(NEW.name, NEW.last_name, salary)
$$
DELIMITER ;
