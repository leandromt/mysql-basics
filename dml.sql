/* DML */
/* Data Manipulation Language */

insert into pessoas 
(nome, idade, sexo, peso, altura, nacionalidade) 
values 
('Chico', '1970/02/07', 'M', 55.5, 1.72, 'EUA'),
('Maria', '2000/01/05', 'M', 34.5, 1.72, 'Brasileiro');

insert into pessoas values 
(default, 'Ludiana', '1970/02/07', 'F', 80.5, 1.72, default),
(default, 'Jane', '2000/01/05', 'F', 60.5, 1.72, 'Brasileiro')


/* SELECTS */
SELECT * FROM cadastro.pessoas;
select * from pessoas where sexo = 'F';
select * from pessoas where sexo = 'F' and peso > 60;