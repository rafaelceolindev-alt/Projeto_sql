--count * e 1 fazem a mesma coisa porem depende da engine que estamos usando, quando usamos dentro do count(idclientes) por exemplo, ele vai trazer a contagem dos não nulos, portanto se tiver um valor nulo dentro do campo, não será contabilizado

SELECT 
        count(*) AS totalclientes,
        count(1) AS totalclientes1,
        count(idCliente) AS clientesnaonulos

FROM clientes;

--distinct registro unico das linhas

SELECT DISTINCT
        flEmail,
        flTwitch
FROM clientes;
