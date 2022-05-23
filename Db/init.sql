mysql -u root -p

CREATE DATABASE IF NOT EXISTS dev;
USE dev;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT PERMISSION;
CREATE TABLE weights(
    SNo int,
    Weightinkgs int,
    Name varchar(50)
);
INSERT INTO weights(SNo, Weightinkgs, Name)
VALUES (1, 55, 'Suren')