drop database pcarpet;
create database pcarpet;
use pcarpet;
create table pcarpet.user (username varchar(50) not null, password varchar(50) not null, type varchar(15) not null, name varchar(25), surname varchar(25), birthdate date, birthplace varchar(25), address varchar(80), handicapped boolean, primary key (username));
create table pcarpet.car (id_car int not null auto_increment, license_plate varchar(10) not null, name varchar(20) not null, size varchar(10) not null, username varchar(50) not null, primary key (id_car), foreign key (username) references user (username));
create table pcarpet.report (id_report int not null auto_increment, type int not null, description varchar(100), time timestamp, username varchar(50) not null, primary key (id_report),  foreign key (username) references user (username));
create table pcarpet.slot (id_slot int not null auto_increment, latitude double, longitude double, address varchar(50), price float, type varchar(10), username varchar(50) not null, primary key (id_slot), foreign key (username) references user (username));
create table pcarpet.carplace (id_carplace int not null auto_increment, latitude double, longitude double, type boolean, id_slot int not null, busy boolean, primary key (id_carplace), foreign key (id_slot) references slot (id_slot));
create table pcarpet.stop(id_stop int not null auto_increment, start timestamp, finish timestamp, id_car int not null, id_carplace int not null, primary key (id_stop), foreign key (id_car) references car (id_car), foreign key (id_carplace) references carplace (id_carplace));
create table pcarpet.payment(id_payment int not null auto_increment, quantity float, username varchar(50) not null, id_stop int not null, primary key (id_payment), foreign key (username) references user (username), foreign key (id_stop) references stop (id_stop));
create table pcarpet.book(id_book int not null auto_increment, username varchar(50) not null, id_carplace int not null, id_payment int not null, primary key (id_book), foreign key (username) references user (username), foreign key (id_carplace) references carplace (id_carplace), foreign key (id_payment) references payment (id_payment));

--INSERT INTO pcarpet.user (username, password, type) VALUES ('gestore', 'gestore', 'gestore');
--INSERT INTO pcarpet.user (username, password, type, name, surname, birthdate, birthplace, address, handicapped) VALUES ('automobilista1', 'automobilista1', 'driver', 'Francesco', 'Rossi', '1993-06-17', 'Genova', 'Via Liguria 20', '0');
--INSERT INTO pcarpet.user (username, password, type, name, surname, birthdate, birthplace, address, handicapped) VALUES ('automobilista2', 'automobilista2', 'driver', 'Federico', 'Giotto', '1993-06-17', 'Roma', 'Via Rossi 34', '0');
--INSERT INTO pcarpet.user (username, password, type, name, surname, birthdate, birthplace, address, handicapped) VALUES ('automobilista3', 'automobilista3', 'driver', 'Riccardo', 'Serinelli', '1988-06-17', 'Torino', 'Via Leopardi 12', '0');
--
--INSERT INTO pcarpet.slot (id_slot, latitude, longitude, address, price, type, username) VALUES ('1', '42.231123', '56.312312', 'Genova, Via Carso', '1', 'pubblico', 'gestore');
--INSERT INTO pcarpet.slot (id_slot, latitude, longitude, address, price, type, username) VALUES ('2', '34.234234', '23.423423', 'Genova, Via Mellusi', '1.5', 'pubblico', 'gestore');
--INSERT INTO pcarpet.slot (id_slot, latitude, longitude, address, price, type, username) VALUES ('3', '56.7645', '34.234234', 'Genova, Via Papa Giovanni', '1', 'pubblico', 'gestore');
--
--INSERT INTO pcarpet.carplace (id_carplace, latitude, longitude, type, busy, id_slot) VALUES ('1', '34.321312', '23.4234', '0', '0', '1');
--INSERT INTO pcarpet.carplace (id_carplace, latitude, longitude, type, busy, id_slot) VALUES ('2', '56.6456', '57.534', '0', '0', '1');
--INSERT INTO pcarpet.carplace (id_carplace, latitude, longitude, type, busy, id_slot) VALUES ('3', '87.34634', '54.65464', '1', '1', '1');
--INSERT INTO pcarpet.carplace (id_carplace, latitude, longitude, type, busy, id_slot) VALUES ('4', '23.3233', '54.3524', '0', '0', '2');
--INSERT INTO pcarpet.carplace (id_carplace, latitude, longitude, type, busy, id_slot) VALUES ('5', '34.4234', '65.432423', '0', '0', '2');
--INSERT INTO pcarpet.carplace (id_carplace, latitude, longitude, type, busy, id_slot) VALUES ('6', '32.4324', '43.424423', '1', '1', '2');
--INSERT INTO pcarpet.carplace (id_carplace, latitude, longitude, type, busy, id_slot) VALUES ('7', '65.423423', '43.43423', '0', '1', '2');
--INSERT INTO pcarpet.carplace (id_carplace, latitude, longitude, type, busy, id_slot) VALUES ('8', '34.4234', '45.5423423', '0', '0', '3');
--INSERT INTO pcarpet.carplace (id_carplace, latitude, longitude, type, busy, id_slot) VALUES ('9', '21.3123', '34.312312', '1', '1', '3');
--
--INSERT INTO pcarpet.car (id_car, license_plate, name, size, username) VALUES ('1', 'TR562BR', 'Fiat Panda', 'Small', 'automobilista1');
--INSERT INTO pcarpet.car (id_car, license_plate, name, size, username) VALUES ('2', 'BR123IU', 'Bmw 320', 'Medium', 'automobilista2');
--INSERT INTO pcarpet.car (id_car, license_plate, name, size, username) VALUES ('3', 'PI870NV', 'Range Rover', 'Large', 'automobilista2');
--INSERT INTO pcarpet.car (id_car, license_plate, name, size, username) VALUES ('4', 'TU983PO', 'Fiat Uno', 'Small', 'automobilista3');
--INSERT INTO pcarpet.car (id_car, license_plate, name, size, username) VALUES ('5', 'LE472VC', 'Peugeot 207', 'Medium', 'automobilista1');
--
--INSERT INTO pcarpet.stop (id_stop, start, finish, id_car, id_carplace) VALUES ('1', '2018-06-17 12:44:42', '2018-06-17 13:44:42', '2', '3');
--INSERT INTO pcarpet.stop (id_stop, start, finish, id_car, id_carplace) VALUES ('2', '2018-06-18 09:45:24', '2018-06-18 12:45:24', '3', '4');
--INSERT INTO pcarpet.stop (id_stop, start, finish, id_car, id_carplace) VALUES ('3', '2018-06-17 13:46:58', '2018-06-17 14:46:58', '1', '6');
--INSERT INTO pcarpet.stop (id_stop, start, finish, id_car, id_carplace) VALUES ('4', '2018-06-15 12:47:12', '2018-06-15 13:47:12', '4', '7');
--INSERT INTO pcarpet.stop (id_stop, start, finish, id_car, id_carplace) VALUES ('5', '2018-06-17 12:49:24', '2018-06-17 12:49:24', '5', '9');
