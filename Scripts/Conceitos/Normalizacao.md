# NORMALIZAÇÃO DE TABELAS

## A normalização do banco de dados é um processo de design de banco de dados que organiza os dados em estruturas de tabela específicas. Isso ajuda a melhorar a integridade dos dados, evitar anomalias de dados, minimizar a redundância de dados e melhorar o desempenho das consultas.

## Primeira forma normal (1NF)

Esse nível de normalização garante que cada coluna dos seus dados contenha apenas valores atômicos. Valores atômicos, nesse contexto, significam que cada entrada em uma coluna é indivisível. É como dizer que cada célula de uma planilha deve conter apenas uma informação. O 1NF garante a atomicidade dos dados, com cada célula de coluna contendo apenas um único valor e cada coluna com nomes exclusivos.

## Segunda forma normal (2NF)

Elimina dependências parciais, garantindo que os atributos que não são chaves dependam apenas da chave primária. O que isso significa, em essência, é que deve haver uma relação direta entre cada coluna e a chave primária, e não entre outras colunas.

## Terceira forma normal (3NF)

Remove as dependências transitivas, garantindo que os atributos que não são chaves dependam apenas da chave primária. Esse nível de normalização se baseia em 2NF.

## Forma Normal de Boyce-Codd (BCNF)

Essa é uma versão mais rigorosa do 3NF que aborda outras anomalias. Nesse nível de normalização, cada determinante é uma chave candidata.

## Quarta forma normal (4NF)

Esse é um nível de normalização que se baseia no BCNF, lidando com dependências multivaloradas.

## Quinta Forma Normal (5NF)

O 5NF é o nível de normalização mais alto que aborda as dependências de união. Ele é usado em cenários específicos para minimizar ainda mais a redundância, dividindo uma tabela em tabelas menores.