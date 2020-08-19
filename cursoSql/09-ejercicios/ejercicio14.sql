/* 
    Visualizar las unidades vendidas a cada cliente mostrando el numero de carros, el nombre del carro, y e l numero
    de cliente y la suma de unidades
*/

SELECT c.nombre, p.id, c.modelo FROM carros c
INNER JOIN pedidos p ON  p.carro_id = c.id 
;(

SELECT co.modelo AS 'Carro', cl.nombre AS 'Cliente', SUM(e.cantidad) AS 'Unidades' FROM pedidos e
INNER JOIN carros co ON co.id = e.carro_id
INNER JOIN clientes cl ON cl.id= e.cliente_id
GROUP BY e.carro_id, e.cliente_id;