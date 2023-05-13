CREATE OR REPLACE FUNCTION get_age(n date)
returns int
language plpgsql
as
$$
begin
	return date_part('year', age(n));
end;
$$;

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

CREATE OR REPLACE FUNCTION func_idade_maior_media_depto()
RETURNS TABLE (codigo INTEGER, nome CHARACTER VARYING)
LANGUAGE plpgsql
AS
$$
BEGIN
	RETURN QUERY 
	SELECT funcionario.codigo, funcionario.nome
	FROM funcionario
	WHERE
		get_age(funcionario.dataNasc) > media_idade_departamento(funcionario.depto);
END;
$$;