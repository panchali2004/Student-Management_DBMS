mysql> create table user(
    -> NIC varchar(15) primary key,
    -> First_Name varchar(20),
    -> Last_Name varchar(20),
    -> Date_of_Birth varchar(20),
    ->  Email varchar(100),
    -> Address varchar(100),
    -> Gender varchar(10)
    -> );
Query OK, 0 rows affected (0.05 sec)



mysql> create table user_contact(
    -> Contact_no varchar(15)
    -> );
Query OK, 0 rows affected (0.06 sec)



mysql> create table admin(
    -> NIC varchar(15)
    -> );
Query OK, 0 rows affected (0.15 sec)



mysql> create table dean(
    -> NIC varchar(15)
    -> );
Query OK, 0 rows affected (0.04 sec)



mysql> create table lecture(
    -> Lecture_Id varchar(15) primary key,
    -> NIC varchar(15),
    -> Dpt_Id varchar(15)
    -> );
Query OK, 0 rows affected (0.05 sec)


mysql> create table lec_qualification(
    -> Lecture_Id varchar(15),
    -> Qulification varchar(50)
    -> );
Query OK, 0 rows affected (0.05 sec)



mysql> create table technical_officer(
    -> To_Id varchar(15) primary key,
    -> Dpt_ID varchar(15),
    -> NIC varchar(15)
    -> );
Query OK, 0 rows affected (0.05 sec)



mysql> create table tec_assignlab(
    -> To_Id varchar(15),
    -> Assigned_Lab varchar(20)
    -> );
Query OK, 0 rows affected (0.05 sec)


mysql> create table student(
    -> RegNo varchar(15) primary key,
    -> Dpt_Id varchar(15),
    -> NIC varchar(15),
    -> Status varchar(15)
    -> );
Query OK, 0 rows affected (0.04 sec)


mysql> create table department(
    -> Dpt_id varchar(15) primary key,
    -> Name varchar(30),
    -> HOD varchar(15)// user id
    -> );
Query OK, 0 rows affected (0.05 sec)


mysql> create table course(
    -> Course_Code varchar(15) primary key,
    -> Dpt_Id varchar(15),
    -> Name varchar(50),
    -> Course_Type varchar(15),
    -> Credits int
    -> );
Query OK, 0 rows affected (0.27 sec)


mysql> create table lectures(
    -> Course_Code varchar(15),
    -> Lecture_Id varchar(15)
    -> );
Query OK, 0 rows affected (0.07 sec)




mysql> create table enroll(
    -> Course_Code varchar(15),
    -> RegNo varchar(15)
    -> );
Query OK, 0 rows affected (0.04 sec)


mysql> create table marks(
    -> Mark_Id varchar(15) primary key,
    -> RegNo varchar(15),
    -> Course_Code varchar(15),
    -> First_Quiz_Marks decimal(3,2),
    -> Second_Quiz_Marks decimal(3,2),
    -> Third_Quiz_Marks decimal(3,2),
    -> First_Assignment_Marks decimal(3,2),
    -> Second_Assignment_Marks decimal(3,2),
    -> Mid_Exam_Marks decimal(3,2),
    -> End_Exam_Marks decimal(3,2)
    -> );
Query OK, 0 rows affected (0.10 sec)




