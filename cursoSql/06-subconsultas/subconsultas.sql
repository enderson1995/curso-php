/* 
    SUBCONSULTAS:
        -Consultas que se ejecutan dentro de otras.
        -Consiste en utiizar los resultados de la subconsulta para operar la consulta principal
        -Jugando con las claves ajenas / foraneas.
*/

/* Hacer subconsulta */
## VALORES COINCIDEN
SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas);
## VALORES NO COINCIDEN
SELECT * FROM usuarios WHERE id NOT IN ( SELECT usuario_id FROM entradas);

## SACAR LOS USUARIOS QUE EN LA ENTRADA HABLEN DE GTA
SELECT nombre, apellidos FROM usuarios WHERE id 
    IN (SELECT usuario_id FROM entradas WHERE titulo LIKE("%GTA%"));

## Sacar todas las entradas de la categoria accion
SELECT * FROM entradas WHERE categoria_id IN (SELECT id FROM categorias WHERE nombre = "Accion");

## mostrar las categorias con mas de 3 entradas
SELECT * FROM categorias WHERE id 
        IN (SELECT categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(categoria_id)>=3);

## mostrar los usuarios que crearon entradas un dia de la semana
SELECT * FROM usuarios WHERE id 
        IN (SELECT usuario_id FROM entradas WHERE DAYOFWEEK(fecha) > 1 AND DAYOFWEEK(fecha) <6);

## mostrar el nombre de el usuario que tenga mas entrada 
SELECT * FROM usuarios WHERE id IN 
        (SELECT COUNT(id) FROM entradas GROUP BY usuario_id ORDER BY COUNT(id) DESC);
        
SELECT CONCAT(nombre, " ", apellidos) FROM usuarios WHERE id = 
        (SELECT usuario_id FROM entradas GROUP BY usuario_id ORDER by COUNT(id) DESC LIMIT 1);
## mostrar las categorias sin entrada
SELECT * FROM categorias WHERE id
        NOT IN (SELECT categoria_id FROM entradas);
