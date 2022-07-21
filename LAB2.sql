
CREATE TABLE employee (
  fname CHAR(10)  NOT NULL,
  minit NUMBER(10)  NOT NULL,
  lname CHAR(10)  NOT NULL,
  ssn int not null primary key,
  bdate date  NOT NULL ,
  address CHAR(10) NOT NULL ,
  sex CHAR(10)  NOT NULL,
  super_ssn  NUMBER(10) NOT NULL,
  dno NUMBER(10)  NOT NULL
);



CREATE TABLE department (
  dname CHAR(10) NOT NULL,
  dNUMBER int NOT NULL PRIMARY KEY ,
  mgr_ssn NUMBER(10) ,
  mgr_start_date date NOT NULL
);


CREATE TABLE dept_locations (
  dnumber int NOT NULL PRIMARY KEY,
  dlocation CHAR(10) NOT NULL
);




CREATE TABLE projects (
  pname CHAR(10),
  pnumber INT NOT NULL  PRIMARY KEY ,
  plocation CHAR(10),
  dnum CHAR(10) 
);





CREATE TABLE works_on (
  essn INT NOT NULL  PRIMARY KEY,
  pno CHAR(10),
  hours CHAR(10)
);

 



CREATE TABLE dependent (
  essn INT not null  PRIMARY KEY,
  dependent_name integer,
  sex CHAR(10),
  bdate date,
  relationship CHAR(10)
);


ALTER TABLE `department` ADD FOREIGN KEY (`dnumber`) REFERENCES `employee` (`dno`);

ALTER TABLE `employee` ADD FOREIGN KEY (`ssn`) REFERENCES `department` (`mgr_ssn`);

ALTER TABLE `dept_locations` ADD FOREIGN KEY (`dnumber`) REFERENCES `department` (`dnumber`);

ALTER TABLE `projects` ADD FOREIGN KEY (`dnum`) REFERENCES `department` (`dnumber`);

ALTER TABLE `works_on` ADD FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`);

ALTER TABLE `works_on` ADD FOREIGN KEY (`pno`) REFERENCES `projects` (`pnumber`);

ALTER TABLE `dependent` ADD FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`);
