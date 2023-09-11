/*criação do banco de dados*/
CREATE DATABASE
 BANKLIST;
 USE BANKLIST;

/*criação da tabela banklist*/
 CREATE TABLE banklist(
    id serial NOT NULL PRIMARY KEY,
    due_date DATE NOT NULL,
    payment_date DATE,
    total_in_cents INT NOT NULL,
    customer varchar(255) NOT NULL,
    status varchar(30) NOT NULL
 );

 /*inserção de dados na tabela banklist*/
 INSERT INTO banklist
 VALUES
(DEFAULT,'2023-09-14',NULL,'5000','andre silva','pending'),
(DEFAULT,'2023-05-29',NULL,'20000','joao barros','pending'),
(DEFAULT,'2023-07-20',NULL,'20000','maria souza','pending'),
(DEFAULT,'2023-10-02',NULL,'10000','anderson santos','pending'),
(DEFAULT,'2023-07-28',NULL,'2000','bruno filho','pending');

/*selecionando toda a tabela*/
SELECT * 
FROM banklist;

/*selecionando a tabela com ids especificos*/
SELECT * 
FROM banklist
WHERE id=2;

SELECT * 
FROM banklist
WHERE id=4;

SELECT * 
FROM banklist
WHERE id=1;
