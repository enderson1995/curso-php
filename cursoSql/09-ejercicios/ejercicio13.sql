/* 
    13. Sacar la media de sueldos entre tdos los vendedores por grupo
*/

SELECT grupo_id, AVG(sueldo) AS  'media' FROM vendedores GROUP BY grupo_id;

/* En lugar de mostrar rl numero del grupo se muestra el nombre del grupo */

SELECT g.nombre, ROUND(AVG(v.sueldo),2) AS 'media', g.ciudad FROM vendedores v
INNER JOIN grupos g ON g.id = v.grupo_id
GROUP BY grupo_id;