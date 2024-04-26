--@block
create database if not exists safelinkdb;
use safelinkdb;

CREATE TABLE IF NOT EXISTS policeOff(
    id int primary key auto_increment ,
    nameOfficer varchar(255),
    email varchar(255) not null,
    passwordOfficer varbinary(255) not null
);
-- @block
CREATE TABLE IF NOT EXISTS prisoners(
     id INT PRIMARY KEY AUTO_INCREMENT,
    namePrisoner varchar(255) not null,
    latitude DECIMAL(10, 8),
    longitude DECIMAL(11, 8)
);

CREATE TABLE `logs`(
    `latitude` DECIMAL(8, 2) NOT NULL,
    `longitude` DECIMAL(8, 2) NOT NULL,
    `id` INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(`latitude`)
);

ALTER TABLE
    `logs` ADD CONSTRAINT `logs_id_foreign` FOREIGN KEY(`id`) REFERENCES `prisoners`(`id`);





/*
-- Query: SELECT * FROM safelinkdb.prisoners
LIMIT 0, 1000

-- Date: 2024-02-28 18:01
*/
INSERT INTO `` (`id`,`latitude`,`longitude`,`name`) VALUES (1,37.77490000,-122.41940000,'el jaghali');
INSERT INTO `` (`id`,`latitude`,`longitude`,`name`) VALUES (2,40.71280000,-74.00600000,'shi9 mi9 fetri9');
INSERT INTO `` (`id`,`latitude`,`longitude`,`name`) VALUES (3,34.05220000,-118.24370000,'el shama9ma9');
INSERT INTO `` (`id`,`latitude`,`longitude`,`name`) VALUES (4,37.77490000,-122.41940000,'hmed satour');
INSERT INTO `` (`id`,`latitude`,`longitude`,`name`) VALUES (5,40.71280000,-74.00600000,'el 3ou9');
INSERT INTO `` (`id`,`latitude`,`longitude`,`name`) VALUES (6,34.05220000,-118.24370000,'bringa');
INSERT INTO `` (`id`,`latitude`,`longitude`,`name`) VALUES (7,37.77490000,-122.41940000,'layka');
INSERT INTO `` (`id`,`latitude`,`longitude`,`name`) VALUES (8,40.71280000,-74.00600000,'spisiron');
INSERT INTO `` (`id`,`latitude`,`longitude`,`name`) VALUES (9,34.05220000,-118.24370000,'weld monjia');
INSERT INTO `` (`id`,`latitude`,`longitude`,`name`) VALUES (10,37.77490000,-122.41940000,'el mokh tar');
INSERT INTO `` (`id`,`latitude`,`longitude`,`name`) VALUES (11,40.71280000,-74.00600000,'siid jinyor');
INSERT INTO `` (`id`,`latitude`,`longitude`,`name`) VALUES (12,34.05220000,-118.24370000,'siid l kbir');




/*
-- Query: SELECT * FROM safelinkdb.policeoff
LIMIT 0, 1000

-- Date: 2024-02-28 18:04
*/
INSERT INTO `` (`id`,`nameOfficer`,`email`,`passwordOfficer`) VALUES (1,'3am Rchayd','rchid15@police.tn','salmabenti');
INSERT INTO `` (`id`,`nameOfficer`,`email`,`passwordOfficer`) VALUES (2,'3ammar','USA.3ammar@police.tn','salmamarti');
INSERT INTO `` (`id`,`nameOfficer`,`email`,`passwordOfficer`) VALUES (3,'rjab','elba7ath@police.tn','chapati123');
INSERT INTO `` (`id`,`nameOfficer`,`email`,`passwordOfficer`) VALUES (4,'saif','minion@police.tn','hayfa');



