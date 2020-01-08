CREATE TABLE IF NOT EXISTS Employee
(
    Id     INT PRIMARY KEY AUTO_INCREMENT,
    Salary INT NOT NULL
);

TRUNCATE TABLE Employee;

INSERT INTO Employee (Id, Salary)
VALUES (NULL, '100');
INSERT INTO Employee (Id, Salary)
VALUES (NULL, '200');
INSERT INTO Employee (Id, Salary)
VALUES (NULL, '300');


SELECT max(Salary)
FROM Employee
WHERE Salary < (
    SELECT max(Salary)
    FROM Employee
);