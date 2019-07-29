
DELIMITER $$
--
-- Процедуры
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc1` (`depname` VARCHAR(40))  BEGIN
    	SET @x = (SELECT id from departments WHERE name = depname);
        SELECT * FROM staff WHERE department = @x;
    END$$

--
-- Функции
--
CREATE DEFINER=`root`@`localhost` FUNCTION `fun1` (`dep_id` INT) RETURNS INT(11) READS SQL DATA
    DETERMINISTIC
RETURN(SELECT COUNT(*) FROM departments WHERE id = dep_id)$$

CREATE DEFINER=`root`@`localhost` FUNCTION `func2` (`fio` VARCHAR(40)) RETURNS VARCHAR(40) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci READS SQL DATA
    DETERMINISTIC
RETURN(SELECT CONCAT(name, ' ', last_name) FROM staff WHERE fio = last_name)$$

DELIMITER ;
