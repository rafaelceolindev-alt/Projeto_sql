--podemos realizar querys em cima de querys, e filtrar um dado de uma query

SELECT *

FROM (
    SELECT *
    FROM transacoes
    WHERE DtCriacao >= '2025-01-01'
)

WHERE dtCriacao >= '2025-07-01'