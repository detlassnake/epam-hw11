CREATE TABLE IF NOT EXISTS Customers (
    Id   INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Orders (
    Id         INT PRIMARY KEY AUTO_INCREMENT,
    CustomerId INT NOT NULL,
    FOREIGN KEY (CustomerId) REFERENCES Customers (Id)
);
TRUNCATE TABLE Customers;

INSERT INTO Customers (Id, Name)
VALUES (NULL, 'Joe');
INSERT INTO Customers (Id, Name)
VALUES (NULL, 'Henry');
INSERT INTO Customers (Id, Name)
VALUES (NULL, 'Sam');
INSERT INTO Customers (Id, Name)
VALUES (NULL, 'Max');

TRUNCATE TABLE Orders;

INSERT INTO Orders (Id, CustomerId)
VALUES (NULL, '3');
INSERT INTO Orders (Id, CustomerId)
VALUES (NULL, '1');

SELECT C.Name AS Customers
FROM Customers c
WHERE c.Id NOT IN (SELECT o.customerId FROM orders o);