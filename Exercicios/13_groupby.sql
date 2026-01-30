--quantos clientes tem email cadastrado? uma operação é menos custosa que uma operação lógica.

SELECT 

    sum(flEmail)

FROM clientes;

SELECT count(*)

FROM clientes
WHERE flEmail = 1;