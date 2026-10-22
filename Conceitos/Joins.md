# Métodos de Combinação
## Conceito:
O JOIN é uma operação em SQL que permite combinar dados de duas ou mais tabelas com base em uma condição de relacionamento entre elas, através de uma chave
primária em uma tabela e uma chave estrangeira em outra.

### INNER JOIN
Retorna apenas o que existe em ambas as tabelas.

![Diagrama inner join](https://learnsql.com/blog/sql-joins/sql-joins-venn-diagrams-inner-join.webp)

### LEFT JOIN
Mantemos tudo da tabela à esquerda e trazemos o que houver da direita.

![diagrama left join](https://learnsql.com/blog/sql-joins/sql-joins-venn-diagrams-left-outer-join.webp)

### RIGHT JOIN
Mantemos tudo da direita e trazemos o que houver da esquerda.

![diagrama right join](https://learnsql.com/blog/sql-joins/sql-joins-venn-diagrams-right-outer-join.webp)

### FULL JOIN
Trazemos tudo de ambos os lados, independente de haver correspondência.

![diagrama full join](https://learnsql.com/blog/sql-joins/sql-joins-venn-diagrams-full-outer-join.webp)

### Como usamos:
```
SELECT
* 
FROM cliente INNER JOIN pedido on cliente.id = pedido.id_cliente
```
