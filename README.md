# Projectaty MySQL Database Schema:
In this project, there exists 4 diffrent entities with diffrent attributes:

**_Entities_**:
1. **Student**: StudentID (Primary Key), username, password(sha), email
2. **Project**: ProjectID (Primary Key), Title, Description(optional), Deadline (Date), PrivacySetting (Public, Private), and CreatorID (Foreign Key referencing Student)
3. **Team**: TeamID (Primary Key), ProjectID (Foreign Key referencing Project), MemberID (Foreign Key referencing Student)
4. **Task**: TaskID (Primary Key), ProjectID (Foreign Key referencing Project), Title, Description (optional), Status (Incomplete, Complete), AssignedTo (Foreign Key referencing Student)

<div align="center"> 

  ![image](https://github.com/Projectaty/Projectaty-MySQL-DB/assets/65151701/47a26a21-19bc-497e-b7f6-781729929afa)
</div>


**_Relationships_**:
1. One Student can create multiple Projects.
2. One Project can have multiple Teams.
3. One Student can be a member of multiple Teams.
4. One Project can have multiple Tasks.
5. One Task is associated with one Project and can be assigned to one Student.

## Entity Relationship Diagram:

![ERD-diagram](https://github.com/Projectaty/Projectaty-MySQL-DB/assets/65151701/bc2a9e35-3dd8-409d-91ca-615b8006da5a)
