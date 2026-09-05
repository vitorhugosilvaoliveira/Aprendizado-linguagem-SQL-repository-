--criando objetos (CREATE)

--CREATE TABLE- Ao criar uma tabela devemos definir 
--as colunas e seus tipos de dados

-- É uma boa prática colocar os tipos em maiúsculo 
CREATE TABLE produtos (
codigo INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
ativo BOOLEAN NOT NULL,
preco DECIMAL NOT NULL,
descricao VARCHAR(100),
data_cadastro TIMESTAMP NOT NULL
);