insert into funcionario
(nome, sexo, dt_nasc, salario,  cod_depto)
values ('Maria Preá', 'F', '1981-07-01', 2500.00, 1),
        ('José', 'M', '1990-09-17', 1599.00, 1),
        ('Carlos', 'M', '1985-11-21', 2500.00, 2),
        ('Humberto', 'M', '1970-05-07', 1500.00, 2),
        ('Doisberto', 'M', '1979-07-12', 3500.00, 3),
        ('Doisberto', 'M', '1979-07-12', 3500.00, 3),
        ('Xuxa', 'F', '1970-03-28', 13500.00, 4),
        ('Mario', 'M', '1970-03-28', 5500.00, 5);



-- Adicionando Departamentos
insert into departamento(descricao, cod_gerente)
values ('Dep. Tecnologia', 1),
        ('Dep. Ciências Contábeis', 2),
        ('Dep. Matematica', 3),
        ('Dep. Historia', 4),
        ('Dep. Letras', 5)

-- Adicionando Projetos

insert into projeto(nome, descricao, cod_depto, cod_responsavel, dataInicio, dataFim)
values ('APF', 'Analisador de Ponto de Função', 2, 2, '2018-02-26', '2019-06-30'),
        ('Monitoria', 'Projeto de Monitoria 2019.1', 1, 6, '2019-02-26', '2019-12-30'),
        ('BD', 'Projeto de Banco de Dados', 3, 5, '2018-02-26', '2018-06-30'),
        ('ES', 'Projeto de Engenharia de Software', 1, 1, '2018-02-26', '2018-06-30'),
        ('POO', 'Programacao Orientada a Obj.', 1, 1, '2018-02-26', '2018-06-30');

-- Adicionando Atividades

insert into atividade(nome, descricao, cod_responsavel, dataInicio, dataFim)

values ('A1','Atividade 1', 1, '2018-02-26', '2018-06-21'),
        ('A2','Atividade 2', 2, '2019-06-26', '2018-03-20'),
        ('A3','Atividade 3', 3, '2022-02-26', '2018-01-10'),
        ('A4','Atividade 4', 4, '2010-12-26', '2018-09-11'),
        ('A5','Atividade 5', 5, '2015-02-26', '2017-06-30');
