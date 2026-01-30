--distinct vai contar os valores disintos dentro das linhas, neste caso estamos consultando quantos clientes realizaram transações no periodo de julho de 2025

SELECT
        count(*),
        count(DISTINCT idCliente)

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY DtCriacao DESC;

