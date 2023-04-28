--Questão 07
--Faça uma consulta que selecione o nome do departamento, o nome do gerente, 
--e o número de funcionários de cada departamento. Deve aparecer os departamentos sem gerente e sem funcionários. 
--Crie uma view para totalizar o número de funcionários em cada departamento e utilize-a na consulta.

CREATE VIEW vw_func_dept AS
SELECT cod_depto, COUNT(*) AS num_func
FROM funcionario
GROUP BY cod_depto;


SELECT d.descricao AS departamento, f.nome AS gerente, COALESCE(v.num_func, 0) AS num_func
FROM departamento d
LEFT JOIN funcionario f ON d.cod_gerente = f.codigo
LEFT JOIN vw_func_dept v ON d.codigo = v.cod_depto;