--Questão 14.

--Faça uma consulta que selecione o nome dos funcionários responsáveis por atividades, 
--o número de atividades que este funcionário é responsável. Crie e use views na consulta.

--nome dos funcionários responsáveis por atividades
CREATE VIEW vw_resp_ativ AS
SELECT f.nome
FROM funcionario f
INNER JOIN atividade a
ON a.cod_responsavel = f.codigo

--número de atividades que este funcionário é responsável

SELECT COUT(vw_resp_ativ) AS 'Quantidade_atividades'
FROM vw_resp_ativ
INNER JOIN funcionario f
ON f.nome IN (vw_qnt_atividade)