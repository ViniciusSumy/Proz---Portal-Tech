-- 1. crie uma tabela chamada ALUNO;  
-- 2. defina os atributos da tabela;
-- 3. adicione a chave primária de nome ID (identificador);
-- 4. adicione um atributo nome do tipo varchar;
-- 5. adicione um atributo e-mail do tipo varchar;
-- 6. adicione um atributo endereço do tipo varchar.


Create table alunos(
    aluno_id serial primary key,
    nome VARCHAR(36) NOT NULL,
    email VARCHAR NOT NULL,
    endereco VARCHAR NOT NULL);

insert into escola(nome,email,endereco)values
    ('João','joao@email.com', 'Rua das Ruas, 142');

    select * from alunos;
