-- isso é uma expressao ele nao muda nada no dado original, estamos selecionando dados na tabela, resolvendo o que esta na expressão e exibe para nós, podemos tbm renomear a coluna com AS que seria um apelido da coluna, não é obrigatorio porém explicito é melhor que implicito

SELECT idCliente,
        qtdePontos,
        qtdePontos + 10 AS qtdePontosPlus10,
        qtdePontos * 2  AS qtdePontosDouble,
        DtCriacao,
        substr(DtCriacao,1, 19) AS datahora,
        strftime('%w',datetime(substr(DtCriacao,1, 19)))AS datanova

FROM clientes;