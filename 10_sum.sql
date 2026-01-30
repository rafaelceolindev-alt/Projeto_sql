--sumarizar é somar todas as linhas de uma coluna

SELECT  
        sum(qtdePontos),

        sum(CASE
            WHEN qtdePontos > 0 THEN qtdePontos
        END) AS pontospositivos,

        sum(CASE 
            WHEN qtdePontos < 0 THEN qtdePontos
        END) AS pontosnegativos

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'


