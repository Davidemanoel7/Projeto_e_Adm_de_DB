CREATE OR REPLACE FUNCTION media_idade_departamento(cod_depto INT)
returns int
language plpgsql
as
$$
DECLARE
	media FLOAT;
BEGIN
	SELECT AVG(date_part('year', age(f.dataNasc)))
	INTO media
	FROM funcionario f
	WHERE f.depto = cod_depto;
	
	RETURN media;
END;
$$;