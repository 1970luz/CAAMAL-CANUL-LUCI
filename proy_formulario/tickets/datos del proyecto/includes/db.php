<?php
    $hostname = "localhost";
    $username = "root";
    $password = "";
    $database = "mliscam5s_tickets";
    $connection = mysqli_connect($hostname, $username, $password, $database);

    if(!$connection){
        die("<h1>Conexión fallida</h1>" . mysqli_connect_error());
    }/else{ echo "Conexión exitosa a la base de datos <b>{$database}</b>"; }/
?>