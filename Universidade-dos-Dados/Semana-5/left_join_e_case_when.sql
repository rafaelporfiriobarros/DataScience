create table registro_compras(
	id int,
	Gastos decimal,
	Data_Compra date
);

insert into registro_compras
values
(152, 351.50, '2018-01-22'),
(222, 250.10, '2018-05-15'),
(451, 455.00, '2017-02-05'),
(754, 390.10, '2018-04-10'),
(754, 150.50, '2017-03-01'),
(852, 325.90, '2018-05-30'),
(997, 332.59, '2018-05-25'),
(754, 241.57, '2017-04-30');

drop table registro_compras;

select * from registro_compras;

create table cadastro(
	id int, 
	Nome varchar(50),
	Sobrenome varchar(50),
	Estado varchar(2)
);

insert into cadastro
values
(451, 'Carlos', 'Pinheiro', 'MG'),
(754, 'Eduardo', 'Silva', 'SP'),
(535, 'Vanessa', 'Costa', 'SP'),
(152, 'Andre', 'Silva', 'MG'),
(222, 'Barbara', 'Toledo', 'SP'),
(897, 'Juliana', 'Oliveira', 'MG'),
(852, 'Maria', 'Lima', 'MG'),
(997, 'Ricardo', 'Pereira', 'MG');

select * from cadastro;

select a.nome from cadastro as a;

select a.*, b.gastos
from cadastro as a
left join registro_compras as b
on a.id = b.id

select t1.*, sum(t2.gastos) as soma_gastos, avg(t2.gastos) as media_gastos
from cadastro as t1
left join registro_compras as t2
on t1.id = t2.id
group by t1.id, t1.nome, t1.sobrenome, t1.estado;


select *,
case when estado = 'MG' then 0.3
	 when estado = 'SP' then 0.1
else 0 end as desconto
from cadastro;

select extract(month from data_compra) as mes,
	sum(case when gastos > 300 then 1 else 0 end) as gastos_altos,
	sum(case when gastos <= 300 then 1 else 0 end) as gastos_baixos
from registro_compras
group by 1
order by 1;










