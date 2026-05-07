mysql> create user 'Admin'@'localhost' identified by 'admin123';
Query OK, 0 rows affected (0.01 sec)

sql> grant all privileges on University_db.* to 'Admin'@'localhost' with grant option;
Query OK, 0 rows affected (0.00 sec)

mysql> create user 'Dean'@'localhost' identified by 'Dean123';
Query OK, 0 rows affected (0.01 sec)

mysql> grant all privileges on University_db.* to 'Dean'@'localhost';
Query OK, 0 rows affected (0.01 sec)

FLUSH PRIVILEGES;



mysql> create user 'Lecture'@'localhost' identified by 'lec123';
Query OK, 0 rows affected (0.01 sec

mysql> grant all privileges on University_db.* to 'Lecture'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> create user 'TO'@'localhost' identified by 'to123';
Query OK, 0 rows affected (0.01 sec)


mysql> grant select,insert ,update on University_db.attendance to 'TO'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> grant select,insert ,update on University_db.attendance_count to 'TO'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> grant select,insert ,update on University_db.attendance_eligibility to 'TO'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> grant select,insert ,update on University_db.attendance_percentage to 'TO'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> grant select,insert ,update on University_db.medical_attendance_count to 'TO'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> grant select,insert ,update on University_db.medical_attendance_eligibility to 'TO'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> grant select,insert ,update on University_db.medical_attendance_percentage to 'TO'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> grant select,insert ,update on University_db.not_approved_medical_count to 'TO'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> grant select,insert ,update on University_db.medical to 'TO'@'localhost';
Query OK, 0 rows affected (0.01 sec)

FLUSH PRIVILEGES;



mysql> grant select,insert ,update on University_db.approved_medical_count to 'TO'@'localhost';
Query OK, 0 rows affected (0.01 sec)

ysql> create user 'Student'@'localhost' identified by 'stu123';
Query OK, 0 rows affected (0.00 sec)

mysql> grant select on University_db.attendance_eligibility to 'Student'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> grant select on University_db.final_mark to 'Student'@'localhost';
Query OK, 0 rows affected (0.01 sec)


