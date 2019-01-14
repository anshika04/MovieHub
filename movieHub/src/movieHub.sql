create database movieHub;
show databases;

use moviehub;

CREATE TABLE UserDetail (
    userId int NOT NULL AUTO_INCREMENT,
    firstname varchar(255) NOT NULL,
    lastname varchar(255) NOT NULL,
    username varchar(255),
    userPassword varchar(255),
    userRole varchar(255),
    phone varchar(255),
    address varchar(255),
    city varchar(255),
    state varchar(255),
    country varchar(255),
    zipcode int,
    PRIMARY KEY (userId)
);

ALTER TABLE UserDetail AUTO_INCREMENT=100;

CREATE TABLE Product (
    productId varchar(255) NOT NULL,
    productName varchar(255) NOT NULL,
    manufacturer varchar(255),
    productQuantity int,
    productPrice float,
    imageSrc varchar(255),
    productCondition varchar(255),
    retailer varchar(255),
    retailerDiscount float,
    manufactureRebate float,
    productCategory varchar(255),
    productOnSale varchar(225),
    PRIMARY KEY (productId)
);


CREATE TABLE Movies(
	movieId varchar(255) NOT NULL,
	movieImage varchar(500),
	movieName varchar(500),
	moviePrice float,
	movieDirector varchar(500),
	movieStar varchar(500),
	movieDescription varchar(1500),
    movieRating int,
	movieDiscount float,
	movieOnsale varchar(100),
	movieCategory varchar(500),
    movieVideo varchar(500),
    PRIMARY KEY (movieId)
);

CREATE TABLE Subscriptions (
    Id int NOT NULL AUTO_INCREMENT,
    subscriptionId int,
    movieId varchar(255) NOT NULL,
    movieName varchar(255) NOT NULL,
    username varchar(255),
    creditcard varchar(255),
    userAddress varchar(255),
    moviePrice float,
    startDate varchar(255),
    endDate varchar(255),
    subscriptionStatus varchar(255),
    PRIMARY KEY (Id)
);

ALTER TABLE Subscriptions AUTO_INCREMENT=100;

show tables;

SELECT * FROM UserDetail;
SELECT * FROM Movies;
SELECT * FROM Subscriptions;


SELECT * FROM Subscriptions WHERE id = 102;
SELECT * FROM Subscriptions WHERE endDate < CURRENT_TIMESTAMP;
UPDATE Subscriptions SET subscriptionStatus = 'Expired' WHERE endDate < CURRENT_TIMESTAMP;
select str_to_date("CURRENT_TIMESTAMP",'%HH %mm %ss') from dual;
SELECT CURRENT_TIMESTAMP;

SELECT subs.movieId, subs.movieName as MovieName, mov.moviePrice as SubscriptionPrice, count(subs.movieId) as CountOfSubscription, (mov.moviePrice * count(subs.movieId)) as TotalSales FROM Subscriptions as subs JOIN Movies mov ON subs.movieId = mov.movieId GROUP BY subs.movieId;
















INSERT INTO UserDetail (firstname, lastname, username, userPassword, userRole, phone, address, city, state, country, zipcode) 
VALUES ('Anshika', 'Trivedi', 'anshika', 'password', 'customer', '1234567891', 'King Drive', 'Chicago', 'IL', 'USA', 60616);

UPDATE Subscriptions SET subscriptionStatus = 'Expired' WHERE endDate < CURRENT_TIMESTAMP;

SELECT * FROM Subscriptions WHERE username = 'anshika'and movieId = '2009';

DROP TABLE Subscriptions;
DROP TABLE Movies;