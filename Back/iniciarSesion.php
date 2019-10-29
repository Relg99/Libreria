<?php
include 'conexion.php';

$Nick = $_POST["nombre"];
$Password = $_POST["password"];

$consultaUno=mysqli_query($conexion, "select password FROM usuario where nick = '$Nick' ;")

or die ("Fallo consulta");

$nfilas=mysqli_num_rows($consultaUno);
$Fila=mysqli_fetch_array($consultaUno);

echo 'Pass: '.$Fila['password'];

if($Fila["password"]==$Password)
{
	header('Location: /libreria/Front/listadoLibros.html');
}else{
	header('Location: /libreria/Front/login.html');
}
mysqli_close($conexion);

?>
