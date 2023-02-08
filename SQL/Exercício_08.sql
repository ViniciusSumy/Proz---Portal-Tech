CREATE TABLE livro (
  id INT PRIMARY KEY,
  titulo VARCHAR(100),
  autor VARCHAR(100)
);

CREATE TABLE copia_livro (
  id INT PRIMARY KEY,
  id_livro INT,
  FOREIGN KEY (id_livro) REFERENCES livro(id)
);

CREATE TABLE pessoa (
  nome_completo VARCHAR(50),
  rg VARCHAR(17),
  telefone VARCHAR(15),
  PRIMARY KEY (nome_completo, rg)
);

CREATE TABLE emprestimo (
  id INT PRIMARY KEY,
  id_copia_livro INT,
  nome_completo VARCHAR(50),
  rg VARCHAR(17),
  data_emprestimo DATE,
  data_devolucao DATE,
  FOREIGN KEY (id_copia_livro) REFERENCES copia_livro(id),
  FOREIGN KEY (nome_completo, rg) REFERENCES pessoa(nome_completo, rg)
);

CREATE TABLE multa (
  id INT PRIMARY KEY,
  id_emprestimo INT,
  tempo_atraso INT,
  valor FLOAT,
  FOREIGN KEY (id_emprestimo) REFERENCES emprestimo(id)
);

--------- INSERT ---------

INSERT INTO livro (id, titulo, autor)
VALUES 
  (1, 'O Senhor dos Anéis', 'J.R.R. Tolkien'),
  (2, 'Harry Potter e a Pedra Filosofal', 'J.K. Rowling'),
  (3, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry');

INSERT INTO copia_livro (id, id_livro)
VALUES 
  (1, 1),
  (2, 1),
  (3, 2);

INSERT INTO pessoa (nome_completo, rg, telefone)
VALUES 
  ('João Silva', '1234-5678', '11 98765-4321'),
  ('Maria Santos', '2345-6789', '11 12345-6789'),
  ('Carlos Albuquerque', '3456-7890', '11 11111-2222');

INSERT INTO emprestimo (id, id_copia_livro, nome_completo, rg, data_emprestimo, data_devolucao)
VALUES 
  (1, 1, 'João Silva', '1234-5678', '2022-01-01', '2022-01-10'),
  (2, 2, 'Maria Santos', '2345-6789', '2022-02-01', '2022-02-10'),
  (3, 3, 'Carlos Albuquerque', '3456-7890', '2022-03-01', '2022-03-10');

INSERT INTO multa (id, id_emprestimo, tempo_atraso, valor)
VALUES 
  (1, 1, 2, 10.0),
  (2, 2, 3, 20.0),
  (3, 3, 4, 30.0);

