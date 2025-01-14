USE league_db;
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
('CSK11', 82.35, 14, '11', 6, '4/22', 0, 0),
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
('DC011', NULL, 3, '3', 17, '14/3', 0, 0),
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
('KKR11', 134.78, 62, '39', 0, NULL, 0, 0),
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
('LSG11', NULL, 14, '3', 0, NULL, 1, 0),
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
('RR11', 140.00, 0, NULL, 0, NULL, 0, 0),
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
('MI11', 100.00, 1, '1*', 1, '1/9', 0, 0),
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
('PBK5', 142.85, 20, '11', 11, '2/18', 0, 0),
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
('RCB11', 130.77, 80, '14', 0, NULL, 0, 0),
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
('SRH11', 90.74, 45, '11*', 8, '3/24', 0, 0),
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