UPDATE Excursions
SET PricePerExcursion = PricePerExcursion * 1.21
  WHERE ExcursionLeaderID IN (
    SELECT ExcursionLeaderID
    FROM Excursion_Leaders
    WHERE Port = 'Copenhagen'
);

SELECT 
    Orders.OrderID AS Order_ID, 
    Passengers.PassengerID AS Passenger_ID, 
    Passengers.PassengerName AS Name_of_Passenger, 
    Passengers.Cabin AS Cabin
FROM Orders
JOIN Passengers ON Orders.PassengerID = Passengers.PassengerID;

SELECT DISTINCT Passengers.PassengerID, 
Passengers.PassengerName, 
Passengers.Cabin
FROM Passengers
JOIN Orders ON Passengers.PassengerID = Orders.PassengerID
JOIN Order_Excursions ON Orders.OrderID = Order_Excursions.OrderID
JOIN Excursions ON Order_Excursions.ExcursionNo = Excursions.ExcursionNo 
JOIN Excursion_Leaders ON Excursions.ExcursionLeaderID = Excursion_Leaders.ExcursionLeaderID
WHERE Excursion_Leaders.Port IN ('St Petersburg', 'Oslo');

SELECT Orders.OrderID AS Order_Number, 
Passengers.PassengerName AS Passenger_Name
FROM Orders
JOIN Passengers ON Orders.PassengerID = Passengers.PassengerID
JOIN Order_Excursions ON Orders.OrderID = Order_Excursions.OrderID
WHERE Order_Excursions.ExcursionNo = 'C001' AND Order_Excursions.Qty > 4;

SELECT Cruises.CruiseName, 
COUNT(Order_Excursions.ExcursionNo) AS Number_Of_Excursions
FROM Cruises
JOIN Orders ON Cruises.CruiseNo = Orders.CruiseNo
JOIN Order_Excursions ON Orders.OrderID = Order_Excursions.OrderID
GROUP BY Cruises.CruiseName;

