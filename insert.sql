INSERT INTO Passengers (PassengerID, PassengerName, Cabin) VALUES 
('P001', 'Weber', 2345),
('P005', 'Elshaw', 3777),
('P003', 'Brown', 8124);

INSERT INTO Cruises (CruiseNo, CruiseName) VALUES 
(1012, 'Baltic Highlights'),
(2121, 'Fjords');

INSERT INTO Orders (OrderID, PassengerID, CruiseNo, TotalCost) VALUES 
('O23', 'P001', 1012, 1900.00),
('O32', 'P005', 2121, 1450.00),
('O01', 'P003', 1012, 1050.00);

INSERT INTO Excursion_Leaders (ExcursionLeaderID, ExcursionLeader, Port) VALUES 
('E0001', 'Wermter', 'Copenhagen'),
('E0002', 'Smith', 'Oslo'),
('E1008', 'Jones', 'St Petersburg'),
('E0070', 'Malone', 'Bergen'),
('E0101', 'Ham', 'Holden');

INSERT INTO Excursions (ExcursionNo, Excursion, PricePerExcursion, ExcursionLeaderID) VALUES 
('C001', 'Little Mermaid', 200.00, 'E0001'),
('O002', 'Museums', 150.00, 'E0002'),
('P002', 'Palaces', 300.00, 'E1008'),
('P003', 'Ballet', 100.00, 'E1008'),
('B001', 'Biking', 50.00,	'E0070'),
('B111', 'Hiking', 75.00,	'E0070'),
('H002', 'Puffins', 100.00,	'E0101' );

INSERT INTO Order_Excursions (OrderID, ExcursionNo, Qty) VALUES 
('O23', 'C001', 5),
('O23', 'O002', 2),
('O23', 'P002', 1),
('O23', 'P003', 3),
('O32', 'B001', 4),
('O32', 'B111', 10),
('O32', 'H002', 5),
('O01', 'O002', 3),
('O01', 'P002', 2);
