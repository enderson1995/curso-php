/* 
    Consultar varias tablas en una sola sentencia
    Funciona para mostrar la informacion relacionadas entre distintas talas y así ofrecer una información 
    completa
*/

#Mostrar las entradas con el nombre de autoy y nombre de la categoria#
SELECT entradas.titulo, usuarios.nombre, categorias.nombre 
FROM entradas, usuarios, categorias;

## colocar alias
SELECT e.titulo, u.nombre, c.nombre 
FROM entradas e, usuarios u, categorias c;

## especifcar busqueda
SELECT e.id, e.titulo, u.nombre AS 'Autor', c.nombre AS 'Categoria'
FROM entradas e, usuarios u, categorias c
WHERE e.usuario_id = u.id and e.categoria_id = c.id ;

## con inner join es una busqueda mas optimizada
SELECT e.id, e.titulo, u.nombre AS 'Autor', c.nombre AS 'Categoria'
FROM entradas e
INNER JOIN usuarios u ON e.usuario_id = u.id
INNER JOIN categorias c ON e.categoria_id = c.id;

## mostrar el nombre de las categorias y al lado cuantas entraddas tienen
SELECT c.nombre AS 'Categorias', COUNT(e.id)
FROM entradas e, categorias c
WHERE e.categoria_id = c.id GROUP BY e.categoria_id;

## INNER JOIN
SELECT c.nombre AS 'Categorias', COUNT(e.id)
FROM categorias c
INNER JOIN entradas e ON e.categoria_id = c.id
GROUP BY e.categoria_id;

## LEFT JOIN
SELECT c.nombre AS 'Categorias', COUNT(e.id)
FROM categorias c
LEFT JOIN entradas e ON e.categoria_id = c.id
GROUP BY e.categoria_id;

## right join
SELECT c.nombre AS 'Categorias', COUNT(e.id)
FROM entradas e
RIGHT JOIN categorias c ON e.categoria_id = c.id
GROUP BY e.categoria_id;

## mostrar el email del usuarios y al lado cuantas entradas tiene
SELECT u.email AS 'Correo', COUNT(e.id)
FROM usuarios u, entradas e
WHERE e.usuario_id = u.id GROUP BY e.usuario_id;

## inner join
