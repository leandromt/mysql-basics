/* DDL */
/* Data Definition Language */


/* UTILS */
use cadastro;
show table status;
drop database assessorias;
show databases;
show tables;
describe pessoas;
desc pessoas;


/* CREATE DATA BASE */
create database cadastro default character set utf8 default collate utf8_general_ci; 



/* CREATE TABLE AND COLUNS */
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

create table if not exists cursos(
	nome varchar(30) not null unique,
	descricao text,
    carga int unsigned,
    totaulas int unsigned,
    ano year default '2018'
) default charset = utf8;



/* Add Columns */
/* column optional */
alter table pessoas add column profissao varchar(20);
alter table pessoas add profissao varchar(20);
alter table pessoas add column profissao varchar(20) after nome;
alter table pessoas add column teste varchar(20) first;
alter table cursos add column idcurso int first;
alter table cursos add primary key(idcurso);

desc cursos;


/* Remove Columns */
alter table pessoas drop column profissao;
alter table pessoas drop profissao;



/* Modify Column */
alter table pessoas modify column profissao varchar(30);
alter table pessoas modify column profissao varchar(30) not null default '';
alter table pessoas modify profissao varchar(30);



/* Rename Colums */
alter table pessoas change column profissao prof varchar(40);



/* Rename Table */
alter table pessoas rename pessoal;


/* REMOVE TABLE */
drop table if exists cursos;
drop table cursos;



