--Manipulando a tabela produtos
SELECT * FROM produtos;

INSERT INTO produtos (codigo, ativo, preco,descricao,data_cadastro)
VALUES(5,true,2175.80,'celular poco x7',current_timestamp)

UPDATE produtos SET descricao = 'web_cam', preco = 50.00 WHERE codigo = 3;

INSERT INTO produtos (codigo,ativo,preco,descricao,data_cadastro)
VALUES(7,true,300.40,'roteador TPLink',current_timestamp)

UPDATE  produtos SET descricao = 'web cam' WHERE codigo = 3;

SELECT * FROM produtos ORDER BY codigo ASC;