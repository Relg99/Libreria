<?php

include 'conexion.php';

//Lista de libros en bd

$consulta = mysqli_query($conexion,'select titulo, autor from libro;')
or die("Fallo la consulta");

$nfilas=mysqli_num_rows($consulta);
$Fila=mysqli_fetch_array($consulta);
    if($nfilas > 0){
    echo '[';
    for ($i=0;$i<$nfilas;$i++){
        echo '{';
        echo '"titulo":"'.$Fila["titulo"].'",';
        echo '"autor":"'.$Fila["autor"].'"';
        if($i==$nfilas-1){
        echo "}";
        }else{
        echo "},";
        }
        $Fila=mysqli_fetch_array($consulta);
}
echo "]";
}
mysqli_close($conexion);


?>