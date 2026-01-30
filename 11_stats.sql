--alguns exemplos de estatisticas que podemos usar no sql

SELECT 
        avg(qtdePontos) AS mediacarteira,
        min(qtdePontos) AS mincarteira,
        max(qtdePontos) AS maxcarteira,
        sum(flTwitch),
        sum(flEmail)

        

FROM clientes

