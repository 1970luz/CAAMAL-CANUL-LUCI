<?php
// exclusivo para testeas recibimiento de datos del form
$nombre = $_POST['nombre'];
$Correo= $_POST['correoelectronico'];
$asunto = $_POST['Asunto'];
$mensaje = $_POST['Mensaje'];
echo "<br/> &nbsp; DATOS RECIBIDOS: <br/>";
echo "<br/> &nbsp; Nombre: ". $nombre. " <br/>";
echo "<br/> &nbsp; Correo: ". $Correo. " <br/>";
echo "<br/> &nbsp; Asunto: ". $asunto. "  <br/>";
echo "<br/> &nbsp; Mensaje ". $mensaje. " <br/>";
?>