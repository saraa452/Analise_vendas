--- criação do banco de dados Loja_2
create database Loja_2;
use loja_2;
--- criação da tabela clientes
create table Clientes (
cliente_id int primary key,
nome varchar (100),
email varchar (100),
cidade varchar (50),
estado varchar (2)
);
--- criação da tabela produtos
create table Produtos ( 
produto_id int primary key,
nome_produtos varchar (100),
categoria varchar (50),
preço decimal (10 ,2)
);
--- criação da tabela pedidos
create table Pedidos (
pedido_id int primary key,
cliente_id int,
data_pedido date,
foreign key (cliente_id) references Clientes (cliente_id)
);
use loja_2;
--- Criação da tabela Itens_pedidos
create table Itens_Pedidos(
item_id int primary key,
pedido_id int,
produto_id int,
quantidade int,
foreign key (pedido_id) references Pedidos(pedido_id),
foreign key (produto_id) references Produtos(produto_id)
);