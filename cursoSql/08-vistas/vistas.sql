/* 
VISTAS:
    Se puede definir como una consulta almacenada en la base de datos que 
    se utiliza como una tabla virtual y no almacena dato sino que utiliza asociaiones y los datos orignales
    de las tablas, de forma que siempre se mantienen actualizadas
*/

CREATE VIEW entradas_con_nombres AS 
SELECT e.id, e.titulo, u.nombre AS 'Autor', c.nombre AS 'Categoria'
FROM entradas e
INNER JOIN usuarios u ON e.usuario_id = u.id
INNER JOIN categorias c ON e.categoria_id = c.id;

## borrar vista
DROP VIEW entradas_con_nombres;