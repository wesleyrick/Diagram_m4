CREATE DATABASE resilia;
USE resilia;

CREATE TABLE curso(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(250),
    carga_horaria VARCHAR(100),
    PRIMARY KEY (id)
);

select * from curso;

INSERT INTO curso (nome, carga_horaria) VALUES ("Dev Full", "400");
INSERT INTO curso (nome, carga_horaria) VALUES ("Soft skills", "150");

CREATE TABLE professor (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(250),
cpf VARCHAR(14),
profissao VARCHAR(250),
PRIMARY KEY (id)
);

INSERT INTO professor (nome, cpf, profissao) VALUES ("Marcos","123.456.789-10","desenvolvedor");
INSERT INTO professor (nome, cpf, profissao) VALUES ("lucas","458.455.789-10","soft skills");


CREATE TABLE turma (
id INT NOT NULL AUTO_INCREMENT,
codigo_turma VARCHAR(10),
professor_id INT,
curso_id INT,
aluno_id INT,
PRIMARY KEY(id),
foreign key (professor_id) references professor(id),
foreign key (curso_id) references curso(id),
foreign key (aluno_id) references alunos(id)
);

INSERT INTO turma (codigo_turma, professor_id, curso_id, aluno_id) VALUES ("A1", 1, 1, 1);
INSERT INTO turma (codigo_turma, professor_id, curso_id, aluno_id) VALUES ("A2", 2, 2, 2);

CREATE TABLE alunos (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (250),
cpf VARCHAR (250),
curso_id INT,
PRIMARY KEY (id),
FOREIGN KEY (curso_id) REFERENCES curso(id) );

INSERT INTO alunos (nome, cpf, curso_id) VALUES ("Miguel","481.458.462-47", 1 );
INSERT INTO alunos (nome, cpf, curso_id) VALUES ("Matheus","481.458.462-47", 2 );


SELECT * FROM alunos;