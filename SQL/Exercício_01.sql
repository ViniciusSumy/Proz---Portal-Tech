-- Criação das Tabelas --

Create table instrumentos(
    id_instrumento serial primary key,
    nome VARCHAR(24) NOT NULL,
    preco FLOAT NOT NULL,
    promocao BOOLEAN);

Create table Vendedor(
    id_Vendedor serial primary key,
    nome VARCHAR(36) NOT NULL,
    sobrenome VARCHAR(36) NOT NULL,
    vendas INT,
    salario FLOAT NOT NULL,
    comissao_vendas FLOAT NOT NULL);

-- Inserção de Valores --

insert into instrumentos(nome,preco,promocao)values
    ('violão','199', true),
    ('bateria', '399', false),
    ('gaita', '150', false),
    ('trompete', '600', true),
    ('flauta', '120', false),
    ('guitarra', '500', false);

select * from instrumentos;

SELECT nome, id_instrumento, preco FROM instrumentos WHERE (preco < 250);

Select promocao, preco from instrumentos where (preco  >  400);

Select * from instrumentos where (promocao = true);

Select * from instrumentos where (promocao = true);

Select * from instrumentos where id_instrumento = 6 order by preco and nome;

Select * from instrumentos where nome ='violao' order by id_instrumento, preco and promocao ;

insert into Vendedor(nome, Sobrenome, Vendas, salario, Comissao_vendas)
		values("Andrei", "Moura", 2,2500,5),
              ("Susana", "Silveira", 2,2500,5),
              ('Marcos', 'Santos', 2,2500,5),
              ('Murilo', 'Aparecida', 2,2500,5);
              
Select	* from vendedor;