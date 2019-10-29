<?php
include 'conexion.php';

$comentario = $_POST["coment"];

$consulta = mysqli_query($conexion, "INSERT INTO comentario VALUES('0', '$comentario', NULL, NULL, NULL)")
or die("No se pudo subir");

?>