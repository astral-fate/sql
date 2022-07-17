CREATE TABLE employee (
  fname CHAR(10),
  minit NUMBER(10),
  lname CHAR(10),
  ssn NUMBER(10),
  bdate date,
  address CHAR(10),
  sex CHAR(10),
  super_ssn NUMBER(10),
  dno INT PRIMARY KEY
);



CREATE TABLE department (
  dname CHAR(10),
  dNUMBER INT PRIMARY KEY,
  mgr_ssn NUMBER(10),
  mgr_start_date date
);

CREATE TABLE dept_locations (
  dNUMBER INT PRIMARY KEY,
  dlocation CHAR(10)
);

CREATE TABLE projects (
  pname NUMBER(10),
  pNUMBER INT PRIMARY KEY,
  plocation CHAR(10),
  dnum INT PRIMARY KEY
);

CREATE TABLE works_on (
  essn NUMBER(10),
  pno INT PRIMARY KEY,
  hours NUMBER(10)
);

CREATE TABLE dependent (
  essn NUMBER(10),
  dependent_name CHAR(10),
  sex CHAR(10),
  bdate DATE,
  relationship CHAR(10)
);


ALTER TABLE `department` ADD FOREIGN KEY (`dnumber`) REFERENCES `employee` (`dno`);

ALTER TABLE `employee` ADD FOREIGN KEY (`ssn`) REFERENCES `department` (`mgr_ssn`);

ALTER TABLE `dept_locations` ADD FOREIGN KEY (`dnumber`) REFERENCES `department` (`dnumber`);

ALTER TABLE `projects` ADD FOREIGN KEY (`dnum`) REFERENCES `department` (`dnumber`);

ALTER TABLE `works_on` ADD FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`);

ALTER TABLE `works_on` ADD FOREIGN KEY (`pno`) REFERENCES `projects` (`pnumber`);

ALTER TABLE `dependent` ADD FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`);
