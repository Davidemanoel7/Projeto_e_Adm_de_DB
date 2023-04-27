Faça uma consulta que selecione o nome do projeto, o nome do departamento do projeto, o nome do funcionário responsável pelo projeto, o nome do departamento do funcionário responsável.


SELECT p.nome AS projeto, d.nome AS departamento, f.nome AS funcionario
FROM departamento d
INNER JOIN funcionario f 