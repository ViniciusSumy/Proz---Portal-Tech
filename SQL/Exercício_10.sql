-- Uma loja tem um banco de dados que contém todo o controle de vendas de produtos e de cadastro de clientes. Pensando nisso, crie uma função para somar todos os clientes que foram cadastrados na loja durante um dia.

CREATE TABLE clientes (
  id INT PRIMARY KEY,
  nome VARCHAR(255),
  telefone VARCHAR(15),
  data_cadastro DATE
);

INSERT INTO clientes (id, nome, telefone, data_cadastro)
VALUES
  (1, 'Tereza Silva', '+55 11 98765-4321', '2022-12-01'),
  (2, 'Sophie Souza', '+55 11 12345-6789', '2022-12-02'),
  (3, 'Pedro Almeida', '+55 11 23456-7890', '2022-12-03'),
  (4, 'André de Paula', '+55 11 34567-8901', '2022-12-04'),
  (5, 'Carlos Ferreira', '+55 11 45678-9012', '2022-12-05');


CREATE FUNCTION contar_clientes_dia (data_cadastro DATE)
RETURNS INTEGER
BEGIN
  DECLARE total INTEGER;
  SELECT COUNT(*) INTO total
  FROM clientes
  WHERE data_cadastro = data_cadastro;
  RETURN total;
END;

SELECT contar_clientes_dia('2023-02-07');
