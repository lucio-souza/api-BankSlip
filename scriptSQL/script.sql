CREATE DATABASE
 BANKLIST;
 USE BANKLIST;
 CREATE TABLE banklist(
    id int PRIMARY KEY,
    due_date DATE,
    total_in_cents varchar(50),
    customer varchar(50),
    status varchar(50)
 );
