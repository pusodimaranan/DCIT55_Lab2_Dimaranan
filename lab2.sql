CREATE DATABASE dims_lab2;

USE dims_lab2;

CREATE TABLE tblStudent (
	studentNumber INT (11) AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(100),
    lastName VARCHAR(100) NOT NULL,
    middleName VARCHAR(100), 
    birthdate VARCHAR(20),
    citizenship VARCHAR(50) COMMENT "Example: Filipino, Nigerian, Korean",
    gender VARCHAR(100) COMMENT "Male or Female"
);

SHOW FULL COLUMNS FROM tblStudent;

-- insert values

INSERT INTO tblStudent (
studentNumber, firstName, lastName, middleName, birthdate, citizenship, gender)
VALUES (202014912, "STEVEN", "ESPEDIDO", "ROSALDO", 2000-01-01, "FILIPINO", "MALE");

INSERT INTO tblStudent (
studentNumber, firstName, lastName, middleName, birthdate, citizenship, gender)
VALUES (202014165, "NINA KLARISSE", "ULANGKAYA", "AMBROSIO", 2000-01-02, "FILIPINO", "FEMALE");

INSERT INTO tblStudent (
studentNumber, firstName, lastName, middleName, birthdate, citizenship, gender)
VALUES (202011535, "ADRIAN", "CARRANZA", "RUBIA", 2000-01-03, "FILIPINO", "MALE");

INSERT INTO tblStudent (
studentNumber, firstName, lastName, middleName, birthdate, citizenship, gender)
VALUES (202011818, "JEAN", "DACLES", "RICO", 2000-01-04, "FILIPINO", "FEMALE");

INSERT INTO tblStudent (
studentNumber, firstName, lastName, middleName, birthdate, citizenship, gender)
VALUES (202012336, "GILLIAN KYLE", "CATAHAN", "DIMAALA", 2000-01-05, "FILIPINO", "MALE");

SELECT * FROM studentinfo;

-- update table

ALTER TABLE tblStudent CHANGE gender sex VARCHAR(6);
ALTER TABLE tblStudent CHANGE birthdate birthdate DATE;
ALTER TABLE tblStudent CHANGE citizenship citizenship VARCHAR(20);	

ALTER TABLE tblStudent ADD age INT(3) AFTER birthdate;

ALTER TABLE tblStudent RENAME studentinfo;

-- select and display

SELECT UPPER (firstName),
		UPPER (lastName),
        UPPER (middleName) FROM studentinfo;
        
SELECT REPLACE (citizenship, 'Filipino', 'Pinoy') FROM studentinfo;

SELECT concat(studentNumber, ' - ', firstName, ' ', middleName, ' ', lastName) FROM studentinfo;

SELECT REPEAT (lastName, 5) FROM studentinfo;

SELECT AVG(age) FROM studentinfo;

SELECT DATE_FORMAT(birthdate, '%M %d, %Y')FROM studentinfo;

SELECT sex, COUNT(*) AS total FROM studentinfo GROUP BY sex;

SELECT * FROM studentinfo ORDER BY lastName ASC;