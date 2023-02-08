--Uma empresa de vendas tem um banco de dados com informações sobre os seus produtos. 
--Ela precisa criar um relatório que faça um levantamento diário da quantidade de produtos comprados por dia.
--Para ajudar a empresa, crie um procedure para agilizar esse processo.

CREATE PROCEDURE gerar_relatorio_vendas()
BEGIN
  SELECT 
    data_compra, 
    SUM(quantidade) AS quantidade_total 
  FROM vendas
  GROUP BY data_compra;
END;

CALL gerar_relatorio_vendas();
