--criando tabela cliente
create table cliente(
id INT primary key,
nome VARCHAR not null 
)

insert into cliente (id,nome)
values(1, 'Ana Silva')

insert into cliente (id,nome)
values(2, 'João Souza')

insert into cliente (id,nome)
values(3, 'Maria')

--criando tabela pedido
create table pedido(
id INT primary key,
id_cliente int not null,
total decimal(16,2),

--quando for criar uma chave estrangeira deve-se usar esse comando
constraint fk_pedido_cliente foreign key (id_cliente)
references cliente(id) 
)