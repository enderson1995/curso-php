/* 
    mostrar los apellidos de los vededores con su fecha y su numero de grupo ordenado por fecha descendente, mostrar los cuatro ultimos 
*/

SELECT apellidos, fecha_alta, id FROM vendedores ORDER BY fecha_alta DESC LIMIT 4;