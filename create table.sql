mysql> create database university_db;
Query OK, 1 row affected (0.16 sec)


mysql> use university_db;
Database changed


mysql> create table student(
    -> RegNo varchar(15) primary key,
    -> Full_Name varchar(100),
    -> Date_of_Birth date,
    -> Gender varchar(15),
    -> Address varchar(50),
    -> Contact_Number varchar(15),
    -> Status varchar(15)
    -> );
Query OK, 0 rows affected (0.19 sec)


mysql> desc student;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| RegNo          | varchar(15)  | NO   | PRI | NULL    |       |
| Full_Name      | varchar(100) | YES  |     | NULL    |       |
| Date_of_Birth  | date         | YES  |     | NULL    |       |
| Gender         | varchar(15)  | YES  |     | NULL    |       |
| Address        | varchar(50)  | YES  |     | NULL    |       |
| Contact_Number | varchar(15)  | YES  |     | NULL    |       |
| Status         | varchar(15)  | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
7 rows in set (0.11 sec)


mysql> create table course(
    -> Course_Code varchar(15) primary key,
    -> Course_Name varchar(50),
    -> Credits int,
    -> Course_Type varchar(15),
    -> Lecture_Id varchar(15)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> desc course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Course_Code | varchar(15) | NO   | PRI | NULL    |       |
| Course_Name | varchar(50) | YES  |     | NULL    |       |
| Credits     | int         | YES  |     | NULL    |       |
| Course_Type | varchar(15) | YES  |     | NULL    |       |
| Lecture_Id  | varchar(15) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)



mysql> create table lecture(
    -> Lecture_Id varchar(15) primary key,
    -> Full_Name varchar(100),
    -> Email varchar(50),
    -> Contact_Number varchar(15),
    -> Department varchar(30),
    -> Qualification varchar(100)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> desc lecture;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| Lecture_Id     | varchar(15)  | NO   | PRI | NULL    |       |
| Full_Name      | varchar(100) | YES  |     | NULL    |       |
| Email          | varchar(50)  | YES  |     | NULL    |       |
| Contact_Number | varchar(15)  | YES  |     | NULL    |       |
| Department     | varchar(30)  | YES  |     | NULL    |       |
| Qualification  | varchar(100) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
6 rows in set (0.01 sec)



mysql> create table technical_officer(
    -> To_Id varchar(15) primary key,
    -> Full_Name varchar(100),
    -> Email varchar(50),
    -> Contact_Number varchar(50),
    -> Assigned_Lab varchar(30)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> desc technical_officer;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| To_Id          | varchar(15)  | NO   | PRI | NULL    |       |
| Full_Name      | varchar(100) | YES  |     | NULL    |       |
| Email          | varchar(50)  | YES  |     | NULL    |       |
| Contact_Number | varchar(50)  | YES  |     | NULL    |       |
| Assigned_Lab   | varchar(30)  | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)



mysql> create table enrollment(
    -> Enrollment_Id varchar(15) primary key,
    -> Reg_no varchar(15),
    -> Course_Code varchar(15)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> desc enrollment;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Enrollment_Id | varchar(15) | NO   | PRI | NULL    |       |
| Reg_no        | varchar(15) | YES  |     | NULL    |       |
| Course_Code   | varchar(15) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)



mysql> create table attendence(
    -> Attendace_Id varchar(15) primary key,
    -> RegNO varchar(15),
    -> Course_Code varchar(15),
    -> Date date,
    -> Session_Type varchar(15),
    -> Status varchar(15),
    -> Medical varchar(5)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> desc attendence;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| Attendace_Id | varchar(15) | NO   | PRI | NULL    |       |
| Reg_NO       | varchar(15) | YES  |     | NULL    |       |
| Course_Code  | varchar(15) | YES  |     | NULL    |       |
| Date         | date        | YES  |     | NULL    |       |
| Session_Type | varchar(15) | YES  |     | NULL    |       |
| Status       | varchar(15) | YES  |     | NULL    |       |
| Medical      | varchar(5)  | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)



mysql> create table marks(
    -> Marks_Id varchar(15) primary key,
    -> RegNo varchar(15),
    -> Course_Code varchar(15),
    -> Quiz_Marks decimal(3,2),
    -> Assignment_Marks decimal(3,2),
    -> Mid_Theory_Marks decimal(3,2),
    -> Mid_Practical_Marks decimal(3,2),
    -> Final_Theory_Marks decimal(3,2),
    -> Final_Practical_Marks decimal(3,2)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> desc marks;
+-----------------------+--------------+------+-----+---------+-------+
| Field                 | Type         | Null | Key | Default | Extra |
+-----------------------+--------------+------+-----+---------+-------+
| Marks_Id              | varchar(15)  | NO   | PRI | NULL    |       |
| RegNo                 | varchar(15)  | YES  |     | NULL    |       |
| Course_Code           | varchar(15)  | YES  |     | NULL    |       |
| Quiz_Marks            | decimal(3,2) | YES  |     | NULL    |       |
| Assignment_Marks      | decimal(3,2) | YES  |     | NULL    |       |
| Mid_Theory_Marks      | decimal(3,2) | YES  |     | NULL    |       |
| Mid_Practical_Marks   | decimal(3,2) | YES  |     | NULL    |       |
| Final_Theory_Marks    | decimal(3,2) | YES  |     | NULL    |       |
| Final_Practical_Marks | decimal(3,2) | YES  |     | NULL    |       |
+-----------------------+--------------+------+-----+---------+-------+
9 rows in set (0.00 sec)




mysql> create table result(
    -> Result_Id varchar(15) primary key,
    -> RegNo varchar(15),
    -> Course_Code varchar(15),
    -> CA_Marks decimal(3,2),
    -> Final_Marks decimal(3,2),
    -> Grade varchar(10),
    -> Eligibility varchar(20)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> desc result;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| Result_Id   | varchar(15)  | NO   | PRI | NULL    |       |
| RegNo       | varchar(15)  | YES  |     | NULL    |       |
| Course_Code | varchar(15)  | YES  |     | NULL    |       |
| CA_Marks    | decimal(3,2) | YES  |     | NULL    |       |
| Final_Marks | decimal(3,2) | YES  |     | NULL    |       |
| Grade       | varchar(10)  | YES  |     | NULL    |       |
| Eligibility | varchar(20)  | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)



mysql> create table user(
    -> User_Id varchar(15) primary key,
    -> User_Name varchar(100),
    -> Password varchar(15),
    -> Role varchar(15)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> desc user;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| User_Id   | varchar(15)  | NO   | PRI | NULL    |       |
| User_Name | varchar(100) | YES  |     | NULL    |       |
| Password  | varchar(15)  | YES  |     | NULL    |       |
| Role      | varchar(15)  | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)