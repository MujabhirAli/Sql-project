USE league_db;
CREATE TABLE Teams (
    team_id INT AUTO_INCREMENT PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    team_group CHAR(1) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    
);
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

select * from Teams;