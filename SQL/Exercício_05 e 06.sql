-- -- Desenvolva um banco de dados e relacione tabelas através de chaves estrangeiras ou nomes de colunas iguais. Siga as instruções:
-- crie uma base de dados; 
-- crie tabelas nessa base de dados;
-- em cada tabela, adicione atributos;
-- insira dados em cada tabela;
-- utilize os comandos Joins para realizar consultas nas tabelas. 

create database CineMundo;

Use CineMundo;

CREATE TABLE quiz (
    id_game int AUTO_INCREMENT PRIMARY KEY,
    nome_game Varchar(50) NOT NULL,
    variacao_num int NOT NULL
);

CREATE TABLE resenhas (
    id_resenha INT AUTO_INCREMENT PRIMARY KEY,
    nome_resenha VARCHAR(50) NOT NULL,
    genero_filme VARCHAR (20) NOT NULL,
    nota_filme INT NOT NULL,
    game_id INT NOT NULL,
    CONSTRAINT FOREIGN KEY (game_id)
        REFERENCES quiz (id_game)
)


insert into quiz(nome_game, variacao_num) values ('Avatar 2', 3);
insert into quiz(nome_game, variacao_num) values ('Game of Thrones', 1);
insert into quiz(nome_game, variacao_num) values ('Game of Thrones', 2);
insert into quiz(nome_game, variacao_num) values ('Friends', 2);

insert into resenhas(nome_resenha, genero_filme, nota_filme) values ('Avatar 2: fenômeno ou flop?', 'AÇÃO', 10);
insert into resenhas(nome_resenha, genero_filme, nota_filme) values ('Friends', 'COTIDIANO', 7);
insert into resenhas(nome_resenha, genero_filme, nota_filme) values ('Jumanji 2', 'AÇÃO', 5);
insert into resenhas(nome_resenha, genero_filme, nota_filme) values ('Game of Thrones', 'AVENTURA', 9.5);


select nome_game, variacao_num from quiz
inner join resenhas
on quiz.id_game = resenhas.game_id;


-- Crie um banco de dados, adicione tabelas e determine quais são os atributos de cada uma. Em seguida, execute um trigger que se relacione com algum comando, como insert, select, delete ou update.


CREATE TRIGGER insert_quiz_trigger
AFTER INSERT ON resenhas
FOR EACH ROW
BEGIN
    INSERT INTO quiz (nome_game, variacao_num)
    VALUES (NEW.nome_resenha, 1);
END;

CREATE TRIGGER update_nota_trigger
BEFORE UPDATE ON resenhas
FOR EACH ROW
BEGIN
    IF NEW.nota_filme < 5 THEN
        SET NEW.nota_filme = 5;
    END IF;
END;
