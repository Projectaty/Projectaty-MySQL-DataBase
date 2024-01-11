CREATE DATABASE IF NOT EXISTS projectatyDB;
USE projectatyDB;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    username VARCHAR(255),
    password CHAR(40),
    email VARCHAR(255)
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
    ProjectID INT,
    MemberID INT,
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID),
    FOREIGN KEY (MemberID) REFERENCES Student(StudentID)
);

CREATE TABLE Task (
    TaskID INT PRIMARY KEY,
    ProjectID INT,
    Title VARCHAR(255),
    Description TEXT,
    Status VARCHAR(9), -- ('Incomplete', 'Complete'),
    AssignedTo INT,
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID),
    FOREIGN KEY (AssignedTo) REFERENCES Student(StudentID)
);