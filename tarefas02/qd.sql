CREATE OR REPLACE FUNCTION status_entrega(cod_atividade INT)
returns INT
language plpgsql
as
$$
DECLARE
	dias INT;
BEGIN
	SELECT dataFim - dataConclusao
	INTO dias
	FROM atividade
	WHERE codigo = cod_atividade;
	
	RETURN dias;
END;
$$;