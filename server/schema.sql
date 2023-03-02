CREATE DATABASE chat; /* IF NOT EXISTS? */

USE chat;

/* Create other tables and define schemas for them here! */
CREATE TABLE rooms (
  /* Describe your table here.*/
  id INT PRIMARY KEY,
  roomname VARCHAR(255) NOT NULL /* CHECK LATER 255 characters?*/
);

CREATE TABLE users (
  /* Describe your table here.*/
  id INT PRIMARY KEY,
  username VARCHAR(255) NOT NULL /* CHECK LATER 255 characters?*/
);

/* create a junction table to connect rooms and users table */
CREATE TABLE roomUserJunction (
  /* Describe your table here.*/
  id INT PRIMARY KEY,
  userId INT NOT NULL,
  FOREIGN KEY (userId) REFERENCES users (id)
);

CREATE TABLE messages (
  /* Describe your table here.*/
  id INT PRIMARY KEY,
  text VARCHAR(255) NOT NULL, /* CHECK LATER 255 characters?*/
  roomId INT NOT NULL,
  userId INT NOT NULL, /* end of columns creation */
  FOREIGN KEY (roomId) REFERENCES rooms (id), /* assign foreign key*/
  FOREIGN KEY (userId) REFERENCES users (id)
);



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

