CREATE TABLE Students (Student_id NUMBER(7), StudentName CHAR(20), StudentLevel NUMBER(1), GPA NUMBER(3) );

select * from Students;

ALTER TABLE Students MODIFY(DateOfBirth DATE);

ALTER TABLE  Students DROP COLUMN MaitalStatus;

RENAME Students TO StudentsInfo;

DROP TABLE StudentsInfo;

select * from StudentsInfo;

