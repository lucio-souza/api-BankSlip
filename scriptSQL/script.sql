CREATE DATABASE
 BANKLIST;
 USE BANKLIST;
 CREATE TABLE banklist(
    id serial NOT NULL PRIMARY KEY,
    due_date NOT NULL DATE,
    payment_date DATE,
    total_in_cents INT NOT NULL,
    customer varchar(255) NOT NULL,
    status varchar(30) NOT NULL
 );
