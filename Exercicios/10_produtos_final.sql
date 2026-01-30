--produtos que tenham dragrão no final da descrição

SELECT * 

FROM produtos

WHERE DescDescricaoProduto NOT LIKE '%dragão.'
