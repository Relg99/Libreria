<?php

include 'conexion.php'; 

$Articulo_ID =$_POST['number'];
$ID_Borrar;

$consulta= mysqli_query($conexion,'select libro_id as id from libro;')
or die("Fallo");

$nfilas=mysqli_num_rows($consulta);
$Fila=mysqli_fetch_array($consulta);

if($nfilas > 0){
    for ($i=0;$i < $Articulo_ID+1;$i++){
        $ID_Borrar = $Fila['id'];
        $Fila=mysqli_fetch_array($consulta);
}
}

mysqli_query($conexion,'DELETE FROM libro WHERE Libro_ID = '.$ID_Borrar.';')
or die("Fallo");

mysqli_close ($conexion);
?>
