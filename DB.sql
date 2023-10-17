CREATE DATABASE angkatowicepl_dev;
USE angkatowicepl_dev;
CREATE TABLE words(
id int PRIMARY KEY AUTO_INCREMENT,
polish VARCHAR(50),
english VARCHAR(50),
category VARCHAR(50)
);
CREATE TABLE users(
    id int PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50),
    password CHAR(60),
    isAdmin BOOLEAN
);
INSERT INTO words VALUES(NULL, "Pies", "Dog", "Unit 1");
INSERT INTO users VALUES(NULL, "wojtek69", "$2y$10$KIf8jJsjMBHK7aN3ilOeoeg3FppoeMoZVoiGhUi4R/MV/lH4z7GBO", 1);