create database CursoDeProgramacao;

Use CursoDeProgramacao;

CREATE TABLE disciplinas (
    id_disciplina int AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina Varchar(50) NOT NULL,
    nome_professor Varchar(50) NOT NULL
);

CREATE TABLE alunos (
    id_alunos INT AUTO_INCREMENT PRIMARY KEY,
    nome_alunos VARCHAR(50) NOT NULL,
    disciplinas_id INT,
    CONSTRAINT FOREIGN KEY (disciplinas_id)
        REFERENCES disciplinas (id_disciplina)
)

insert into disciplinas(nome_disciplina, nome_professor) values ('Banco de Dados', 'Maria Alves');
insert into disciplinas(nome_disciplina, nome_professor) values ('Python', 'Pietro Souza');
insert into disciplinas(nome_disciplina, nome_professor) values ('POO', 'Bia Tavares');

insert into alunos(nome_alunos, disciplinas_id) values ('Cleiton', 2);
insert into alunos(nome_alunos, disciplinas_id) values ('Carol', null);
insert into alunos(nome_alunos, disciplinas_id) values ('Ruan', 2);
insert into alunos(nome_alunos, disciplinas_id) values ('Gabi', 1);
insert into alunos(nome_alunos, disciplinas_id) values ('Rian', null);
insert into alunos(nome_alunos, disciplinas_id) values ('Mia', 2);
insert into alunos(nome_alunos, disciplinas_id) values ('Malu', 1);

select nome_alunos, nome_disciplina from alunos
inner join disciplinas
on disciplinas.id_disciplina = alunos.disciplinas_id;
