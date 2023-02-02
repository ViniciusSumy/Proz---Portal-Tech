Create table alunos(
    aluno_id serial primary key,
    nome VARCHAR(36) NOT NULL,
    email VARCHAR NOT NULL,
    endereco VARCHAR NOT NULL);

insert into escola(nome,email,endereco)values
    ('João','joao@email.com', 'Rua das Ruas, 142');

    select * from alunos;
