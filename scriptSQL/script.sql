/*criação do banco de dados*/
CREATE DATABASE
 BANKSLIP;
 USE BANKSLIP;

/*criação da tabela banklist*/
 CREATE TABLE bankslip(
    id serial NOT NULL PRIMARY KEY,
    due_date DATE NOT NULL,
    payment_date DATE,
    total_in_cents INT NOT NULL,
    customer varchar(255) NOT NULL,
    status varchar(30) NOT NULL
 );

 /*inserção de dados na tabela banklist*/
 INSERT INTO bankslip
 VALUES
(DEFAULT,'2023-09-14',NULL,'5000','andre silva','pending'),
(DEFAULT,'2023-05-29',NULL,'20000','joao barros','pending'),
(DEFAULT,'2023-07-20',NULL,'20000','maria souza','pending'),
(DEFAULT,'2023-10-02',NULL,'10000','anderson santos','pending'),
(DEFAULT,'2023-07-28',NULL,'2000','bruno filho','pending');

/*selecionando toda a tabela*/
SELECT * 
FROM bankslip;

/*selecionando a tabela com ids especificos*/
SELECT * 
FROM bankslip
WHERE id=2;

SELECT * 
FROM bankslip
WHERE id=4;

SELECT * 
FROM bankslip
WHERE id=1;

/*atualizando dados da coluna status da tabela*/
UPDATE bankslip
SET status='payd'
WHERE id=3;

UPDATE bankslip
SET status='vencid'
WHERE id=5;

/*selecionando a tabela para mostrar suas alterações*/
SELECT * 
FROM bankslip;

/*deletando uma coluna da tabela*/
DELETE FROM bankslip
WHERE id=4;

/*selecionando a tabela para mostrar suas alterações*/
SELECT * 
FROM bankslip;
