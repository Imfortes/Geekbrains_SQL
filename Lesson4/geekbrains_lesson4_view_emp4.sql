
-- --------------------------------------------------------

--
-- Структура для представления `emp4`
--
DROP TABLE IF EXISTS `emp4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emp4`  AS  select `staff`.`department` AS `Отдел`,count(0) AS `Количество_сотрудников`,sum(`staff`.`salary`) AS `Сумма_выплат_по_отделу` from `staff` group by `staff`.`department` ;
