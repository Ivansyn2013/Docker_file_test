CREATE USER 'user1'@'localhost' IDENTIFIED BY '123';
CREATE USER 'user1'@'%' IDENTIFIED BY '123';

GRANT ALL ON *.* TO 'user1'@'localhost';
GRANT ALL ON *.* TO 'user1'@'%';
FLUSH PRIVILEGES;
