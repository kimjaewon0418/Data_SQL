SHOW VARIABLES;
SHOW VARIABLES LIKE 'char_%';
SHOW DATABASES;
USE world;
SHOW TABLES;

DROP database lecture;
use lecture;
show tables;

CREATE TABLE booklibrary(
	bookid INTEGER,
    bookname VARCHAR(20),
    publisher VARCHAR(20),
    price INTEGER
    );
    
DROP TABLE booklibrary;

CREATE TABLE booklibrary(
	bookid INTEGER NOT NULL,
    bookname VARCHAR(20) UNIQUE,
    publisher VARCHAR(20) ,
    price INTEGER DEFAULT 10000 CHECK(price > 5000)
    );
SHOW TABLES;
SELECT * FROM booklibrary;

ALTER TABLE booklibrary ADD inventory VARCHAR(30);

-- unsafe update 호출
SET SQL_SAFE_UPDATES=0;
UPDATE booklibrary
SET bookname = '대한민국 부산';


