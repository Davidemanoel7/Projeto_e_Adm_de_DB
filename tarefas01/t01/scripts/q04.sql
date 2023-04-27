SELECT f.nome, f.salario, f.cod_depto
FROM funcionario f, departamento d
WHERE f.nome NOT IN (
    SELECT f.nome
    FROM funcionario f, departamento d
    WHERE f.codigo = d.cod_gerente)
GROUP BY f.nome;
ORDER BY f.cod_depto ASC