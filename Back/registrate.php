<?PHP
include 'conexion.php';

$Nick = $_POST["nick"];
$Nombre = $_POST["nombre"];
$ApellidoP = $_POST["appellidoP"];
$ApellidoM = $_POST["apellidoM"];
$Password = $_POST["password"];

$consulta = mysqli_query($conexion, "INSERT INTO Usuario VALUES('0', '$Nombre', '$ApellidoP', '$ApellidoM','$Nick', '$Password', false)")
or die("No se pudo subir");

header('Location: /libreria/Front/login.html');

?>