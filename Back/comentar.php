<?php
include 'conexion.php';

$comentario = $_POST["coment"];
$DateTime = date('Y-m-d');

$consulta = mysqli_query($conexion, "INSERT INTO comentario VALUES('0', '$comentario', '$DateTime', 1, 1)")
or die("No se pudo subir");

header('Location: /libreria/Front/listadoLibros.html');

?>