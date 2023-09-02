<?php

// exclusivo para testeas recibimiento de datos del form
print_r($_POST);

require('../connection/connection.php');

$Notas = $_POST['Notas'];
$Asunto = $_POST['Asunto'];
$Prioridad = $_POST['Prioridad'];

$query = "INSERT INTO notas (Asunto,Notas,Prioridad) VALUES ('$Asunto','$Notas','$Prioridad')";

$ejecutar = mysqli_query($connection, $query);

header("Location: ../index.php");




?>