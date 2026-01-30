--listar todas as trasacoes adicionando uma nova coluna sinalizando alto medio e baixo para o valor dos pontos <10 <500 >=500


SELECT 
        IdTransacao,
        qtdePontos,
            CASE 
                WHEN qtdePontos < 10 THEN 'baixo'
                WHEN qtdePontos < 500 THEN 'Medio'
                ELSE 'Alto'
            END AS farolpontos

FROM transacoes

ORDER BY qtdePontos DESC
