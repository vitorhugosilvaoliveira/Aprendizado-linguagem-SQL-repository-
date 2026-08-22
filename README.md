# Aprendizado-linguagem-SQL-repository-
## Sobre o repositório :
O repositório receberá atualizações constantes sobre a linguagem SQL,
os arquivos serão desenvolvidos usando PostgreSQL no DBeaver e documentarei todo aprendizado da faculdade neste documento README.md. 

## TIPOS DE COMANDOS SQL
#### DDL (Linguagem de Definição de Dados)
+ CREATE - Criar novos bancos de dados ou tabelas.
+ ALTER - Modificar a estrutura existente.
+ DROP - Deletar um banco ou tabela.

#### DQL (Linguagem de Consulta de Dados)
+ SELECT - Criar novos bancos de dados ou tabelas.

#### DML (Linguagem de Manipulação de Dados)
+ INSERT - Adcionar novos registros.
+ UPDATE - Modificar registros existentes.
+ DELETE - Remover registros.

#### DCL (Linguagem de Controle de Dados)
+ GRANT - Concede privilégios de acesso.
+ REVOKE - Revoga privilégios.

#### TCL (Linguagem de Controle de Transações)
+ COMMIT - Salva mudanças permanentemente.
+ ROLLBACK - Desfaz mudanças se ocorrer um erro.
+ SAVEPOINT - Define um ponto para rollback parcial.

## DDL

### criando a tabela

```
CREATE table Products(
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50) NOT NULL,
    Price DECIMAL NOT NULL,
    Active BOOLEAN NOT NULL
)
```


## DML

### INSERT
```
INSERT INTO Products (Product_ID, Product_Name, Price)
VALUES (1, 'Laptop', 1200.00);
```
### UPDATE

```
UPDATE Products SET Product_Name = 'celular', Price = 2300.00 WHERE Product_ID = 1;
```
### DELETE

```
DELETE from Products WHERE Product_ID = 1;
```
## SQL

### Estrutura básica de consulta
```
SELECT codigo FROM produtos
```
### Filtragem e Ordenação

WHERE - filtra registros com condições específicas.
ORDER BY - Ordena resultados em ordem ascendente ou descendente.

### Ferramentas avançadas de seleção

DISTINCT - Remove duplicatas.
TOP / LIMIT - Especifica número de registros retornados.

### Aliases (AS)

Usados para dar nome temporário a tabelas ou colunas para tornar os resultados mais legíveis.

### Ordem lógica de avaliação

*SQL não processa cláusulas na ordem esccrita*

*A execução padrão lógica é:*
1. FROM
2. WHERE
3. SELECT
4. ORDER BY
