 create table user(
      NIC varchar(15) primary key,
      First_Name varchar(20),
      Last_Name varchar(20),
      Date_of_Birth varchar(20),
      Email varchar(100),
      Address varchar(100),
      Gender varchar(10)
      );



create table user_contact(
    Contact_no varchar(15)
    NIC varchar(15),
    );



create table admin(
    Admin_ID varchar(15),
    NIC varchar(15)
     );


create table dean(
      Dean_Id varchar(15),
      NIC varchar(15)
       );


 create table lecture(
     Lecture_Id varchar(15) primary key,
     NIC varchar(15),
     Dpt_Id varchar(15)
     );



 create table lec_qualification(
     Lecture_Id varchar(15),
     Qulification varchar(50)
    );




mysql> create table technical_officer(
     To_Id varchar(15) primary key,
     Dpt_ID varchar(15),
     NIC varchar(15)
     );




 create table tec_assignlab(
     To_Id varchar(15),
     Assigned_Lab varchar(20)
     );



 create table student(
     RegNo varchar(15) primary key,
     Dpt_Id varchar(15),
     NIC varchar(15),
     Status varchar(15)
     );



 create table department(
    Dpt_id varchar(15) primary key,
    Name varchar(30),
    HOD varchar(15)// user id
     );



 create table course(
    Course_Code varchar(15) primary key,
    Dpt_Id varchar(15),
    Name varchar(50),
    Course_Type varchar(15),
    Credits int
      );


  create table lectures(
     Course_Code varchar(15),
     Lecture_Id varchar(15)
     );



 create table enroll(
     Course_Code varchar(15),
     RegNo varchar(15)
     );



 create table marks(
     RegNo varchar(15),
     Course_Code varchar(15),
     First_Quiz_Marks decimal(5,2),
     Second_Quiz_Marks decimal(5,2),
     Third_Quiz_Marks decimal(5,2),
     First_Assignment_Marks decimal(5,2),
     Second_Assignment_Marks decimal(5,2),
     Mid_Exam_Marks decimal(5,2),
     End_Exam_Marks decimal(5,2)
     );



 



create table attendance(
     RegNo varchar(15),
     Course_Code varchar(15),
     Date date,
     Status varchar(10)
     );


CREATE TABLE medical( 
RegNo VARCHAR(15), 
Course_Code VARCHAR(15), 
Description VARCHAR(50), 
Start_Date DATE, 
End_Date DATE, 
Status VARCHAR(10), 
CHECK (Status IN ('Approved', 'Rejected', 'Pending'))
);



CREATE TABLE L1_S1_SGPA (
    RegNo VARCHAR(20),
    SGPA DECIMAL(3,2)
);


CREATE TABLE L1_S1_Grades (
    RegNo VARCHAR(20),
    Course_Code VARCHAR(10),
    Grade VARCHAR(2)
);



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




