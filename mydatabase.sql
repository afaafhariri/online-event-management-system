CREATE DATABASE mydatabase;
USE mydatabase;
CREATE TABLE customer (
	id INT AUTO_INCREMENT PRIMARY KEY,
    cname VARCHAR(255) NOT NULL,
    email VARCHAR(300) NOT NULL,
    mobile VARCHAR(15) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);
 
CREATE TABLE booking(
	bid INT AUTO_INCREMENT PRIMARY KEY,
    organizer VARCHAR(255) NOT NULL,
    event VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    eventdate VARCHAR(25) NOT NULL,
    customermobile VARCHAR(15) NOT NULL
);

SELECT* FROM customer;
SELECT* FROM booking;