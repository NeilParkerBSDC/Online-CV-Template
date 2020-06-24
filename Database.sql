-- 1) Create the database:
CREATE DATABASE MyCV;

-- 2) Now within that  database create the tables you need. You will need to think about the datatypes and field sizes of the fields you are creating:
-- Education Table

CREATE TABLE `mycv`.`education_tbl` 
(`Education_ID` INT NOT NULL AUTO_INCREMENT , 
`StartDate` VARCHAR(255) , 
`EndDate` VARCHAR(255) , 
`Institution` VARCHAR(255) NOT NULL , 
`Qualifications` VARCHAR(4000) NOT NULL , 
PRIMARY KEY (`Education_ID`)) 
ENGINE = InnoDB;

--3) Add some data to your database. It is usually better to create a web form to make entering the data more user friendly ( a CRUD app), but you might want to get a few records into your database quickly for testing purposes (so the webpage has some data to look at).
INSERT INTO education_tbl (StartDate, EndDate, Institution, Qualifications)
VALUES ("Sept 2014", "July 2019", "My School", "GCSE Maths (7)<br/>GCSE English Lang (6)");
