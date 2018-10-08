/* DDL */
/* Data Definition Language */

show table status;
drop database assessorias;
show databases;
show tables;
describe pessoas;
desc pessoas;

create database cadastro 
default character set utf8 
default collate utf8_general_ci; 

use cadastro;

SELECT * FROM cadastro.pessoas;
select * from pessoas where sexo = 'F';
select * from pessoas where sexo = 'F' and peso > 60;

CREATE TABLE pessoas (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    idade DATE,
    sexo ENUM('M', 'F'),
    peso DECIMAL(5 , 2 ),
    altura DECIMAL(3 , 2 ),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)
)  DEFAULT CHARSET = utf8;



