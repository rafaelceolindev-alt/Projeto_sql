--qual cliente que mais juntou pontoss positivos em maio de 2025

SELECT idCliente,
    sum(qtdePontos) AS totalpontos



FROM transacoes

WHERE DtCriacao >= '2025-05-01'
AND DtCriacao < '2025-06-01'
AND qtdePontos > 0

GROUP BY idCliente

ORDER BY sum(qtdePontos) DESC
LIMIT 1
