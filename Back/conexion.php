<?php


$conexion=mysqli_connect("localhost","root","")
or die("No se puede conectar con el servidor");

mysqli_select_db($conexion, "libreria")
or die("No se puede conectar a la base de datos."); 



?>