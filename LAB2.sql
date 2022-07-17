CREATE TABLE `employee` (
  `fname` string,
  `minit` number,
  `lname` string,
  `ssn` number,
  `bdate` date,
  `address` string,
  `sex` string,
  `super_ssn` integer,
  `dno` number
);

CREATE TABLE `department` (
  `dname` string,
  `dnumber` number,
  `mgr_ssn` number,
  `mgr_start_date` date
);

CREATE TABLE `dept_locations` (
  `dnumber` number,
  `dlocation` string
);

CREATE TABLE `projects` (
  `pname` integer,
  `pnumber` string,
  `plocation` string,
  `dnum` number
);

CREATE TABLE `works_on` (
  `essn` number,
  `pno` number,
  `hours` number
);

CREATE TABLE `dependent` (
  `essn` number,
  `dependent_name` string,
  `sex` string,
  `bdate` date,
  `relationship` string
);

ALTER TABLE `department` ADD FOREIGN KEY (`dnumber`) REFERENCES `employee` (`dno`);

ALTER TABLE `employee` ADD FOREIGN KEY (`ssn`) REFERENCES `department` (`mgr_ssn`);

ALTER TABLE `dept_locations` ADD FOREIGN KEY (`dnumber`) REFERENCES `department` (`dnumber`);

ALTER TABLE `projects` ADD FOREIGN KEY (`dnum`) REFERENCES `department` (`dnumber`);

ALTER TABLE `works_on` ADD FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`);

ALTER TABLE `works_on` ADD FOREIGN KEY (`pno`) REFERENCES `projects` (`pnumber`);

ALTER TABLE `dependent` ADD FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`);
