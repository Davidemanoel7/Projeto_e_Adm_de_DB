
CREATE TABLE departamento(
	codigo INT,
	descricao VARCHAR(50),
	cod_gerente INT,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo) ON DELETE SET null ON UPDATE cascade
);

CREATE TABLE funcionario (
	codigo INT,
	nome VARCHAR(50),
	sexo CHAR(1),
	dt_nasc DATE,
	salario DECIMAL(10,2),
	cod_depto INT,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cod_depto) REFERENCES departamento(codigo) ON DELETE SET null ON UPDATE cascade
);

CREATE TABLE projeto (
	codigo INT,
	nome VARCHAR(50),
	descricao VARCHAR(250),
	cod_responsavel INT,
    cod_depto INT,
	dataInicio DATE, 
	dataFim DATE,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo) ON DELETE SET null ON UPDATE cascade,
	FOREIGN KEY (cod_depto) REFERENCES departamento(codigo) ON DELETE SET null ON UPDATE cascade
);


CREATE TABLE atividade (
	codigo INT,
    nome VARCHAR(50),
	descricao VARCHAR(250),
	cod_responsavel INT,
	dataInicio DATE, 
	dataFim DATE,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo) ON DELETE SET null  ON UPDATE cascade
);

CREATE TABLE atividade_projeto (
  cod_projeto INT,
  cod_atividade INT,
  FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo) ON DELETE SET null ON UPDATE cascade,
  FOREIGN KEY (cod_atividade) REFERENCES atividade(codigo) ON DELETE SET null ON UPDATE cascade
);


alter table funcionario ADD CONSTRAINT funcDeptoFK FOREIGN KEY (cod_depto) REFERENCES departamento(codigo) on delete set null on update cascade;

