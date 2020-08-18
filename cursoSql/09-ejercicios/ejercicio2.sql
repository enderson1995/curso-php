/* 
    Modificar la comision de los vendedores y ponerla al 0.5% cuando ganan  más de 50.000
*/

UPDATE vendedores set comision = 0.5 WHERE sueldo>=50000;