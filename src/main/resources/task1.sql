CREATE TABLE IF NOT EXISTS Person (
    PersonId  INT          PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(255) NOT NULL,
    LastName  VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Address (
    AddressId INT          PRIMARY KEY AUTO_INCREMENT,
    PersonId  INT          NOT NULL,
    City      VARCHAR(255) NOT NULL,
    State     VARCHAR(255) NOT NULL,
    FOREIGN KEY (PersonId) REFERENCES Person (PersonId)
);

TRUNCATE TABLE Person;

INSERT INTO Person (PersonId, LastName, FirstName)
VALUES (NULL, 'Wang', 'Allen');
INSERT INTO Person (PersonId, LastName, FirstName)
VALUES (NULL, 'Joe', 'Harper');
INSERT INTO Person (PersonId, LastName, FirstName)
VALUES (NULL, 'Cassy', 'Nestant');


TRUNCATE TABLE Address;

INSERT INTO Address (AddressId, PersonId, City, State)
VALUES (NULL, '1', 'New York City', 'New York');
INSERT INTO Address (AddressId, PersonId, City, State)
VALUES (NULL, '2', 'Atlantic City', 'New Jersey');
INSERT INTO Address (AddressId, PersonId, City, State)
VALUES (NULL, '3', 'Philadelphia', 'Philadelphia');

SELECT p.FirstName, p.LastName, a.City, a.State
FROM Address a
         JOIN Person p ON a.PersonId = p.PersonId;