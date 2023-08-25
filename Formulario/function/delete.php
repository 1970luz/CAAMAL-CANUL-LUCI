<?php

require('../connection/connection.php');

$id = $_GET['id'];

$query = "DELETE FROM alumnos WHERE id_alumno = '$id'";

$ejecutar = mysqli_query($connection, $query);

header("Location: ../formulario.php");

?>