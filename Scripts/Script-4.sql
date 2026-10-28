-- DROP PROCEDURE public.crud_cliente(varchar, int4, varchar, varchar);

CREATE OR REPLACE PROCEDURE public.crud_cliente(
	-- O "IN" serve para indicar que são variáveis de entrada
IN p_acao character varying,
IN p_id integer,
IN p_nome character varying,
IN p_cidade character varying)
 LANGUAGE plpgsql
AS $procedure$
DECLARE
-- A seção DECLARE serve para criar variáveis que só existem na procedure vv_ é uma convenção
    vv_nome varchar;
	vv_cidade varchar;
	BEGIN
		IF (p_acao = 'C') THEN
			INSERT INTO clientes (id, nome, cidade)
			VALUES(p_id, p_nome, p_cidade);
		ELSEIF (p_acao = 'R') THEN
		-- Laço de repetição que executa a cada linha do SELECT retornada
			FOR vv_nome, vv_cidade IN
			-- Já atribui os valores das variáveis ás colunas retornadas 
				SELECT nome, cidade FROM clientes
				WHERE id = p_id			
			LOOP
				RAISE NOTICE 'Nome % Cidade %', vv_nome, vv_cidade;
		    END LOOP;
		ELSEIF (p_acao = 'U') THEN
			UPDATE clientes
			 SET
			 nome = p_nome,
			 cidade = p_cidade
			 WHERE id = p_id;
		ELSEIF (p_acao = 'D') THEN
			DELETE FROM clientes WHERE id = p_id;
		END IF;
	END;
$procedure$
;