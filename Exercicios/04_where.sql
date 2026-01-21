--selecione produtos que contem Espada no nome 

SELECT * FROM produtos WHERE DescNomeProduto in ('Espada Longa', 'Espada Curta', 'Espada Curvada');

-- % é o coringa e o like procura uma string e comparando se é parecido com o valor look a like, porem muito mais custoso para o BD, se vc souber o que procurar prefira o IN e não o like e o melhor de todos é a igualdade

SELECT * FROM produtos WHERE DescNomeProduto LIKE 'Espada%';

-- sendo melhor e mais eficiente buscar pela categoria do produto

SELECT * FROM produtos WHERE DescCategoriaProduto = 'espada';