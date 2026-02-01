--qual dia da semana que mais teve pedidos em 2025

SELECT 
    strftime( '%w', substr(Dtcriacao, 1,10)) AS diasemana,
    count(DISTINCT Idtransacao) AS qtdetransacao

    FROM transacoes

    WHERE substr(dtcriacao,1,4) = '2025'

    GROUP BY strftime( '%w', substr(Dtcriacao, 1,10))