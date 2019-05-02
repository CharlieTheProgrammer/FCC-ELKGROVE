use master;

DROP DATABASE IF EXISTS db_ElkGrove;
CREATE DATABASE db_ElkGrove;

USE db_ElkGrove;

CREATE TABLE USERS(
	user_id			INT				NOT NULL	IDENTITY(1,1) ,
	first_name		VARCHAR(50)		NOT NULL,
	last_name		VARCHAR(50)		NOT NULL,
	age				INT				NOT NULL,
	street			VARCHAR(50)		NOT NULL,
	city			VARCHAR(50)		NOT NULL,
	state			VARCHAR(50)		NOT NULL,
	zipcode			INT				NOT NULL,
	PRIMARY KEY(user_id)
);

CREATE TABLE FOODS_PICTURE (
	food_id			INT				NOT NULL	IDENTITY(1,1),
	image_link		VARCHAR(50)		NOT NULL,
	food_name		VARCHAR(50)		NOT NULL,
	user_id			INT				NOT NULL,			
	PRIMARY KEY(food_id),
	FOREIGN KEY (user_id) REFERENCES USERS(user_id),
);

CREATE TABLE FOOD_LOCATION (
	location_id		INT				NOT NULL	IDENTITY(1,1),
	street			VARCHAR(50)		NOT NULL,
	city			VARCHAR(50)		NOT NULL,
	state			VARCHAR(50)		NOT NULL,
	zipcode			INT				NOT NULL,
	user_id			INT				NOT NULL,
	PRIMARY KEY (location_id),
	FOREIGN KEY (user_id) REFERENCES USERS(user_id),
);



