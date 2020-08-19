/* 
    11. Visualizar todos ls cargos de ls vendedores y el numero de venedores que hay dentro del cargo
*/

SELECT cargo, COUNT(cargo) FROM vendedores GROUP BY cargo;
SELECT cargo, COUNT(id) FROM vendedores GROUP BY cargo ORDER BY COUNT(id) DESC;