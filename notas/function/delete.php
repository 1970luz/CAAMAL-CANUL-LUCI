<?php


require('../connection/connection.php');

$id_nota = $_GET['id_nota'];

$query = "DELETE FROM notas WHERE id_nota = '$id_nota'";

$ejecutar = mysqli_query($connection, $query);

header("Location: ../index.php");

?>