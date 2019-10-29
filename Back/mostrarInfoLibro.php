<?php

include 'conexion.php';

//Lista de libros en bd

$Articulo_ID =$_POST['number'];

$consulta = mysqli_query($conexion,'select
libro.Titulo as titulo,
comentario.Comentario as comentario,
comentario.Fecha as fecha,
usuario.nick as nick
FROM
comentario
INNER JOIN usuario ON comentario.FK_User = usuario.Usuario_ID AND comentario.FK_User = usuario.Usuario_ID
INNER JOIN libro ON comentario.FK_Libro = libro.Libro_ID
WHERE
libro.Libro_ID = '($Articulo_ID+1)';')
or die("Fallo la consulta");

$nfilas=mysqli_num_rows($consulta);
$Fila=mysqli_fetch_array($consulta);
    if($nfilas > 0){
    echo '[';
    for ($i=0;$i<$nfilas;$i++){
        echo '{';
        echo '"titulo":"'.$Fila["titulo"].'",';
        echo '"comentario":"'.$Fila["comentario"].'",';
        echo '"fecha":"'.$Fila["fecha"].'",';
        echo '"nick":"'.$Fila["nick"].'"';
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