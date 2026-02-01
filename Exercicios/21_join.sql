--qual mes tivemos mai lista de presenca assinada

SELECT 
        substr(t1.DtCriacao, 1, 7) AS anomes,
        count(DISTINCT t1.IdTransacao) AS qttransacao

FROM transacoes as t1

LEFT JOIN transacao_produto as t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE DescNomeProduto = 'Lista de presença'

GROUP BY substr(t1.DtCriacao, 1, 7)

ORDER BY count(DISTINCT t1.IdTransacao) DESC