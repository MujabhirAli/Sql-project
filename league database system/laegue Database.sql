CREATE DATABASE league_db;
USE league_db;

CREATE TABLE Teams (
    team_id INT AUTO_INCREMENT PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    team_group CHAR(1) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    
);

CREATE TABLE Players (
    PlayerID CHAR(5) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Nationality VARCHAR(50) NOT NULL,
    DoB DATE NOT NULL,
    Role VARCHAR(50),
    BowlingStyle VARCHAR(50),
    BattingStyle VARCHAR(50),
    team_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
    ON UPDATE CASCADE
    ON DELETE SET NULL
);

CREATE TABLE PlayerStats (
    PlayerID CHAR(5),
    StrikeRate DECIMAL(5,2),
    RunsScored INT,
    HighestScore VARCHAR(10),
    WicketsTaken INT,
    BestFigure VARCHAR(10),
    Fifties INT DEFAULT 0,
    Hundreds INT DEFAULT 0,
    PRIMARY KEY (PlayerID),
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE Venues (
    venue_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    capacity INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Matches (
    match_id INT AUTO_INCREMENT PRIMARY KEY,
    match_date DATE NOT NULL,
    venue_id INT,
    team1_id INT,
    team2_id INT,
    team1_score INT,
    team2_score INT,
    winner_team_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (venue_id) REFERENCES Venues(venue_id),
    FOREIGN KEY (team1_id) REFERENCES Teams(team_id),
    FOREIGN KEY (team2_id) REFERENCES Teams(team_id),
    FOREIGN KEY (winner_team_id) REFERENCES Teams(team_id)
    ON UPDATE CASCADE
    ON DELETE SET NULL

);

CREATE TABLE Coaches (
    coach_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    nationality VARCHAR(50) NOT NULL,
    role VARCHAR(50) NOT NULL,
    team_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
    ON UPDATE CASCADE
    ON DELETE SET NULL
);
-- --------------------
-- Team Table dataSets
-- --------------------

INSERT INTO Teams (team_name, team_group, created_at) VALUES
('Chennai Super Kings', 'A', NOW()),
('Delhi Capitals', 'A', NOW()),
('Kolkata Knight Riders', 'A', NOW()),
('Lucknow Super Giants', 'A', NOW()),
('Rajasthan Royals', 'A', NOW()),
('Mumbai Indians', 'B', NOW()),
('Punjab Kings', 'B', NOW()),
('Royal Challengers Bangalore', 'B', NOW()),
('Sunrisers Hyderabad', 'B', NOW()),
('Gujarat Titans', 'B', NOW());

-- -------------------
-- Player table
--  ------------------

INSERT INTO Players (PlayerID, Name, Nationality, DoB, Role, BowlingStyle, BattingStyle, team_id, created_at)
VALUES 
('CSK1', 'Ruturaj Gaikwad', 'India', '1997-01-31', 'Batsman', NULL, 'Right-hand bat', 1, NOW()),
('CSK2', 'Shivam Dube', 'India', '1993-06-26', 'All-rounder', 'Right-arm medium', 'Left-hand bat', 1, NOW()),
('CSK3', 'Daryl Mitchell', 'New Zealand', '1991-05-20', 'All-rounder', 'Right-arm fast', 'Right-hand bat', 1, NOW()),
('CSK4', 'Ravindra Jadeja', 'India', '1988-12-06', 'All-rounder', 'Left-arm orthodox', 'Left-hand bat', 1, NOW()),
('CSK5', 'Ajinkya Rahane', 'India', '1988-06-06', 'Batsman', NULL, 'Right-hand bat', 1, NOW()),
('CSK6', 'Rachin Ravindra', 'New Zealand', '1999-11-18', 'All-rounder', 'Left-arm orthodox', 'Left-hand bat', 1, NOW()),
('CSK7', 'MS Dhoni', 'India', '1981-07-07', 'Wicketkeeper-batsman', NULL, 'Right-hand bat', 1, NOW()),
('CSK8', 'Moeen Ali', 'England', '1987-06-18', 'All-rounder', 'Right-arm offbreak', 'Left-hand bat', 1, NOW()),
('CSK9', 'Sameer Rizwi', 'India', '1994-10-15', 'Batsman', NULL, 'Right-hand bat', 1, NOW()),
('CSK10', 'Shardul Thakur', 'India', '1991-10-16', 'Bowler', 'Right-arm medium', 'Right-hand bat', 1, NOW()),
('CSK11', 'Mitchell Santner', 'New Zealand', '1992-02-05', 'Bowler', 'Left-arm orthodox', 'Left-hand bat', 1, NOW());

INSERT INTO PlayerStats (PlayerID, StrikeRate, RunsScored, HighestScore, WicketsTaken, BestFigure, Fifties, Hundreds)
VALUES 
('CSK1', 141.16, 583, '108', NULL, NULL, 4, 1),
('CSK2', 162.29, 396, '66', 8, '3/27', 3, 0),
('CSK3', 142.60, 318, '63', 5, '2/15', 2, 0),
('CSK4', 142.78, 267, '57', 12, '4/28', 1, 0),
('CSK5', 123.46, 242, '45', NULL, NULL, 0, 0),
('CSK6', 160.86, 222, '61', 7, '2/20', 1, 0),
('CSK7', 220.54, 161, '37', NULL, NULL, 0, 0),
('CSK8', 130.61, 128, '56', 4, '3/34', 1, 0),
('CSK9', 118.60, 51, '21', NULL, NULL, 0, 0),
('CSK10', 123.52, 21, '17', 9, '3/19', 0, 0),
('CSK11', 82.35, 14, '11', 6, '4/22', 0, 0);





-- -----------------------------------------------------------
-- delhi

INSERT INTO Players (PlayerID, Name, Nationality, DoB, Role, BowlingStyle, BattingStyle, team_id, created_at)
VALUES
('DC001', 'Rishabh Pant', 'Indian', '1997-10-04', 'Batsman/Wicketkeeper', NULL, 'Left-hand bat', 2, NOW()),
('DC002', 'Tristan Stubbs', 'South African', '2000-08-14', 'Batsman', NULL, 'Right-hand bat', 2, NOW()),
('DC003', 'Jake Fraser-McGurk', 'Australian', '2002-04-28', 'Batsman', NULL, 'Right-hand bat', 2, NOW()),
('DC004', 'Abishek Porel', 'Indian', '2002-10-04', 'Batsman', NULL, 'Left-hand bat', 2, NOW()),
('DC005', 'Axar Patel', 'Indian', '1994-01-20', 'All-rounder', 'Left-arm orthodox', 'Left-hand bat', 2, NOW()),
('DC006', 'Prithvi Shaw', 'Indian', '1999-11-09', 'Batsman', NULL, 'Right-hand bat', 2, NOW()),
('DC007', 'Shai Hope', 'West Indian', '1993-11-10', 'Batsman', NULL, 'Right-hand bat', 2, NOW()),
('DC008', 'David Warner', 'Australian', '1986-10-27', 'Batsman', NULL, 'Left-hand bat', 2, NOW()),
('DC009', 'Mitchell Marsh', 'Australian', '1991-10-20', 'All-rounder', 'Right-arm fast-medium', 'Right-hand bat', 2, NOW()),
('DC010', 'Kuldeep Yadav', 'Indian', '1994-12-14', 'Bowler', 'Left-arm chinaman', 'Left-hand bat', 2, NOW()),
('DC011', 'Mukesh Kumar', 'Indian', '1993-02-12', 'Bowler', 'Right-arm medium', 'Right-hand bat', 2, NOW());

INSERT INTO PlayerStats (PlayerID, StrikeRate, RunsScored, HighestScore, WicketsTaken, BestFigure, Fifties, Hundreds)
VALUES
('DC001', 155.40, 446, '88*', 0, NULL, 3, 0),
('DC002', 190.90, 378, '71*', 3, '11/2', 3, 0),
('DC003', 234.04, 330, '84', 0, NULL, 4, 0),
('DC004', 159.51, 327, '65', 0, NULL, 2, 0),
('DC005', 131.28, 235, '66', 11, '25/2', 2, 0),
('DC006', 163.63, 198, '66', 0, NULL, 1, 0),
('DC007', 150.00, 183, '41', 0, NULL, 0, 0),
('DC008', 134.40, 168, '52', 0, NULL, 1, 0),
('DC009', 160.52, 61, '23', 1, '37/1', 0, 0),
('DC010', NULL, 47, '35*', 16, '55/4', 0, 0),
('DC011', NULL, 3, '3', 17, '14/3', 0, 0);


-- --------------------------------------------
-- kolkata
INSERT INTO Players (PlayerID, Name, Nationality, DoB, Role, BowlingStyle, BattingStyle, team_id, created_at)
VALUES 
('KKR1', 'Sunil Narine', 'West Indies', '1988-05-26', 'All-rounder', 'Right-arm offbreak', 'Right-hand bat', 3, NOW()),
('KKR2', 'Phil Salt', 'England', '1996-06-28', 'Batsman', NULL, 'Right-hand bat', 3, NOW()),
('KKR3', 'Venkatesh Iyer', 'India', '1996-12-25', 'All-rounder', 'Right-arm medium', 'Right-hand bat', 3, NOW()),
('KKR4', 'Shreyas Iyer', 'India', '1994-12-06', 'Batsman', 'Right-arm offbreak', 'Right-hand bat', 3, NOW()),
('KKR5', 'Andre Russell', 'West Indies', '1988-04-29', 'All-rounder', 'Right-arm fast', 'Right-hand bat', 3, NOW()),
('KKR6', 'Varun Chakaravarthy', 'India', '1991-08-29', 'Bowler', 'Right-arm offbreak', 'Right-hand bat', 3, NOW()),
('KKR7', 'Harshit Rana', 'India', '1998-05-12', 'Bowler', 'Right-arm medium', 'Right-hand bat', 3, NOW()),
('KKR8', 'Mitchell Starc', 'Australia', '1990-01-30', 'Bowler', 'Left-arm fast', 'Left-hand bat', 3, NOW()),
('KKR9', 'Vaibhav Arora', 'India', '1994-06-19', 'Bowler', 'Right-arm medium', 'Right-hand bat', 3, NOW()),
('KKR10', 'Anukul Roy', 'India', '1998-11-30', 'Bowler', 'Slow left-arm orthodox', 'Left-hand bat', 3, NOW()),
('KKR11', 'Rahmanullah Gurbaz', 'Afghanistan', '2002-06-22', 'Wicketkeeper', NULL, 'Right-hand bat', 3, NOW());

INSERT INTO PlayerStats (PlayerID, StrikeRate, RunsScored, HighestScore, WicketsTaken, BestFigure, Fifties, Hundreds)
VALUES 
('KKR1', 180.74, 488, '109', 17, '3/22', 3, 1),
('KKR2', 182.00, 435, '89*', 0, NULL, 4, 0),
('KKR3', 158.79, 370, '70', 0, NULL, 4, 0),
('KKR4', 146.86, 351, '58*', 0, NULL, 2, 0),
('KKR5', 185.00, 222, '64*', 19, '3/19', 1, 0),
('KKR6', NULL, 402, '16/3', 21, '3/16', 0, 0),
('KKR7', NULL, 383, '24/3', 19, '3/24', 0, 0),
('KKR8', NULL, 444, '33/4', 17, '4/33', 0, 0),
('KKR9', NULL, 276, '27/3', 11, '3/27', 0, 0),
('KKR10', NULL, 3, '3*', 0, NULL, 0, 0),
('KKR11', 134.78, 62, '39', 0, NULL, 0, 0);


-- 4>>3

-- ------------------
-- lsg
INSERT INTO Players (PlayerID, Name, Nationality, DoB, Role, BowlingStyle, BattingStyle, team_id, created_at)
VALUES
('LSG1', 'K L Rahul', 'India', '1992-04-18', 'Batsman', NULL, 'Right-hand bat', 4, NOW()),
('LSG2', 'Nicholas Pooran', 'West Indies', '1995-10-02', 'Batsman', NULL, 'Left-hand bat', 4, NOW()),
('LSG3', 'Marcus Stoinis', 'Australia', '1989-08-16', 'All-rounder', 'Right-arm medium-fast', 'Right-hand bat', 4, NOW()),
('LSG4', 'Quinton De Kock', 'South Africa', '1992-12-17', 'Wicketkeeper', NULL, 'Left-hand bat', 4, NOW()),
('LSG5', 'Ayush Badoni', 'India', '1999-09-28', 'Batsman', NULL, 'Right-hand bat', 4, NOW()),
('LSG6', 'Deepak Hooda', 'India', '1995-04-19', 'Batsman', 'Right-arm offbreak', 'Right-hand bat', 4, NOW()),
('LSG7', 'Krunal Pandya', 'India', '1991-03-24', 'All-rounder', 'Left-arm orthodox', 'Left-hand bat', 4, NOW()),
('LSG8', 'Ravi Bishnoi', 'India', '2000-09-05', 'Bowler', 'Legbreak googly', 'Right-hand bat', 4, NOW()),
('LSG9', 'Mohsin Khan', 'India', '1998-11-15', 'Bowler', 'Right-arm fast-medium', 'Right-hand bat', 4, NOW()),
('LSG10', 'Mayank Yadav', 'India', '2001-06-10', 'Bowler', 'Right-arm fast-medium', 'Right-hand bat', 4, NOW()),
('LSG11', 'Naveen-Ul-Haq', 'Afghanistan', '1999-09-20', 'Bowler', 'Right-arm fast', 'Right-hand bat', 4, NOW());

INSERT INTO PlayerStats (PlayerID, StrikeRate, RunsScored, HighestScore, WicketsTaken, BestFigure, Fifties, Hundreds)
VALUES
('LSG1', 136.12, 520, '82', 0, NULL, 4, 0),
('LSG2', 178.21, 499, '75', 0, NULL, 3, 0),
('LSG3', 147.52, 388, '124*', 10, '5/30', 2, 1),
('LSG4', 134.40, 250, '81', 0, NULL, 3, 0),
('LSG5', 137.42, 235, '55*', 0, NULL, 2, 0),
('LSG6', 138.09, 145, '50', 0, NULL, 1, 0),
('LSG7', 126.66, 133, '43*', 6, '3/11', 0, 0),
('LSG8', NULL, 4, '2', 0, NULL, 0, 0),
('LSG9', 200.00, 2, '2', 0, NULL, 0, 0),
('LSG10', 10.42, 2, '2', 0, NULL, 0, 0),
('LSG11', NULL, 14, '3', 0, NULL, 1, 0);


-- -------------------------------
-- RR
INSERT INTO Players (PlayerID, Name, Nationality, DoB, Role, BowlingStyle, BattingStyle, team_id, created_at)
VALUES
('RR1', 'Riyan Parag', 'India', '2001-11-10', 'Batsman', NULL, 'Right-hand bat', 5, NOW()),
('RR2', 'Sanju Samson', 'India', '1994-11-11', 'Wicketkeeper-batsman', NULL, 'Right-hand bat', 5, NOW()),
('RR3', 'Yashasvi Jaiswal', 'India', '2001-12-28', 'Batsman', NULL, 'Left-hand bat', 5, NOW()),
('RR4', 'Jos Buttler', 'England', '1990-09-08', 'Wicketkeeper-batsman', NULL, 'Right-hand bat', 5, NOW()),
('RR5', 'Dhruv Jurel', 'India', '2001-12-07', 'Wicketkeeper-batsman', NULL, 'Right-hand bat', 5, NOW()),
('RR6', 'Shimron Hetmyer', 'West Indies', '1996-12-26', 'Batsman', NULL, 'Left-hand bat', 5, NOW()),
('RR7', 'Rovman Powell', 'West Indies', '1993-07-23', 'All-rounder', 'Right-arm medium', 'Right-hand bat', 5, NOW()),
('RR8', 'Ravichandran Ashwin', 'India', '1986-09-17', 'All-rounder', 'Right-arm offbreak', 'Right-hand bat', 5, NOW()),
('RR9', 'Yuzvendra Chahal', 'India', '1990-07-23', 'Bowler', 'Legbreak googly', 'Right-hand bat', 5, NOW()),
('RR10', 'Trent Boult', 'New Zealand', '1989-07-22', 'Bowler', 'Left-arm fast-medium', 'Right-hand bat', 5, NOW()),
('RR11', 'Jason Holder', 'West Indies', '1991-11-05', 'All-rounder', 'Right-arm fast-medium', 'Right-hand bat', 5, NOW());

INSERT INTO PlayerStats (PlayerID, StrikeRate, RunsScored, HighestScore, WicketsTaken, BestFigure, Fifties, Hundreds)
VALUES
('RR1', 149.21, 573, '84*', 0, NULL, 4, 0),
('RR2', 153.46, 531, '86', 0, NULL, 5, 0),
('RR3', 155.91, 435, '104*', 0, NULL, 1, 1),
('RR4', 140.78, 359, '107*', 0, NULL, 0, 2),
('RR5', 138.29, 195, '56*', 0, NULL, 2, 0),
('RR6', 163.76, 113, '27*', 0, NULL, 0, 0),
('RR7', 151.47, 103, '27', 0, NULL, 0, 0),
('RR8', 116.21, 86, '29', 9, '3/24', 0, 0),
('RR9', 19.33, 11, '11', 18, '3/11', 0, 0),
('RR10', 20.00, 22, '22', 16, '3/22', 0, 0),
('RR11', 140.00, 0, NULL, 0, NULL, 0, 0);



-- -----------------------
-- MI

INSERT INTO Players (PlayerID, Name, Nationality, DoB, Role, BowlingStyle, BattingStyle, team_id, created_at)
VALUES 
('MI1', 'Rohit Sharma', 'India', '1987-04-30', 'Batsman', NULL, 'Right-hand bat', 6, NOW()),
('MI2', 'Tilak Varma', 'India', '2001-08-20', 'Batsman', NULL, 'Left-hand bat', 6, NOW()),
('MI3', 'Suryakumar Yadav', 'India', '1990-09-14', 'Batsman', NULL, 'Right-hand bat', 6, NOW()),
('MI4', 'Ishan Kishan', 'India', '1998-07-18', 'Batsman', NULL, 'Left-hand bat', 6, NOW()),
('MI5', 'Tim David', 'Singapore', '1996-11-14', 'Batsman', NULL, 'Right-hand bat', 6, NOW()),
('MI6', 'Hardik Pandya', 'India', '1993-10-11', 'All-rounder', 'Right-arm medium', 'Right-hand bat', 6, NOW()),
('MI7', 'Mohammad Nabi', 'Afghanistan', '1985-01-01', 'All-rounder', 'Right-arm offbreak', 'Right-hand bat', 6, NOW()),
('MI8', 'Piyush Chawla', 'India', '1989-12-24', 'Bowler', 'Legbreak', 'Left-hand bat', 6, NOW()),
('MI9', 'Gerald Coetzee', 'South Africa', '1996-08-25', 'Bowler', 'Right-arm fast', 'Right-hand bat', 6, NOW()),
('MI10', 'Jasprit Bumrah', 'India', '1993-12-06', 'Bowler', 'Right-arm fast', 'Right-hand bat', 6, NOW()),
('MI11', 'Shams Mulani', 'India', '1996-12-14', 'All-rounder', 'Slow left-arm orthodox', 'Left-hand bat', 6, NOW());

INSERT INTO PlayerStats (PlayerID, StrikeRate, RunsScored, HighestScore, WicketsTaken, BestFigure, Fifties, Hundreds)
VALUES 
('MI1', 150.00, 417, '105*', 0, NULL, 1, 1),
('MI2', 149.64, 416, '65', 0, NULL, 3, 0),
('MI3', 167.47, 345, '102*', 0, NULL, 3, 1),
('MI4', 148.83, 320, '69', 0, NULL, 1, 0),
('MI5', 158.55, 241, '45*', 0, NULL, 0, 0),
('MI6', 143.04, 216, '46', 11, '3/31', 0, 0),
('MI7', 112.90, 35, '23', 2, '1/16', 0, 0),
('MI8', 100.00, 15, '10', 13, '3/29', 1, 0),
('MI9', 63.63, 14, '8', 13, '4/34', 0, 0),
('MI10', 100.00, 12, '8*', 20, '5/21', 0, 0),
('MI11', 100.00, 1, '1*', 1, '1/9', 0, 0);


-- -----------------------------------------------
-- punjab
-- ------------------------
INSERT INTO Players (PlayerID, Name, Nationality, DoB, Role, BowlingStyle, BattingStyle, team_id, created_at)
VALUES 
('PBK1', 'Shashank Singh', 'India', '1995-03-17', 'Batsman', NULL, 'Right-hand bat', 7, NOW()),
('PBK2', 'Prabhsimran Singh', 'India', '2000-11-11', 'Batsman', NULL, 'Right-hand bat', 7, NOW()),
('PBK3', 'Jonny Bairstow', 'England', '1989-09-26', 'Batsman', NULL, 'Right-hand bat', 7, NOW()),
('PBK4', 'Sam Curran', 'England', '1998-06-03', 'All-rounder', 'Left-arm medium-fast', 'Left-hand bat', 7, NOW()),
('PBK6', 'Jitesh Sharma', 'India', '1993-11-03', 'Wicketkeeper-batsman', NULL, 'Right-hand bat', 7, NOW()),
('PBK7', 'Shikhar Dhawan', 'India', '1985-12-05', 'Batsman', NULL, 'Left-hand bat', 7, NOW()),
('PBK8', 'Liam Livingstone', 'England', '1993-08-04', 'All-rounder', 'Right-arm offbreak', 'Right-hand bat', 7, NOW()),
('PBK9', 'Harpreet Brar', 'India', '1995-09-16', 'All-rounder', 'Slow left-arm orthodox', 'Left-hand bat', 7, NOW()),
('PBK10', 'Harshal Patel', 'India', '1990-11-23', 'Bowler', 'Right-arm medium', 'Right-hand bat', 7, NOW()),
('PBK11', 'Arshdeep Singh', 'India', '1999-02-05', 'Bowler', 'Left-arm fast-medium', 'Left-hand bat', 7, NOW()),
('PBK5', 'Kagiso Rabada', 'South Africa', '1995-05-25', 'Bowler', 'Right-arm fast', 'Right-hand bat', 7, NOW());

INSERT INTO PlayerStats (PlayerID, StrikeRate, RunsScored, HighestScore, WicketsTaken, BestFigure, Fifties, Hundreds)
VALUES
('PBK1', 164.65, 354, '68', NULL, NULL, 2, 0),
('PBK2', 156.80, 334, '71', NULL, NULL, 2, 0),
('PBK3', 152.82, 298, '108', NULL, NULL, 0, 1),
('PBK4', 123.28, 270, '63', 16, '3/28', 2, 0),
('PBK6', 131.69, 187, '32', NULL, NULL, 0, 0),
('PBK7', 125.61, 152, '70', NULL, NULL, 1, 0),
('PBK8', 142.30, 111, '38', 3, '2/19', 0, 0),
('PBK9', 138.88, 75, '29', 7, '2/17', 0, 0),
('PBK10', 68.42, 13, '12', 24, '3/15', 0, 0),
('PBK11', 133.33, 4, '4', 19, '4/29', 0, 0),
('PBK5', 142.85, 20, '11', 11, '2/18', 0, 0);


-- -----------------------------------------------------------
-- RCB
INSERT INTO Players (PlayerID, Name, Nationality, DoB, Role, BowlingStyle, BattingStyle, team_id, created_at)
VALUES 
('RCB01', 'Virat Kohli', 'Indian', '1988-11-05', 'Batsman', NULL, 'Right-hand bat', 8,NOW()),
('RCB02', 'Faf du Plessis', 'South African', '1984-07-13', 'Batsman', NULL, 'Right-hand bat', 8,NOW()),
('RCB03', 'Glenn Maxwell', 'Australian', '1988-10-14', 'All-rounder', 'Right-arm offbreak', 'Right-hand bat', 8,NOW()),
('RCB04', 'Rajat Patidar', 'Indian', '1993-06-01', 'Batsman', NULL, 'Right-hand bat', 8,NOW()),
('RCB05', 'Yash Dayal', 'Indian', '1990-11-23', 'Bowler', 'Right-arm medium-fast', 'Right-hand bat', 8,NOW()),
('RCB06', 'Wanindu Hasaranga', 'Sri Lankan', '1997-07-29', 'All-rounder', 'Right-arm legbreak', 'Right-hand bat', 8,NOW()),
('RCB07', 'Mohammed Siraj', 'Indian', '1994-03-13', 'Bowler', 'Right-arm fast', 'Right-hand bat', 8,NOW()),
('RCB08', 'Josh Hazlewood', 'Australian', '1991-01-08', 'Bowler', 'Right-arm fast', 'Left-hand bat', 8,NOW()),
('RCB09', 'Dinesh Karthik', 'Indian', '1985-06-01', 'Wicketkeeper/Batsman', NULL, 'Right-hand bat', 8,NOW()),
('RCB10', 'Shahbaz Ahmed', 'Indian', '1994-12-12', 'All-rounder', 'Left-arm orthodox', 'Left-hand bat', 8,NOW()),
('RCB11', 'Suyash Prabhudessai', 'Indian', '1997-12-06', 'Batsman', NULL, 'Right-hand bat', 8,NOW());

INSERT INTO PlayerStats (PlayerID, StrikeRate, RunsScored, HighestScore, WicketsTaken, BestFigure, Fifties, Hundreds)
VALUES
('RCB01', 130.55, 639, '122*', 0, NULL, 2, 2),
('RCB02', 144.50, 633, '96', 0, NULL, 8, 0),
('RCB03', 154.77, 409, '78', 0, NULL, 4, 0),
('RCB04', 144.29, 333, '112*', 0, NULL, 2, 1),
('RCB05', 128.89, 163, '36*', 19, '25/5', 0, 0),
('RCB06', 120.83, 145, '32', 24, '27/4', 0, 0),
('RCB07', 81.36, 110, '25', 14, '20/3', 0, 0),
('RCB08', 110.00, 100, '15', 11, '12/2', 0, 0),
('RCB09', 130.23, 95, '20*', 0, NULL, 0, 0),
('RCB10', 128.57, 90, '25', 5, '15/2', 0, 0),
('RCB11', 130.77, 80, '14', 0, NULL, 0, 0);

-- ---------------------------------
-- SRH

INSERT INTO Players (PlayerID, Name, Nationality, DoB, Role, BowlingStyle, BattingStyle, team_id, created_at)
VALUES 
('SRH01', 'Abhishek Sharma', 'Indian', '2000-09-04', 'Batsman', NULL, 'Left-hand bat', 9, CURRENT_TIMESTAMP),
('SRH02', 'Travis Head', 'Australian', '1993-12-29', 'Batsman', NULL, 'Left-hand bat', 9, CURRENT_TIMESTAMP),
('SRH03', 'Rahul Tripathi', 'Indian', '1991-03-02', 'Batsman', NULL, 'Right-hand bat', 9, CURRENT_TIMESTAMP),
('SRH04', 'Nitish Kumar Reddy', 'Indian', '2002-05-01', 'All-rounder', 'Right-arm medium', 'Right-hand bat', 9, CURRENT_TIMESTAMP),
('SRH05', 'Heinrich Klaasen', 'South African', '1991-07-30', 'Wicketkeeper', NULL, 'Right-hand bat', 9, CURRENT_TIMESTAMP),
('SRH06', 'Shahbaz Ahmed', 'Indian', '1994-12-11', 'All-rounder', 'Left-arm orthodox', 'Left-hand bat', 9, CURRENT_TIMESTAMP),
('SRH07', 'Abdul Samad', 'Indian', '2001-10-28', 'Batsman', NULL, 'Right-hand bat', 9, CURRENT_TIMESTAMP),
('SRH08', 'Sanvir Singh', 'Indian', '1999-01-08', 'Batsman', NULL, 'Right-hand bat', 9, CURRENT_TIMESTAMP),
('SRH09', 'Pat Cummins', 'Australian', '1993-05-08', 'Bowler', 'Right-arm fast', 'Right-hand bat', 9, CURRENT_TIMESTAMP),
('SRH10', 'Bhuvneshwar Kumar', 'Indian', '1990-02-05', 'Bowler', 'Right-arm medium', 'Right-hand bat', 9, CURRENT_TIMESTAMP),
('SRH11', 'Vijayakanth Viyaskanth', 'Sri Lankan', '2001-05-12', 'Bowler', 'Right-arm leg-spin', 'Right-hand bat', 9, CURRENT_TIMESTAMP);

INSERT INTO PlayerStats (PlayerID, StrikeRate, RunsScored, HighestScore, WicketsTaken, BestFigure, Fifties, Hundreds)
VALUES
('SRH01', 148.56, 455, '79', 0, NULL, 3, 0),
('SRH02', 135.76, 390, '85', 0, NULL, 2, 0),
('SRH03', 137.94, 327, '72', 0, NULL, 2, 0),
('SRH04', 123.45, 265, '59', 8, '2/14', 1, 0),
('SRH05', 140.65, 280, '71*', 0, NULL, 2, 0),
('SRH06', 128.32, 190, '47*', 10, '3/27', 0, 0),
('SRH07', 145.78, 245, '63', 0, NULL, 1, 0),
('SRH08', 130.42, 230, '54', 0, NULL, 2, 0),
('SRH09', 110.45, 85, '22*', 15, '4/20', 0, 0),
('SRH10', 95.63, 60, '15*', 12, '3/18', 0, 0),
('SRH11', 90.74, 45, '11*', 8, '3/24', 0, 0);

-- ------------------------------------------------------------------
-- GT
INSERT INTO Players (PlayerID, Name, Nationality, DoB, Role, BowlingStyle, BattingStyle, team_id, created_at)
VALUES 
('GT01', 'Shubman Gill', 'Indian', '1999-09-08', 'Batsman', NULL, 'Right-hand bat', 10, CURRENT_TIMESTAMP),
('GT02', 'Wriddhiman Saha', 'Indian', '1984-10-24', 'Wicketkeeper', NULL, 'Right-hand bat', 10, CURRENT_TIMESTAMP),
('GT03', 'Shahrukh Khan', 'Indian', '1995-05-27', 'All-rounder', 'Right-arm medium', 'Right-hand bat', 10, CURRENT_TIMESTAMP),
('GT04', 'David Miller', 'South African', '1989-06-10', 'Batsman', NULL, 'Left-hand bat', 10, CURRENT_TIMESTAMP),
('GT05', 'Rahul Tewatia', 'Indian', '1993-05-20', 'All-rounder', 'Left-arm leg-spin', 'Left-hand bat', 10, CURRENT_TIMESTAMP),
('GT06', 'Rashid Khan', 'Afghan', '1998-09-20', 'Bowler', 'Right-arm leg-spin', 'Right-hand bat', 10, CURRENT_TIMESTAMP),
('GT07', 'Mohammed Shami', 'Indian', '1990-09-03', 'Bowler', 'Right-arm fast', 'Right-hand bat', 10, CURRENT_TIMESTAMP),
('GT08', 'Alzarri Joseph', 'West Indian', '1996-11-20', 'Bowler', 'Right-arm fast', 'Right-hand bat', 10, CURRENT_TIMESTAMP),
('GT09', 'Sai Sudharsan', 'Indian', '2001-10-15', 'Batsman', NULL, 'Left-hand bat', 10, CURRENT_TIMESTAMP),
('GT10', 'Vijay Shankar', 'Indian', '1991-01-26', 'All-rounder', 'Right-arm medium', 'Right-hand bat', 10, CURRENT_TIMESTAMP),
('GT11', 'Joshua Little', 'Irish', '1999-11-01', 'Bowler', 'Left-arm fast', 'Right-hand bat', 10, CURRENT_TIMESTAMP);

INSERT INTO PlayerStats (PlayerID, StrikeRate, RunsScored, HighestScore, WicketsTaken, BestFigure, Fifties, Hundreds)
VALUES
('GT01', 149.36, 850, '130*', 0, NULL, 4, 2),
('GT02', 126.45, 360, '81*', 0, NULL, 2, 0),
('GT03', 135.50, 310, '77*', 8, '2/19', 1, 0),
('GT04', 142.65, 450, '93*', 0, NULL, 3, 0),
('GT05', 140.29, 200, '50*', 12, '4/25', 1, 0),
('GT06', 125.50, 190, '45*', 24, '5/15', 0, 1),
('GT07', 90.63, 85, '20*', 22, '4/18', 0, 0),
('GT08', 88.75, 60, '15*', 15, '3/28', 0, 0),
('GT09', 138.67, 275, '64', 0, NULL, 1, 0),
('GT10', 127.45, 210, '58', 8, '2/29', 1, 0),
('GT11', 85.45, 35, '10*', 18, '3/22', 0, 0);

select * from players ;

-- --------------------------
--  Matches table
-- -------------------------

INSERT INTO Matches (match_date, venue_id, team1_id, team2_id, team1_score, team2_score, winner_team_id, created_at) VALUES
('2024-04-01', 1, 6, 1, 180, 170, 6, NOW()),
('2024-04-02', 2, 3, 4, 150, 145, 3, NOW()), 
('2024-04-03', 7, 5, 7, 200, 190, 5, NOW()), 
('2024-04-04', 3, 1, 9, 210, 200, 1, NOW()), 
('2024-04-05', 5, 9, 10, 160, 150, 9, NOW()), 
('2024-04-06', 1, 6, 8, 200, 190, 6, NOW()), 
('2024-04-07', 10, 10, 7, 160, 150, 10, NOW()), 
('2024-04-08', 3, 5, 7, 200, 190, 5, NOW()), 
('2024-04-09', 4, 4, 8, 210, 200, 4, NOW()), 
('2024-04-10', 6, 9, 1, 160, 150, 9, NOW()), 
('2024-04-11', 5, 10, 2, 180, 170, 10, NOW()), 
('2024-04-12', 8, 10, 6, 150, 140, 10, NOW()),
('2024-04-13', 8, 3, 5, 150, 140, 3, NOW()), 
('2024-04-14', 3, 4, 6, 200, 190, 4, NOW()), 
('2024-04-15', 7, 7, 8, 210, 200, 7, NOW()), 
('2024-04-16', 1, 1, 4, 180, 170, 1, NOW()), 
('2024-04-17', 4, 2, 5, 160, 150, 2, NOW()),
('2024-04-18', 6, 9, 6, 180, 175, 9, NOW()),  
('2024-04-19', 2, 7, 10, 210, 200, 7, NOW()), 
('2024-04-20', 5, 8, 1, 160, 150, 8, NOW()), 
('2024-04-21', 9, 9, 2, 180, 170, 9, NOW()), 
('2024-04-22', 10, 10, 3, 150, 140, 3, NOW()), -- kkr
('2024-04-23', 8, 4, 5, 200, 190, 4, NOW()), 
('2024-04-24', 9, 7, 6, 160, 155, 7, NOW()), 
('2024-04-25', 3, 6, 7, 210, 200, 6, NOW()), 
('2024-04-26', 7, 8, 9, 160, 150, 8, NOW()), 
('2024-04-27', 1, 1, 5, 180, 170, 1, NOW()), 
('2024-04-28', 4, 2, 6, 160, 150, 2, NOW()), 
('2024-04-29', 2, 3, 7, 200, 190, 3, NOW()), 
('2024-04-30', 6, 4, 8, 210, 200, 4, NOW()), 
('2024-05-01', 7, 5, 6, 170, 160, 5, NOW()),
('2024-05-02', 5, 9, 10, 160, 150, 9, NOW()), 
('2024-05-03', 1, 1, 6, 180, 170, 1, NOW()),  -- csk
('2024-05-04', 3, 3, 8, 200, 190, 3, NOW()), 
('2024-05-05', 7, 7, 9, 210, 200, 7, NOW()), 
('2024-05-06', 10, 10, 1, 160, 150, 1, NOW()), 
('2024-05-08', 4, 2, 6, 190, 185, 2, NOW()),
('2024-05-09', 9, 9, 4, 210, 200, 9, NOW()), 
('2024-05-10', 6, 6, 2, 160, 150, 6, NOW()), 
('2024-05-11', 5, 5, 7, 180, 170, 5, NOW()), 
('2024-05-13', 8, 8, 3, 200, 190, 8, NOW()), 
('2024-05-14', 3, 1, 6, 200, 190, 1, NOW()), 
('2024-05-15', 3, 3, 4, 210, 200, 3, NOW()), 
('2024-05-16', 4, 6, 9, 160, 150, 6, NOW()), 
('2024-05-17', 1, 1, 8, 180, 170, 1, NOW()), 
('2024-05-18', 2, 2, 10, 160, 150, 2, NOW()), 
('2024-05-19', 5, 5, 4, 210, 200, 5, NOW()), 
('2024-05-20', 10, 4, 6, 175, 170, 4, NOW()), 
('2024-05-21', 9, 9, 1, 160, 150, 9, NOW()), 
('2024-05-22', 6, 6, 3, 180, 170, 6, NOW()), 
('2024-05-23', 4, 2, 7, 160, 150, 2, NOW()), 
('2024-05-24', 3, 3, 8, 200, 190, 3, NOW()), 
('2024-05-25', 7, 7, 5, 210, 200, 7, NOW()), 
('2024-05-26', 8, 8, 6, 160, 150, 8, NOW()),
('2024-05-27', 1, 6, 3, 180, 175, 6, NOW()), 
('2024-05-28', 5, 10, 9, 210, 200, 10, NOW()), 
('2024-05-29', 3, 4, 1, 200, 190, 4, NOW()), 
('2024-05-30', 4, 6, 5, 180, 170, 6, NOW());

-- Qualifier 1
INSERT INTO Matches (match_date, venue_id, team1_id, team2_id, team1_score, team2_score, winner_team_id, created_at) VALUES
('2024-06-01', 1, 6, 1, 180, 170, 6, NOW());

-- Eliminator
INSERT INTO Matches (match_date, venue_id, team1_id, team2_id, team1_score, team2_score, winner_team_id, created_at) VALUES
('2024-06-02', 3, 3, 9, 170, 160, 3, NOW());

-- Qualifier 2
INSERT INTO Matches (match_date, venue_id, team1_id, team2_id, team1_score, team2_score, winner_team_id, created_at) VALUES
('2024-06-03', 2, 3, 1, 180, 170, 3, NOW());

-- Final
INSERT INTO Matches (match_date, venue_id, team1_id, team2_id, team1_score, team2_score, winner_team_id, created_at) VALUES
('2024-06-05', 1, 6, 3, 190, 192, 3, NOW());

select * from matches;

-- --------------------------
--  Venue table
-- -------------------------

INSERT INTO Venues (name, city, capacity, created_at) VALUES
('Wankhede Stadium', 'Mumbai', 33000, NOW()),
('Eden Gardens', 'Kolkata', 68000, NOW()),
('M. A. Chidambaram Stadium', 'Chennai', 50000, NOW()),
('Feroz Shah Kotla Ground', 'Delhi', 48000, NOW()),
('M. Chinnaswamy Stadium', 'Bangalore', 40000, NOW()),
('Rajiv Gandhi International Cricket Stadium', 'Hyderabad', 55000, NOW()),
('Sawai Mansingh Stadium', 'Jaipur', 30000, NOW()),
('Narendra Modi Stadium', 'Ahmedabad', 132000, NOW()),
('Punjab Cricket Association IS Bindra Stadium', 'Mohali', 26000, NOW()),
('Bharat Ratna Shri Atal Bihari Vajpayee Ekana Cricket Stadium', 'Lucknow', 50000, NOW());

select * from Venues;
-- --------------------------
--  Coaches table
-- -------------------------

INSERT INTO Coaches (name, nationality, role, team_id, created_at) VALUES
('Stephen Fleming', 'New Zealander', 'Head Coach', 1, NOW()),
('Ricky Ponting', 'Australian', 'Head Coach', 2, NOW()),
('Brendon McCullum', 'New Zealander', 'Head Coach', 3, NOW()),
('Andy Flower', 'Zimbabwean', 'Head Coach', 4, NOW()),
('Kumar Sangakkara', 'Sri Lankan', 'Head Coach', 5, NOW()),
('Mahela Jayawardene', 'Sri Lankan', 'Head Coach', 6, NOW()),
('Anil Kumble', 'Indian', 'Head Coach', 7, NOW()),
('Simon Katich', 'Australian', 'Head Coach', 8, NOW()),
('Tom Moody', 'Australian', 'Head Coach', 9, NOW()),
('Ashish Nehra', 'Indian', 'Head Coach', 10, NOW());

select * from coaches;

-- --------------------------
--  scorecard  table
-- -------------------------

select * from matches;
select * from venues;
select * from coaches;

select * from teams;
select * from players where PlayerID IN ('RR1','RR2','RR3','RR4','RR5','RR6','RR7','RR8','RR9','RR10','RR11');
select * from players ;
UPDATE players SET team_id = 5 where PlayerID IN ('RR1','RR2','RR3','RR4','RR5','RR6','RR7','RR8','RR9','RR10','RR11');

-- ----------------------------------
-- SQUAD DETAILS
-- ----------------------------------
SELECT t.team_name ,p.name,c.name
FROM teams AS t JOIN players AS p ON t.team_id = p.team_id
join coaches AS c ON t.team_id = c.team_id
WHERE c.team_id = 10;

-- -------------------------------------
-- number of matches played in each venue
-- --------------------------------------
SELECT v.name AS venue_name,COUNT(m.match_id) AS match_count 
FROM venues AS v LEFT JOIN matches AS m on v.venue_id = m.venue_id GROUP BY v.name;

-- -------------------------------------
-- the teams with the most matches played
-- ---------------------------------------
SELECT t.team_name AS 'team name', COUNT(m.match_id) AS match_count
FROM teams t
JOIN matches m ON t.team_id = m.team1_id OR t.team_id = m.team2_id
GROUP BY t.team_name
ORDER BY match_count DESC;

-- -------------------------------------------
-- top FIve highest runs scored
-- -------------------------------------------

SELECT p.name AS 'PLAYER' , p.RunsScored AS RUNS
FROM players AS p
WHERE RunsScored > 200
order by RunsScored desc
LIMIT 5;

-- ---------------------------------------
-- WICKET TAKEN
-- ---------------------------------------
SELECT p.name AS 'PLAYER' , p.WicketsTaken AS Wickets
FROM players AS p
-- WHERE RunsScored > 200
order by WicketsTaken desc
LIMIT 5;

-- --------------------------------------------
-- HIGHEST TARGET
-- --------------------------------------------
SELECT t.team_name AS 'Team Name', MAX(m.team1_score) AS highest_target
FROM matches m
JOIN teams t ON m.team1_id = t.team_id
WHERE m.team1_score > m.team2_score
GROUP BY t.team_name
ORDER BY highest_target DESC;

-- ------------------------------------------------
-- highest run chase successfully
-- --------------------------------------------------
SELECT t.team_name AS 'Team Name', MAX(m.team2_score) AS highest_chase
FROM matches m
JOIN teams t ON m.team2_id = t.team_id
WHERE m.team2_score > m.team1_score
GROUP BY t.team_name
ORDER BY highest_chase DESC;
