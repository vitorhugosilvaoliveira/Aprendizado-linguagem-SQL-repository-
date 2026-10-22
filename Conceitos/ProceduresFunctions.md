# Procedures/Functions (PL/pgSQL)
## Diferenças entre Functions e Procedures
As **Functions** (criadas com CREATE FUNCTION) existem no PostgreSQL há décadas e são extremamente versáteis. Elas obrigatoriamente retornam um valor — que pode ser um tipo escalar, um registro, uma tabela ou até mesmo void (que na verdade retorna NULL de forma implícita).

Já os **Stored Procedures** (criados com CREATE PROCEDURE) foram introduzidos no PostgreSQL 11 e representam uma adição mais moderna ao arsenal de programação server-side. A diferença mais marcante é que Procedures permitem controle transacional explícito.

## Ánalise de código parte por parte
```
CREATE OR REPLACE FUNCTION public.func_troca_letra(p_texto character varying, p_valor_antigo character, p_valor_novo character)
 RETURNS character varying
 LANGUAGE plpgsql
AS $function$
	BEGIN
		RETURN REPLACE(p_texto, p_valor_antigo, p_valor_novo);
	END;
$function$
;
```
1. **CREATE OR REPLACE FUNCTION**
* **CREATE FUNCTION** : Cria uma nova função;

* **OR REPLACE** : Aqui diz : "Se já existir uma função com esse nome e esses parâmetros, substitua por essa nova versão". Sem isso, você teria um erro ao tentar rodar o código de novo;

* **public.** : é o schema onde a função fica guardada. public é o schema padrão do PostgreSQL;

* **func_troca_letra** : É o nome da função escolhido por quem criou.

2. **Os parâmetros**

São os dados de entradas. Cada um tem um nome e um tipo:

| Parâmetro | Tipo | Para que serve
|--- | --- | --- |
|p_texto|character varying (o mesmo que varchar) |O texto original onde será feita a troca|
p_valor_antigo|character (o mesmo que char)|O que você quer procurar e remover|
|p_valor_novo|caracter|O que vai ser colocado no lugar|

O prefixo p_ é só uma convenção (de "parâmetro"). Ajuda a evitar confusão com nomes de colunas de tabelas.

3. **RETURN caracter varying**

Define o tipo do valor que a função devolve. Aqui, ela devolve um texto (varchar).

4. **LANGUAGE plpgsql**

Indica em qual linguagem o corpo da função está escrito. PL/pgSQL é a linguagem procedural do PostgreSQL: ela permite usar variáveis, IF, LOOP, BEGIN/END etc., coisas que o SQL puro não tem.

5. ```
    AS $function$
    ...coorpo...
    $function$
    ```
Os $function$ são delimitadores do corpo da função (chamados de dollar quoting). Eles servem para o PostgreSQL saber onde o código começa e termina, sem você precisar escapar aspas simples dentro dele. O nome entre os $ pode ser qualquer coisa ($$, $body$...). O DBeaver e outras ferramentas costumam gerar $function$.