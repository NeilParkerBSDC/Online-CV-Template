# Online CV Template
This Project provides the files to make a dynamic online CV

A CV is a document that often contains a series of tables of information (skills, education, employment history etc. which can be more efficiently created dynamically from a database table via than in a static html table. This contains the basic files to use as a basis for creating your own online CV/Portfolio.

# Planning

See [this document](https://github.com/NeilParkerBSDC/Online-CV-Template/commit/dea4541d0426367647c29a62c79c32c3bb1ed86c)

A CV will typically have sections on the following:
- Personal/contact details
- Personal Statement
- Skills
- Employment History
- Education
- Acheivements
- Projects
- Interests
- Etc.

It is proposed that a separate page be created for each of these. For the most part each page will have a corresponding table in the database, although it would be good to be able to apply some relational linking of table e.g. skills and projects, skills and qualifications etc.

# Files in this project

## Database

- [SQL file to build MySQL database](https://github.com/NeilParkerBSDC/Online-CV-Template/blob/master/Database.sql)

## WebPages
***N.B. If there is no hyperlink, the file hasn't been produced/uploaded yet)***
- [Index.php](https://github.com/NeilParkerBSDC/Online-CV-Template/blob/master/Index.php) - Personal/contact details & Personal Statement. This does not need to be dynamically generated from a database as the details do not change much, and when they do they only need changing in this one place
- [connect.php](https://github.com/NeilParkerBSDC/Online-CV-Template/blob/master/connect.php) A file with the connection details for the dabase (needs customising to your details). This is in a separate file because it my be referenced in several php files that want to connect to the dataabse, and having one central file means any changes only need to be made in that file.
- [navbar.php](https://github.com/NeilParkerBSDC/Online-CV-Template/blob/master/navbar.php) I have separated out the navigation into a spearate file, so that if it is ammended it only needs ammending on one place
- [education.php](https://github.com/NeilParkerBSDC/Online-CV-Template/blob/master/education.php) (dynamically produiced table showing education/qualifications
- [WEX.php](https://github.com/NeilParkerBSDC/Online-CV-Template/blob/master/WEX.php) - Work Experience (Employment history, but called here "*work experience*" because that is more approriate to a student just setting out on their career
- [Skills.php](https://github.com/NeilParkerBSDC/Online-CV-Template/blob/master/Skills.php) - Skills (A list of the skills/programming languages etc. you have)
- Online Portfolio (links to evidence of projects completed/github etc.)

## Styling

- [MyStyle.css](https://github.com/NeilParkerBSDC/Online-CV-Template/blob/master/MyStyle.css) - stylesheet

# How to use this repository

You could just download or copy and paste the files, but you could also [fork the repository](https://docs.github.com/en/get-started/quickstart/fork-a-repo)
