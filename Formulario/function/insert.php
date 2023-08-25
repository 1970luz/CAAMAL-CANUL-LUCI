<?php
require('../connection/connection.php');
//Recibes las variables por POST

$nombre = $_POST['nombre'];
$Correo= $_POST['correoelectronico'];
$asunto = $_POST['Asunto'];
$mensaje = $_POST['Mensaje'];

$query = "INSERT INTO alumnos (nombre,correo,asunto,mensaje) VALUES ('$nombre','$correo','$asunto','$mensaje')";

$ejecutar = mysqli_query($connection, $query);

header("Location: ../formulario.php");


//Haces lo demas con el  resto de los campos de tu formulario
//Realizas el Insert a tu bd
//$sql="INSERT INTO mensajes (nombre,correo,asunto,mensaje) VALUES ('$nombre','$Correo','$asunto','$mensaje')";
//Ejecutas tu consulta y listo

//echo "<br/> &nbsp; DATOS RECIBIDOS: <br/>";
//echo "<br/> &nbsp; Nombre: ". $nombre. " <br/>";
//echo "<br/> &nbsp; Correo: ". $Correo. " <br/>";
//echo "<br/> &nbsp; Asunto: ". $asunto. "  <br/>";
//echo "<br/> &nbsp; Mensaje ". $mensaje. " <br/>";

?>