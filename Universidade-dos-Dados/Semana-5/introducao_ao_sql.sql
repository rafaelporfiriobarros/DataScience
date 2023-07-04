drop table base_compras
create table base_compras(
	id int, 
	Nome varchar(50),
	Sobrenome varchar(50),
	Estado varchar(2),
	Gastos decimal,
	Data_Compra date
);

insert into base_compras values
(152, 'Andre', 'Silva', 'MG', 351.50, '2018-01-22'),
(222, 'Barbara', 'Toledo', 'SP', 250.10, '2018-05-15'),
(451, 'Carlos', 'Pinheiro', 'MG', 455.00, '2017-02-05'),
(754, 'Eduardo', 'Silva', 'SP', 390.10, '2018-04-10'),
(897, 'Juliana', 'Oliveira', 'MG', 150.50, '2017-03-01'),
(852, 'Maria', 'Lima', 'MG', 325.90, '2018-05-25'),
(997, 'Ricardo', 'Pereira', 'MG', 325.90, '2018-05-30'),
(535, 'Vanessa', 'Costa', 'SP', 241.57, '2017-04-30');

-- seleciona todos os elementos
select * from base_compras;

-- seleciona somente o id
select id from base_compras;

-- limita o output
select * from base_compras limit 2;

-- seleciona só alguns campo
select id, nome, gastos from base_compras;

-- aprender a filtrar (where + condicao)
select * from base_compras
where estado = 'SP';

-- criar tabela com filtro
create table gastoes as
select * from base_compras
where gastos > 300;

select * from gastoes;

select * from base_compras
where estado like '%SP%';

select * from base_compras
where nome like '%ana%';

select * from base_compras
where upper(estado) = 'SP';

select * from base_compras
where upper(nome) = 'RICARDO';

select * from base_compras
where estado = 'MG' and gastos < 300;

select * from base_compras
where estado = 'MG' or gastos < 300;

select * from base_compras
where not estado = 'MG';

select *, (id || nome) as id_new
from base_compras;

select *, 0.9 * gastos as novo_pagamento
from base_compras;

drop table if exists gastoes;

select * from base_compras
order by nome;

select * from base_compras
order by nome desc;

select estado, avg(gastos) as media_gastos
from base_compras
group by estado
order by media_gastos desc;












