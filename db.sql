DROP DATABASE if EXISTS webproject2022 ;
CREATE DATABASE webproject2022 DEFAULT CHARACTER SET UTF8;
USE webproject2022 ;
CREATE TABLE user (
                        `name` varchar(45) NOT NULL,
                        `id` varchar(45) NOT NULL,
                        `password` varchar(100) NOT NULL,
                         PRIMARY KEY (`id`)
) ;
INSERT INTO user(name, id, password) VALUES('김세은','seeun','qwer!@#$');
INSERT INTO user(name, id, password) VALUES('김냐옹','meow','sidhddl');
INSERT INTO user(name, id, password) VALUES('관리자','admin','admin1234');
