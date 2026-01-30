-- lista de pedidos realiazados no fds

SELECT  
    IdTransacao,     DtCriacao, 
    substr(DtCriacao,1,19) AS datahora,
    strftime('%w',datetime(substr(DtCriacao,1, 19)))AS diasemana

FROM transacoes 
WHERE strftime('%w',datetime(substr(DtCriacao,1, 19))) IN ('0','6')