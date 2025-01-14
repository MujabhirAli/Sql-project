USE league_db;
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
