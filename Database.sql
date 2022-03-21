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

-- 4) if you want to update a field
UPDATE education_tbl
SET Qualifications = 'GCSE Maths (7)<br/>GCSE English Lang (6)<br/>GCSE English Literature (6)<br/>GCSE Double Science (66)<br/>GCSE French (4)<br/>GCSE History (6)<br/>GCSE DT (7)<br/>GCSE PE (4)'
WHERE Education_ID = 1;

-- Note you could also have a separate table for qaulfications, and then have a relationship table linkning qualfications to an education institution,
-- Becuase you may well gain several qualfications from a single instituiton

--5) Create a Work Experience table

CREATE TABLE `mycv`.`workExperience_tbl` 
(`WEX_ID` INT NOT NULL AUTO_INCREMENT , 
`StartDate` VARCHAR(255) , 
`EndDate` VARCHAR(255) , 
`Employer` VARCHAR(255) NOT NULL , 
`Duties` VARCHAR(4000) NOT NULL , 
PRIMARY KEY (`WEX_ID`)) 
ENGINE = InnoDB;

--6) Create a skills table

CREATE TABLE `mycv`.`skills_tbl` 
(`Skill_ID` INT NOT NULL AUTO_INCREMENT ,  
`Details` VARCHAR(4000) NOT NULL , 
PRIMARY KEY (`Skill_ID`)) 
ENGINE = InnoDB;

-- Linking skills to other tables
-- With the skills table above you could just write a long html description of the skills with examples into the details field, 
-- however you could also create relationship tables to link skills to the other tables such as Jobs, qualfiications etc.

