CREATE TABLE funcionario (
  codigo SERIAL,
  nome VARCHAR(50),
  sexo CHAR(1),
  dt_nasc DATE,
  salario DECIMAL(10, 2),
  cod_depto INT,
  PRIMARY KEY(codigo)
);

CREATE TABLE departamento (
  codigo SERIAL,
  descricao VARCHAR(50),
  cod_gerente INT,
  PRIMARY KEY (codigo),
  FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo)                                               
);

CREATE TABLE projeto (
  codigo SERIAL,
  nome VARCHAR(50),
  descricao VARCHAR(100),
  cod_depto INT,
  cod_responsavel INT,
  data_inicio DATE,
  data_fim DATE,
  PRIMARY KEY(codigo),
  FOREIGN KEY (cod_depto) REFERENCES departamento(codigo),
  FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo)
);

CREATE TABLE atividade (
  codigo SERIAL,
  nome VARCHAR(50),
  descricao VARCHAR(100),
  cod_responsavel INT,
  data_inicio DATE,
  data_fim DATE,
  PRIMARY KEY(codigo),
  FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo)
);

CREATE TABLE atividade_projeto (
  cod_projeto INT,
  cod_atividade INT,
  PRIMARY KEY (cod_projeto, cod_atividade),
  FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo),
  FOREIGN KEY (cod_atividade) REFERENCES atividade(codigo)
);

ALTER TABLE funcionario 
ADD CONSTRAINT fk_funcDepto
FOREIGN KEY (cod_depto) REFERENCES departamento(codigo)
ON DELETE SET NULL ON UPDATE cascade;