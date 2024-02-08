CREATE DATABASE IF NOT EXISTS projectatyDB;
USE projectatyDB;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    username VARCHAR(255),
    password CHAR(40),
    email VARCHAR(255),
    profile_pic VARCHAR(255)
);

CREATE TABLE Project (
    ProjectID INT PRIMARY KEY,
    Title VARCHAR(255),
    Description TEXT,
    Deadline DATE,
    PrivacySetting CHAR(7), -- ('Public', 'Private')
    CreatorID INT,
    FOREIGN KEY (CreatorID) REFERENCES Student(StudentID)
);

CREATE TABLE Team (
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(255),
    PrivacySetting CHAR(7), -- ('Public', 'Private')
    Description TEXT
);

CREATE TABLE Collaboration (
    TeamID INT,
    ProjectID INT,
    PRIMARY KEY (TeamID, ProjectID),
    FOREIGN KEY (TeamID) REFERENCES Team(TeamID),
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID)
);

CREATE TABLE TeamMembership (
    TeamID INT,
    MemberID INT,
    PRIMARY KEY (TeamID, MemberID),
    FOREIGN KEY (TeamID) REFERENCES Team(TeamID),
    FOREIGN KEY (MemberID) REFERENCES Student(StudentID)
);

CREATE TABLE Task (
    TaskID INT PRIMARY KEY,
    ProjectID INT,
    Title VARCHAR(255),
    Description TEXT,
    Status VARCHAR(9), -- ('done', 'todo','inprogress'),
    AssignedTo INT,
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID),
    FOREIGN KEY (AssignedTo) REFERENCES Student(StudentID)
);
