
-- Faça uma consulta que selecione o nome do projeto, o nome do departamento do projeto,
-- o nome do funcionário responsável pelo projeto, o nome do departamento do funcionário responsável.

SELECT p.nome, d.nome, f.nome, d.nome
FROM projeto p
INNER JOIN vw_dep_projeto
INNER JOIN vw_resp_projeto
INNER JOIN vw_deptoFunc

-- nome do dep do projeto
CREATE VIEW vw_dep_projeto AS
SELECT d.nome
FROM departamento d
INNER JOIN projeto p
ON p.cod_depto = d.codigo

-- o nome do funcionário responsável pelo projeto
CREATE VIEW vw_resp_projeto AS
SELECT f.nome
FROM funcionario f 
INNER JOIN projeto p ON p.cod_responsavel = f.codigo

-- o nome do departamento do funcionário responsável (utilizando a outra view)
CREATE VIEW vw_deptoFunc AS
SELECT d.nome
FROM departamento d
INNER JOIN vw_resp_projeto
ON f.codigo = d.codigo

