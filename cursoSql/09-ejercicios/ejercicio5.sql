/*
    mostrar todos los vendedores con su nombre y el numero de dias que lleva en el concensionario
*/

SELECT nombre, DATEDIFF(fecha_alta, CURDATE()) as 'Dias trabajando' FROM vendedores;