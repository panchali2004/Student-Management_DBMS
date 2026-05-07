ysql> alter table technical_officer
    -> add foreign key(
    -> Dept_id)
    -> refernces Department(dept_id);
ERROR 1064 (42000): You have an err

mysql> alter table technical_officer
    -> add foreign key (dpt_Id)
    -> references department(Dept_id);
Query OK, 6 rows affected (0.10 sec)
Records: 6  Duplicates: 0  Warnings: 0


mysql> alter table student
    -> add foreign key(Dpt_Id)
    -> references department(Dept_id);
Query OK, 15 rows affected (0.09 sec)
Records: 15  Duplicates: 0  Warnings: 0

mysql> alter table technical_officer
    -> add foreign key(dpt_Id)
    -> references department(Dept_id);
Query OK, 6 rows affected (0.34 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> alter table lecture
    -> add foreign key(Dpt_Id)
    -> references department(Dept_id);
Query OK, 10 rows affected (0.07 sec)
Records: 10  Duplicates: 0  Warnings: 0


mysql> alter table enroll
    -> add foreign key (RegNo)
    -> references Student(RegNo);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`university_db`.`#sql-4494_9`, CONSTRAINT `#sql-4494_9_ibfk_1` FOREIGN KEY (`RegNo`) REFERENCES `student` (`RegNO`))



mysql> alter table enroll
    -> add foreign key (Regno)
    -> references student(RegNo);
Query OK, 96 rows affected (0.08 sec)
Records: 96  Duplicates: 0  Warnings: 0

mysql> alter table Attendence
    -> add foreign key (Regno)
    -> references student(RegNo);
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 

mysql> alter table Mark
    -> add foreign key (Regno)
    -> references student(RegNo);
Query OK, 90 rows affected (0.08 sec)
Records: 90  Duplicates: 0  Warnings: 0


mysql> alter table Mark
    -> add foreign key (Regno)
    -> references student(RegNo);
Query OK, 90 rows affected (0.08 sec)
Records: 90  Duplicates: 0  Warnings: 0

mysql> alter table Attendence
    -> add foreign key (Course_code)
    -> references Course(Course_code);
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table Medical
    -> add foreign key (Course_code)
    -> references Course(Course_code);
Query OK, 7 rows affected (0.07 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> alter table enroll
    -> add foreign key (Course_code)
    -> references Course(Course_code);
Query OK, 96 rows affected (0.09 sec)
Records: 96  Duplicates: 0  Warnings: 0

mysql> alter table lectures
    -> add foreign key (Course_code)
    -> references Course(Course_code);
Query OK, 9 rows affected (0.08 sec)