CREATE TABLE Students (Student_id NUMBER(7), StudentName CHAR(20), StudentLevel NUMBER(1), GPA NUMBER(3) );

select * from Students;

ALTER TABLE Students MODIFY(DateOfBirth DATE);

ALTER TABLE  Students DROP COLUMN MaitalStatus;

RENAME Students TO StudentsInfo;

DROP TABLE StudentsInfo;

select * from StudentsInfo;


/*

OUTPUT


Error starting at line : 1 in command -
CREATE TABLE Students (Student_id NUMBER(7), StudentName CHAR(20), StudentLevel NUMBER(1), GPA NUMBER(3) )
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Error starting at line : 1 in command -
CREATE TABLE Students (Student_id NUMBER(7), StudentName CHAR(20), StudentLevel NUMBER(1), GPA NUMBER(3) )
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:
no rows selected

Error starting at line : 1 in command -
CREATE TABLE Students (Student_id NUMBER(7), StudentName CHAR(20), StudentLevel NUMBER(1), GPA NUMBER(3) )
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:
no rows selected

Error starting at line : 5 in command -
ALERT Students MODIFY(DateOfBirth DATE() )
Error report -
Unknown Command


Error starting at line : 1 in command -
CREATE TABLE Students (Student_id NUMBER(7), StudentName CHAR(20), StudentLevel NUMBER(1), GPA NUMBER(3) )
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:
no rows selected

Error starting at line : 5 in command -
ALTER Students MODIFY(DateOfBirth DATE() )
Error report -
ORA-00940: invalid ALTER command
00940. 00000 -  "invalid ALTER command"
*Cause:    
*Action:

Error starting at line : 1 in command -
CREATE TABLE Students (Student_id NUMBER(7), StudentName CHAR(20), StudentLevel NUMBER(1), GPA NUMBER(3) )
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:
no rows selected

Table STUDENTS altered.


Error starting at line : 1 in command -
CREATE TABLE Students (Student_id NUMBER(7), StudentName CHAR(20), StudentLevel NUMBER(1), GPA NUMBER(3) )
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:
no rows selected

Table STUDENTS altered.


Error starting at line : 7 in command -
ALTER TABLE  Students DROP COLUMN MaitalStatus
Error report -
ORA-00904: "MAITALSTATUS": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Error starting at line : 1 in command -
CREATE TABLE Students (Student_id NUMBER(7), StudentName CHAR(20), StudentLevel NUMBER(1), GPA NUMBER(3) )
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:
no rows selected

Table STUDENTS altered.


Error starting at line : 7 in command -
ALTER TABLE  Students DROP COLUMN MaitalStatus
Error report -
ORA-00904: "MAITALSTATUS": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Table renamed.


Table STUDENTS created.

no rows selected

Error starting at line : 5 in command -
ALTER TABLE Students MODIFY(DateOfBirth DATE)
Error report -
ORA-00904: "DATEOFBIRTH": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Error starting at line : 7 in command -
ALTER TABLE  Students DROP COLUMN MaitalStatus
Error report -
ORA-00904: "MAITALSTATUS": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Error starting at line : 9 in command -
RENAME Students TO StudentsInfo
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Table STUDENTSINFO dropped.


Error starting at line : 1 in command -
CREATE TABLE Students (Student_id NUMBER(7), StudentName CHAR(20), StudentLevel NUMBER(1), GPA NUMBER(3) )
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:
no rows selected

Error starting at line : 5 in command -
ALTER TABLE Students MODIFY(DateOfBirth DATE)
Error report -
ORA-00904: "DATEOFBIRTH": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Error starting at line : 7 in command -
ALTER TABLE  Students DROP COLUMN MaitalStatus
Error report -
ORA-00904: "MAITALSTATUS": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Table renamed.


Table STUDENTSINFO dropped.


Error starting at line : 13 in command -
select * from StudentsInfo
Error at Command Line : 13 Column : 15
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:





*/

