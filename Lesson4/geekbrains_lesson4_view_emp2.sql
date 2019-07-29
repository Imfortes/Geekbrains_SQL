
-- --------------------------------------------------------

--
-- Структура для представления `emp2`
--
DROP TABLE IF EXISTS `emp2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emp2`  AS  select concat(`staff`.`name`,' ',`staff`.`last_name`) AS `ФИО`,`staff`.`position` AS `Должность`,`staff`.`salary` AS `Зарплата`,`departments`.`name` AS `Отдел`,`dates`.`entrance` AS `entrance`,`dates`.`layoff` AS `layoff` from ((`staff` left join `departments` on(`staff`.`department` = `departments`.`id`)) left join `dates` on(`staff`.`id` = `dates`.`emp_id`)) ;
