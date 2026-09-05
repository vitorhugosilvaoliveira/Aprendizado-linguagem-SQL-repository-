--criando tabela cliente
CREATE TABLE cliente(
id INT PRIMARY KEY,
nome VARCHAR NOT NULL 
);

INSERT INTO cliente (id,nome)
VALUES(1, 'Ana Silva')

INSERT INTO cliente (id,nome)
VALUES(2, 'João Souza')

INSERT INTO cliente (id,nome)
VALUES(3, 'Maria')

--criando tabela pedido
CREATE TABLE pedido(
id INT PRIMARY KEY,
id_cliente INT NOT NULL,
total DECIMAL(16,2),

--quando for criar uma chave estrangeira deve-se usar esse comando
CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente)
REFERENCES cliente(id) 
);