CREATE TABLE carbon_transport(
trans_id SMALLINT AUTO_INCREMENT, 
trans_name VARCHAR(225) NOT NULL,
lbs_per_mile FLOAT NOT NULL, 
points_per_mile SMALLINT NOT NULL, 
PRIMARY KEY (trans_id)
)ENGINE=InnoDB;

CREATE TABLE carbon_user( 
user_id INT AUTO_INCREMENT,
user_name VARCHAR (225) NOT NULL, 
points_earned INT, 
PRIMARY KEY (user_id)
)ENGINE = InnoDB;

CREATE TABLE carbon_rewards( 
reward_id SMALLINT AUTO_INCREMENT, 
money_off FLOAT NOT NULL, 
points_redeem SMALLINT NOT NULL, 
PRIMARY KEY(reward_id) 
)ENGINE = InnoDB; 

INSERT INTO carbon_user(user_name, points_earned) 
VALUES("Tracy", 123); 

INSERT INTO carbon_user(user_name, points_earned) 
VALUES("Laura", 1234); 

INSERT INTO carbon_user(user_name, points_earned) 
VALUES( "Adam", 12345); 

INSERT INTO carbon_user(user_name, points_earned) 
VALUES("Emma", 123456); 

INSERT INTO carbon_user(user_name, points_earned) 
VALUES("Nick", 1234567); 


INSERT INTO carbon_rewards(money_off, points_redeem)
VALUES(.10, 1000);

INSERT INTO carbon_rewards(money_off, points_redeem)
VALUES(.25, 2000);

INSERT INTO carbon_rewards(money_off, points_redeem)
VALUES(1.50, 10000);

INSERT INTO carbon_rewards(money_off, points_redeem)
VALUES(10.00, 50000);


INSERT INTO carbon_transport(trans_name, lbs_per_mile, points_per_mile)
VALUES("car", 1.0, 0); 

INSERT INTO carbon_transport(trans_name, lbs_per_mile, points_per_mile)
VALUES("walk", 0, 100); 

INSERT INTO carbon_transport(trans_name, lbs_per_mile, points_per_mile)
VALUES("bus", 0.70, 30); 

INSERT INTO carbon_transport(trans_name, lbs_per_mile, points_per_mile)
VALUES("2p-carpool", .5, 50); 

INSERT INTO carbon_transport(trans_name, lbs_per_mile, points_per_mile)
VALUES("4p-carpool", 0.25, 75); 

INSERT INTO carbon_transport(trans_name, lbs_per_mile, points_per_mile)
VALUES("bike", 0.15, 80); 


SELECT points_redeem, money_off from carbon_rewards 
WHERE points_redeem < 
(SELECT points_earned from carbon_user 
WHERE user_name = "Adam"); 



