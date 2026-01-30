--qual valor medio de pontos positivos por dia

SELECT 
        sum(qtdePontos) AS totalpontos,
        count(DISTINCT(substr(DtCriacao,1,10))) AS qtdediasunicos,
        sum(qtdePontos) / count(DISTINCT(substr(DtCriacao,1,10))) AS avgpontosdia
FROM    transacoes

WHERE qtdePontos > 0

