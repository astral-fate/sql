CREATE TABLE Students (Student_id NUMBER(7), StudentName CHAR(20), StudentLevel NUMBER(1), GPA NUMBER(3) );

select * from Students;

ALTER TABLE Students MODIFY(DateOfBirth DATE);

ALTER TABLE  Students DROP COLUMN MaitalStatus;

RENAME Students TO StudentsInfo;

DROP TABLE StudentsInfo;

select * from StudentsInfo;


/*

OUTPUT

no rows selected

Table STUDENTS altered.


Table STUDENTS altered.

no rows selected

Error starting at line : 23 in command -
ALTER TABLE  Students DROP COLUMN MaitalStatus
Error report -
ORA-00904: "MAITALSTATUS": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Table renamed.

no rows selected

Table STUDENTSINFO dropped.




*/

