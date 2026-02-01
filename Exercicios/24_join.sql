-- quais clientes assinaram a lsita de presença do inicio ao fim do curso


SELECT count( DISTINCT t1.idCliente)

FROM transacoes as t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE t1.DtCriacao >= '2025-08-25'
AND t1.DtCriacao < '2025-08-30'
AND t3.DescNomeProduto = 'Lista de presença'
