create database exerciciofabrica;
use exerciciofabrica;

-- Criando tablea cliente
create table cliente (
codigo int not null,
nome varchar(50),
cpf char(11) not null,
telefone char(11),
primary key (codigo)
);

-- Criando tablea produto
create table produto (
id int not null,
descricao varchar(35),
codigo int,
primary key (id),
foreign key (codigo) REFERENCES cliente(codigo) on delete cascade
);

-- Inserindo dados tabela cliente:
insert into cliente values 
(1, "Adriana", "11111111111", 999999999),
(2, "Bruno",  "22222222222", 999999998),
(3, "Carla",  "33333333333", 999999997),
(4, "Daniel",  "44444444444", 999999996),
(5, "Elaine", "55555555555", 999999995);

-- Inserindo dados tabela produto:
insert into produto values
(101, "Blusa", 1),
(102, "Calça", 1),
(101, "Blusa", 2),
(103, "Sapato", 4),
(104, "Cinto", 5);