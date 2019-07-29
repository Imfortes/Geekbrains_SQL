
-- --------------------------------------------------------

--
-- Структура для представления `emp1`
--
DROP TABLE IF EXISTS `emp1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emp1`  AS  select `staff`.`name` AS `name`,`staff`.`last_name` AS `last_name`,`staff`.`department` AS `department`,`staff`.`position` AS `position` from `staff` ;
