<?PHP
include 'conexion.php';

$Titulo = $_POST["Titulo"];
$Autor = $_POST["Autor"];

$consulta = mysqli_query($conexion, "INSERT INTO Libro VALUES('0', '$Titulo', '$Autor')")
or die("No se pudo subir");

header('Location: /libreria/Front/listadoLibros.html');

mysqli_close ($conexion);
?>
