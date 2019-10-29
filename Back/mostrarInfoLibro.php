<?php

include 'conexion.php'; 

$Articulo_ID =$_POST['number'];
$ID_Borrar;

$consulta= mysqli_query($conexion,'select
libro.titulo,
comentario.Comentario,
comentario.Fecha,
usuario.nick
FROM
comentario
INNER JOIN usuario ON comentario.FK_User = usuario.Usuario_ID AND comentario.FK_User = usuario.Usuario_ID
INNER JOIN libro ON comentario.FK_Libro = libro.Libro_ID
WHERE
libro.Libro_ID = '$Articulo_ID';
')
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
