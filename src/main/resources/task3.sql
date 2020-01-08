CREATE TABLE IF NOT EXISTS ExtendedEmployee (
    Id        INT PRIMARY KEY AUTO_INCREMENT,
    Name      VARCHAR(255) NOT NULL,
    Salary    INT,
    ManagerId INT REFERENCES ExtendedEmployee
);

TRUNCATE TABLE ExtendedEmployee;

INSERT INTO ExtendedEmployee (Id, Name, Salary, ManagerId)
VALUES (NULL, 'Joe', '70000', '3');
INSERT INTO ExtendedEmployee (Id, Name, Salary, ManagerId)
VALUES (NULL, 'Henry', '80000', '4');
INSERT INTO ExtendedEmployee (Id, Name, Salary, ManagerId)
VALUES (NULL, 'Sam', '60000', NULL);
INSERT INTO ExtendedEmployee (Id, Name, Salary, ManagerId)
VALUES (NULL, 'Max', '90000', NULL);


SELECT employee.Name AS Employee
FROM ExtendedEmployee employee
    JOIN ExtendedEmployee manager
WHERE manager.Id = employee.ManagerId
  AND manager.Salary < employee.Salary