
-- --------------------------------------------------------

--
-- Структура для представления `emp3`
--
DROP TABLE IF EXISTS `emp3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emp3`  AS  select concat(`staff`.`name`,' ',`staff`.`last_name`) AS `CONCAT(name, " ", last_name)`,`staff`.`department` AS `department`,`staff`.`salary` AS `salary` from `staff` where `staff`.`salary` <= (select avg(`staff`.`salary`) from `staff`) ;
