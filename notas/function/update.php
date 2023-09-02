<?php

//print_r($_POST);

require("../connection/connection.php");

$id_nota = $_POST[ 'id_nota' ];
$Asunto = $_POST[ 'Asunto' ];
$Notas = $_POST[ 'Notas' ];
$Prioridad = $_POST[ 'Prioridad' ];

$query = "UPDATE notas SET Asunto = '$Asunto', Notas = '$Notas', Prioridad = '$Prioridad' WHERE id_nota = $id_nota";

$ejecutar = mysqli_query($connection, $query);

header("Location: ../index.php");

?>