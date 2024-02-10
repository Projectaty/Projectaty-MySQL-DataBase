-- Active: 1694182715087@@127.0.0.1@3306@projectatydb

-- Inserting data into the Student table
INSERT INTO Student (StudentID, username, password, email, profile_pic) VALUES (1, 'sondos', 'pass123', 'sondos@email.com', 'sondos_profile.jpg');
INSERT INTO Student (StudentID, username, password, email, profile_pic) VALUES (2, 'Hadeel', 'pass456', 'hadeel@email.com', 'hadeel_profile.jpg');
INSERT INTO Student (StudentID, username, password, email, profile_pic) VALUES (3, 'Rama', 'pass789', 'rama@email.com', 'rama_profile.jpg');
INSERT INTO Student (StudentID, username, password, email, profile_pic) VALUES (4, 'Afifa', 'passabc', 'afifa@email.com', 'afifa_profile.jpg');
INSERT INTO Student (StudentID, username, password, email, profile_pic) VALUES (5, 'Samer', 'passefg', 'samer@email.com', 'samer_profile.jpg');

-- Inserting data into the Project table
INSERT INTO Project (ProjectID, Title, Description, Deadline, PrivacySetting, CreatorID) VALUES (1, 'Web Development', 'Building a website with MySQL', '2024-03-15', 'Public', 1);
INSERT INTO Project (ProjectID, Title, Description, Deadline, PrivacySetting, CreatorID) VALUES (2, 'Data Analysis', 'Analyzing datasets for AI', '2024-04-30', 'Private', 2);
INSERT INTO Project (ProjectID, Title, Description, Deadline, PrivacySetting, CreatorID) VALUES (3, 'Mobile App Design', 'Creating a user-friendly mobile app design', '2024-03-31', 'Public', 3);
INSERT INTO Project (ProjectID, Title, Description, Deadline, PrivacySetting, CreatorID) VALUES (4, 'AI Research', 'Exploring applications of artificial intelligence', '2024-05-15', 'Private', 4);
INSERT INTO Project (ProjectID, Title, Description, Deadline, PrivacySetting, CreatorID) VALUES (5, 'Graduation Project', 'Data Analysis and modeling', '2024-04-15', 'Public', 5);

-- Inserting data into the Team table
INSERT INTO Team (TeamID, TeamName) VALUES (1, 'SHE Team');
INSERT INTO Team (TeamID, TeamName) VALUES (2, 'Palestine Team');
INSERT INTO Team (TeamID, TeamName) VALUES (3, 'Best Team');
INSERT INTO Team (TeamID, TeamName) VALUES (4, 'AI Team');
INSERT INTO Team (TeamID, TeamName) VALUES (5, 'Internship Team');

-- Inserting data into the Collaboration table
INSERT INTO Collaboration (TeamID, ProjectID) VALUES (1, 1);
INSERT INTO Collaboration (TeamID, ProjectID) VALUES (2, 2);
INSERT INTO Collaboration (TeamID, ProjectID) VALUES (3, 3);
INSERT INTO Collaboration (TeamID, ProjectID) VALUES (4, 4);
INSERT INTO Collaboration (TeamID, ProjectID) VALUES (5, 5);

-- Inserting data into the TeamMembership table
INSERT INTO TeamMembership (TeamID, MemberID) VALUES (1, 1);
INSERT INTO TeamMembership (TeamID, MemberID) VALUES (1, 2);
INSERT INTO TeamMembership (TeamID, MemberID) VALUES (2, 2);
INSERT INTO TeamMembership (TeamID, MemberID) VALUES (2, 3);
INSERT INTO TeamMembership (TeamID, MemberID) VALUES (3, 3);

-- Inserting data into the Task table
INSERT INTO Task (TaskID, ProjectID, Title, Description, Status, AssignedTo, Deadline) VALUES (1, 1, 'Design Homepage', 'Create homepage', 'todo', 1, '2024-03-10');
INSERT INTO Task (TaskID, ProjectID, Title, Description, Status, AssignedTo, Deadline) VALUES (2, 2, 'Data Cleaning', 'Clean and preprocess the dataset', 'inprogress', 2, '2024-04-20');
INSERT INTO Task (TaskID, ProjectID, Title, Description, Status, AssignedTo, Deadline) VALUES (3, 3, 'Website DB Connection', 'Connect the web to database', 'done', 3, '2024-03-25');
INSERT INTO Task (TaskID, ProjectID, Title, Description, Status, AssignedTo, Deadline) VALUES (4, 4, 'Implement AI Algorithm', 'Code and test the AI algorithm', 'inprogress', 4, '2024-05-10');
INSERT INTO Task (TaskID, ProjectID, Title, Description, Status, AssignedTo, Deadline) VALUES (5, 5, 'Design a Brochure', 'Create a brochure for the graphic design project', 'todo', 5, '2024-04-05');
