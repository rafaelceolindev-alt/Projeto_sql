-- Trazer a lista de trasações com apenas 1 ponto

SELECT * FROM transacoes;

SELECT IdTransacao, qtdePontos

FROM transacoes 

WHERE qtdePontos = 1;