CREATE DATABASE league_db;
USE league_db;
show tables;
select * from teams;
select * from coaches;
select * from players;
select * from venues;
select * from matches;
select * from playerstats;



-- List All Teams with Their Coaches
SELECT T.team_name, C.name AS coach_name
FROM Teams T
LEFT JOIN Coaches C ON T.team_id = C.team_id
ORDER BY T.team_name;


-- Find Players and Their Teams
SELECT P.Name AS player_name, T.team_name
FROM Players P
JOIN Teams T ON P.team_id = T.team_id
ORDER BY T.team_name, P.Name;


-- Get Player Statistics for a Specific Player
SELECT P.Name, PS.RunsScored, PS.WicketsTaken
FROM Players P
JOIN PlayerStats PS ON P.PlayerID = PS.PlayerID
WHERE P.Name LIKE 'Ro%';  

-- Count Players in Each Team
SELECT T.team_name, COUNT(P.PlayerID) AS player_count
FROM Teams T
LEFT JOIN Players P ON T.team_id = P.team_id
GROUP BY T.team_name
ORDER BY player_count DESC;


-- Find Matches Played at a Specific Venue
SELECT M.match_id, M.match_date, T1.team_name AS team1, T2.team_name AS team2
FROM Matches M
JOIN Teams T1 ON M.team1_id = T1.team_id
JOIN Teams T2 ON M.team2_id = T2.team_id
WHERE M.venue_id = 4;  


-- Get the Highest Scoring Player
SELECT P.Name , PS.RunsScored
from Players AS P
JOIN playerstats AS PS ON P.PlayerID = PS.PlayerID
WHERE PS.RunsScored = (SELECT max(RunsScored) FROM PlayerStats);


-- Get the Highest WicketTaken Player
SELECT P.Name , PS.WicketsTaken
from Players AS P
JOIN playerstats AS PS ON P.PlayerID = PS.PlayerID
WHERE PS.WicketsTaken = (SELECT max(WicketsTaken) FROM PlayerStats);


-- List All Venues with Their Match Count
SELECT V.name AS venue_name, COUNT(M.match_id) AS match_count
FROM Venues V
LEFT JOIN Matches M ON V.venue_id = M.venue_id
GROUP BY V.name
ORDER BY match_count DESC;


-- Get Players with More Than 50 Runs
SELECT P.Name, PS.RunsScored
FROM Players P
JOIN PlayerStats PS ON P.PlayerID = PS.PlayerID
WHERE PS.RunsScored > 500
ORDER BY PS.RunsScored DESC;


-- List Teams and Their Best Player by Runs Scored
SELECT t.team_name AS Team, P.name AS 'Best player' , ps.RunsScored AS Runs
FROM Teams AS t
JOIN Players AS P ON t.team_id = P.team_id
JOIN playerstats AS ps ON P.PlayerID = ps.PlayerID
WHERE ps.RunsScored= (SELECT MAX(ps2.RunsScored)
						FROM Players AS P2
                        JOIN playerstats AS ps2 ON P2.PlayerID = ps2.PlayerID
						WHERE P2.team_id = t.team_id);


-- Get All Matches with Winning Team Information
SELECT M.match_id, M.match_date, T1.team_name AS team1, T2.team_name AS team2, WT.team_name AS winner
FROM Matches M
JOIN Teams T1 ON M.team1_id = T1.team_id
JOIN Teams T2 ON M.team2_id = T2.team_id
LEFT JOIN Teams WT ON M.winner_team_id = WT.team_id;

-- player with their nationality
SELECT P.name AS Player_Name , P.Nationality AS country, t.team_name
FROM players AS P
JOIN teams AS t ON P.team_id = t.team_id
ORDER BY P.name , P.Nationality;

