-- DROP PROCEDURE public.crud_cliente(varchar, int4, varchar, varchar);

CREATE OR REPLACE PROCEDURE public.crud_cliente(
IN p_acao character varying,
IN p_id integer,
IN p_nome character varying,
IN p_cidade character varying)
 LANGUAGE plpgsql
AS $procedure$
DECLARE
    vv_nome varchar;
	vv_cidade varchar;
	BEGIN
		IF (p_acao = 'C') THEN
			INSERT INTO clientes (id, nome, cidade)
			VALUES(p_id, p_nome, p_cidade);
		ELSEIF (p_acao = 'R') THEN
			FOR vv_nome, vv_cidade IN 
				SELECT nome, cidade FROM clientes
				WHERE id = p_id			
			LOOP
				RAISE NOTICE 'Nome % Cidade %', vv_nome, vv_cidade;
		    END LOOP;
		ELSEIF (p_acao = 'U') THEN
			UPDATE clientes
			 SET id = p_id,
			 nome = p_nome,
			 cidade = p_cidade
			 WHERE id = p_id;
		ELSEIF (p_acao = 'D') THEN
			DELETE FROM clientes WHERE id = p_id;
		END IF;
	END;
$procedure$
;