-- quais clientes assinaram a lsita de presença no dia 25/08/25

SELECT t1.idCliente,
        count(*)
FROM transacoes as t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE substr(DtCriacao,1,10) = '2025-08-25'
AND t3.DescNomeProduto = 'Lista de presença'


GROUP BY t1.idCliente