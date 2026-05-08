CREATE TABLE repeat_student(
       RegNo VARCHAR(15),
       Course_Code VARCHAR(15),
       Grade VARCHAR(2),
       SGPA DECIMAL(3,2),
       CGPA DECIMAL(3,2),
   
       FOREIGN KEY (RegNo)
           REFERENCES student(RegNo),
   
      FOREIGN KEY (Course_Code)
           REFERENCES course(Course_Code)
    );



CREATE TABLE L1_S2_SGPA(
RegNo VARCHAR(15),
FOREIGN KEY (RegNo)
           REFERENCES student(RegNo),
SGPA DECIMAL(3,2),
CGPA DECIMAL(3,2)
);


INSERT INTO repeat_student(RegNo,Course_Code,Grade)
VALUES("TG/2023/2010","ICT1232","C"),
("TG/2023/2010","ICT1261","C"),
("TG/2023/2011","ICT1232","C"),
("TG/2023/2012","ICT1241","C"),
("TG/2023/2013","ICT1261","EE"),
("TG/2023/2014","ICT1241","C");

INSERT INTO L1_S2_SGPA(RegNo, SGPA, CGPA)
VALUES
("TG/2023/2010", 2.45, 2.50),
("TG/2023/2011", 1.90, 2.10),
("TG/2023/2012", 2.30, 2.40),
("TG/2023/2013", 1.75, 1.95),
("TG/2023/2014", 2.10, 2.20);







