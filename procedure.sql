--To get the marks of one student--

DELIMITER //

CREATE PROCEDURE Get_Student_Marks(IN student_regno VARCHAR(15))
BEGIN
SELECT * FROM Final_Mark 
WHERE RegNo = student_regno;
END //

DELIMITER ;



--To get the marks of all students for a course--

DELIMITER //

CREATE PROCEDURE Get_Subject_Marks(IN subject_code VARCHAR(15))
BEGIN
SELECT * FROM Final_Mark
WHERE Course_Code = subject_code;
END //

DELIMITER ;



--To get marks of whole batch--

DELIMITER //

CREATE PROCEDURE Get_Marks()
BEGIN
SELECT * FROM Final_Mark;
END //

DELIMITER ;





--To get the grades of one student--

DELIMITER //

CREATE PROCEDURE Get_Student_Grades(IN student_regno VARCHAR(15))
BEGIN
SELECT * FROM L1_S2_Grades
WHERE RegNo = student_regno;
END //

DELIMITER ;



--To get the grades of all students for a course--

DELIMITER //

CREATE PROCEDURE Get_Course_Grades(IN subject_code VARCHAR(15))
BEGIN
SELECT RegNo, Course_Code, Grade
FROM Final_Grades WHERE Course_Code = subject_code
ORDER BY RegNo;
END //

DELIMITER ;




--To get the results of one student--

DELIMITER //

CREATE PROCEDURE Get_Student_Result(IN student_regno VARCHAR(15))
BEGIN
SELECT * FROM L1_S2_Results
WHERE RegNo = student_regno;
END //

DELIMITER ;



--To get the results of all students for a course--

DELIMITER //

CREATE PROCEDURE Get_Subject_Result(IN subject_code VARCHAR(15))
BEGIN
SELECT RegNo, Course_Code, Final_Mark, Grade FROM Final_Grades
WHERE Course_Code = subject_code;
END //

DELIMITER ;


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































