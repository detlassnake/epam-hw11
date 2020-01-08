CREATE TABLE IF NOT EXISTS OtherPerson(
    Id    INT PRIMARY KEY AUTO_INCREMENT,
    Email VARCHAR(255) NOT NULL
);

TRUNCATE TABLE OtherPerson;

INSERT INTO OtherPerson (Id, Email)
VALUES (NULL, 'a@b.com');
INSERT INTO OtherPerson (Id, Email)
VALUES (NULL, 'c@d.com');
INSERT INTO OtherPerson (Id, Email)
VALUES (NULL, 'a@b.com');

SELECT Email
FROM OtherPerson
GROUP BY Email
HAVING count(Email) > 1;