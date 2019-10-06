# README
Video Link: https://youtu.be/UH_Ee9D9Dyk

Rails Version 5.1.7
Ruby Version 2.3.3p222

Database MySQL * = table; ** = column 
* orgs table
** org_id primary_key integer auto increment
** orgname varchar(45)
** rate float

* users table
** id primary_key integer auto increment
** name varchar(45)
** org_id varchar(45)
** email varchar(45)
** password_digest varchar(255)

* shifts table
** shiftid primary_key integer auto increment
** user_id varchar(45)
** start datetime
** finish datetime
** breaklength integer
** date datetime
** org_id varchar(45)
