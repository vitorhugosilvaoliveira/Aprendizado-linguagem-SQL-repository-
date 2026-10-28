# Procedures (PL/pgSQL)

## Exemplo
```
CREATE OR REPLACE PROCEDURE public.proc_aumenta_preco(p_percentual numeric)
 LANGUAGE plpgsql
AS $procedure$
	BEGIN
		UPDATE produtos
		SET preco = preco * (1 + p_percentual / 100);

		COMMIT;
	END;
$procedure$
;
```
**Parâmetros** 

Uma procedure pode ter zero parâmetros bastando escrever ().

**Sem RETURNS**

Procedures não retornam valor como as functions se precisar retornar algo, usa-se parâmetros do tipo OUT ou INOUT.

**COMMIT**

Procedures podem controlar transações usando COMMIT ou ROLLBACK dentro do corpo.

**Function vs Procedure**

|  | Function | Procedure
|--- | --- | --- |
|Retorna valor|Sim (RETURNS) |Não (Só via OUT/INOUT)|
Como chamar|SELECT funcao(...)|CALL procedimento(...)|
|COMMIT/ROLLBACK no corpo|Sim|Não|
|Uso típico|Cálculos, transformações|Rotinas que modificam dados|
