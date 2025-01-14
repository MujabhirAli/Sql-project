USE league_db;
CREATE TABLE Venues (
    venue_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    capacity INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

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
