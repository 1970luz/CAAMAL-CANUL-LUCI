<?php

    $hostname = "localhost";    //127.0.0.1
    $username = "root";
    $password = "";
    $database =  "formulario";
    //$port = 3306;
    //$connection = mysqli_connect($hostname, $username, $password, $database,$port);
    $connection = mysqli_connect($hostname, $username, $password, $database);

    if(!$connection){
        die("<h1>Conexión fallida</h1>" . mysqli_connect_error());
    }/*else{ echo "<h1>Conexión exitosa</h1>"; }*/
?>