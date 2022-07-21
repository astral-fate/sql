
CREATE TABLE department (
  dname CHAR(10) NOT NULL,
  dnumber int NOT NULL PRIMARY KEY ,
  mgr_ssn NUMBER(10) ,
  mgr_start_date date NOT NULL
);



CREATE TABLE employee (
  fname CHAR(10)  NOT NULL,
  minit NUMBER(10)  NOT NULL,
  lname CHAR(10)  NOT NULL,
  ssn int not null primary key,
  bdate date  NOT NULL ,
  address CHAR(10) NOT NULL ,
  sex CHAR(10)  NOT NULL,
  dno int,
  FOREIGN key  (dno) REFERENCES department (dnumber),
  super_ssn  int,
  FOREIGN key (super_ssn) REFERENCES employee (ssn)

);




CREATE TABLE dept_locations (
  dlocation int NOT NULL PRIMARY KEY,
  dnumber int,
  FOREIGN key (dnumber) REFERENCES department(dnumber)
);


CREATE TABLE project (
  pname CHAR(10),
  pnumber int not null primary key,
  plocation CHAR(10),
  dnum int,
  FOREIGN key  (dnum) REFERENCES department (dnumber) 
);



CREATE TABLE works_on (

  hours CHAR(10),
  essn INT NOT NULL  PRIMARY KEY,
  pno int,
  FOREIGN key (pno) REFERENCES project (pnumber)
  
);





CREATE TABLE dependent (
  
  dependent_name INT not null  PRIMARY KEY,
  sex CHAR(10),
  bdate date,
  relationship CHAR(10),
  essn int,
  FOREIGN key  (essn) REFERENCES employee (ssn)
);
