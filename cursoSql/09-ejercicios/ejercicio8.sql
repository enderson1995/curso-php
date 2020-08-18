/* 
    Visuaizar todos los carros cuya marca exista la letra a y que empiezen por f y cullo modelo empieze por f
*/

SELECT * FROM carros WHERE marca LIKE ('F%a%') AND modelo LIKE('F%');