create database university_db;
Query OK, 1 row affected (0.01 sec)

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

