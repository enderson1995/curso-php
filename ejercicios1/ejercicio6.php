<?php 

/*
    imprimir por pantalla la tabla de multiplicar del uno al 10 empleando las etiquetas de html
*/
echo '<h1>Tabla de multiplicar</h1>';
for($i=1;$i<=10;$i++){
    echo '<h2>Tabla de multiplicar del '.$i.'</h2>';

    echo "<table border='1'>";
    echo '<tr>
            <td>Operación</td>
            <td>Resultado</td>
          </tr>
    ';
    for($j=1;$j<=10;$j++){
        echo '<tr>
                <td>'.$i.'x'.$j.'</td>
                <td>'.$i*$j.'</td>
            </tr>
        ';
    }
    echo '</table>';
}