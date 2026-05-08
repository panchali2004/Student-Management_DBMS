--Retrieves attendance percentage details of a specific student using the registration number--

DELIMITER //
   CREATE PROCEDURE GET_Attendance_Precentage(IN a_RegNo varchar(15))
     BEGIN
     SELECT *FROM attendance_percentage
     WHERE RegNo= a_RegNo;
     END //
DELIMITER ;

CALL GET_Attendance_Precentage('TG/2024/2061');



--Retrieves attendance percentage details of students for a specific course using the course code--

DELIMITER //
   CREATE PROCEDURE GET_Attendance_Course(IN c_code varchar(15))
     BEGIN
     SELECT *FROM attendance_percentage
     WHERE Course_Code= c_code;
     END //
DELIMITER ;

CALL GET_Attendance_Course('ICT1241');
