--Questão 04
--Faça uma consulta que selecione o nome, o salário e o departamento dos 
--funcionários que não são gerentes, ordenando pelo Código do Departamento.

SELECT f.nome, f.salario, f.cod_depto
FROM funcionario f, departamento d
WHERE f.nome NOT IN (
    SELECT f.nome
    FROM funcionario f, departamento d
    WHERE f.codigo = d.cod_gerente)
GROUP BY f.nome;
ORDER BY f.cod_depto ASC