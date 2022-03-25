-- 1) Create the database:
CREATE DATABASE MyCV;

-- 2) EDUCATION TABLE
-- a) Now within that  database create the tables you need. You will need to think about the datatypes and field sizes of the fields you are creating:
-- Education Table

CREATE TABLE `mycv`.`education_tbl` 
(`Education_ID` INT NOT NULL AUTO_INCREMENT , 
`StartDate` VARCHAR(255) , 
`EndDate` VARCHAR(255) , 
`Institution` VARCHAR(255) NOT NULL , 
`Qualifications` VARCHAR(4000) NOT NULL , 
PRIMARY KEY (`Education_ID`)) 
ENGINE = InnoDB;

--b) Add some data to your education table. It is usually better to create a web form to make entering the data more user friendly ( a CRUD app), but you might want to get a few records into your database quickly for testing purposes (so the webpage has some data to look at).
INSERT INTO education_tbl (StartDate, EndDate, Institution, Qualifications)
VALUES ("Sept 2014", "July 2019", "My School", "GCSE Maths (7)<br/>GCSE English Lang (6)");

-- c) if you want to update a field
UPDATE education_tbl
SET Qualifications = 'GCSE Maths (7)<br/>GCSE English Lang (6)<br/>GCSE English Literature (6)<br/>GCSE Double Science (66)<br/>GCSE French (4)<br/>GCSE History (6)<br/>GCSE DT (7)<br/>GCSE PE (4)'
WHERE Education_ID = 1;

-- Note you could also have a separate table for qaulfications, and then have a relationship table linkning qualfications to an education institution,
-- Becuase you may well gain several qualfications from a single instituiton

--3) WORK EXPERIENCE TABLE
-- a) Create the Work Experience table

CREATE TABLE `mycv`.`workExperience_tbl` 
(`WEX_ID` INT NOT NULL AUTO_INCREMENT , 
`StartDate` VARCHAR(255) , 
`EndDate` VARCHAR(255) , 
`Employer` VARCHAR(255) NOT NULL , 
`Duties` VARCHAR(4000) NOT NULL , 
PRIMARY KEY (`WEX_ID`)) 
ENGINE = InnoDB;

-- b) Add some data to the table

INSERT INTO workExperience_tbl (StartDate, EndDate, Employer, Duties)
VALUES ("May 2019", "May 2019", "Smith and Jones Accountants", "<strong>Y10 Work Experience Placement</strong><br/>
Helping with filing and basic office tasks"),
("April 2020", "July 2020", "Sue Grabbit & Run, Solicitors", "<strong>Technology Assistant</strong><br/>
Helping set up and troubleshoot video conferencing facilities for remote meeting between a solicitor and clients (over the first Pandemic Lockdown)"),
("October 2020", "Present", "Bills Burger Bar", "<strong>Kitchen Assistant</strong><br/>Helping the chef with preparing the orders which the waiters have got from the customers"),
("September 2021", "February 2022", "Barton Rovers Football Club", "<strong>Redeveloping Website</strong><br/> See <a href=\"http://www.thisIsAURL.com\">Github Repository");


--4) Skills

-- a) Create the TABLE table

CREATE TABLE `mycv`.`skills_tbl` 
(`Skill_ID` INT NOT NULL AUTO_INCREMENT , 
 `SkillName` VARCHAR(100) NOT NULL ,
`Details` VARCHAR(4000) NOT NULL , 
PRIMARY KEY (`Skill_ID`)) 
ENGINE = InnoDB;

-- b) Add some data:
INSERT INTO skills_tbl (SkillName, Details)
VALUES ("Programming", "I have used the following programming languages at schools/college and in my work experience:<ul><li>Python</li><li>C#</li><li>HTML/CSS</li><li>PHP</li><li>MySQL</li>"),
("Non-Programming Skills", "I also have other non-programming skills including:<ul><li>Communcation</li><li>Working in a Team</li><li>Leadershipt</li><li>Problem solving</li><li>Creativity</li>");


-- Linking skills to other tables
-- With the skills table above you could just write a long html description of the skills with examples into the details field, 
-- however you could also create relationship tables to link skills to the other tables such as Jobs, qualfiications etc.

-- 5) Portfolio

-- Note that this could use a much mre complicated structure, this is the simplest I could get it, without falling back onto a static html page

-- a) Create the table
CREATE TABLE `mycv`.`portfilio_tbl` 
(`Portfolio_ID` INT NOT NULL AUTO_INCREMENT , 
 `PortfolioTitle` VARCHAR(100) NOT NULL ,
 `PortfolioSummary` VARCHAR(300) NOT NULL ,
 `PortfolioDetails` VARCHAR(4000) NOT NULL ,
PRIMARY KEY (`Portfolio_ID`)) 
ENGINE = InnoDB;

-- b) Add some data:

