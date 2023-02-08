CREATE PROCEDURE gerar_relatorio_vendas()
BEGIN
  SELECT 
    data_compra, 
    SUM(quantidade) AS quantidade_total 
  FROM vendas
  GROUP BY data_compra;
END;

CALL gerar_relatorio_vendas();
