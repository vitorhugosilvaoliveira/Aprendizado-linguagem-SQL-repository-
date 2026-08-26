--Manipulando a tabela produtos
SELECT * FROM produtos;

INSERT INTO produtos (codigo, ativo, preco,descricao,data_cadastro)
values(5,true,2175.80,'celular poco x7',current_timestamp)

UPDATE produtos set descricao = 'web_cam', preco = 50.00 where codigo = 3;

INSERT INTO produtos (codigo,ativo,preco,descricao,data_cadastro)
values(7,true,300.40,'roteador TPLink',current_timestamp)

UPDATE  produtos set descricao = 'web cam' where codigo = 3;

select * from produtos order by codigo asc;