# Criando uma Chave Estrangeira em PostgreSQL
## O que é uma foreign key?
 Uma chave estrangeira ou foreign key, é um campo ou conjunto de campos em uma tabela que identifica uma linha em outra tabela, criando um relacionamento entre as duas tabelas. Assim, uma chave estrangeira é uma coluna em uma tabela que faz referência à chave primária de outra tabela.

 ## Síntaxe Básica

 A sintaxe básica da constraint para criar uma chave estrangeira, durante a definição de uma tabela, é a seguinte:

 ```
    FOREIGN KEY (coluna) REFERENCES tabela-pai (coluna)
 ```

 ## CONSTRAINT

 Ao criar uma restrição no banco de dados criamos uma CONSTRAINT como PRIMARY KEY, UNIQUE E DEFAULT.

 O banco de dados cria um nome de identificação padrão para aquela restrição porém é possível personalizar usando CONSTRAINT:

 ```
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id)
 ```