DELIMITER $$

CREATE PROCEDURE calculate_result(IN p_id INT)
BEGIN
    DECLARE total_marks INT;

    SELECT SUM(marks)
    INTO total_marks
    FROM marks
    WHERE student_id = p_id;

    SELECT CONCAT('Total Marks: ', total_marks) AS Result;
END $$

DELIMITER ;
