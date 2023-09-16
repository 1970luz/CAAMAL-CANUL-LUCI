<?php
    echo ('<h1>Inserción de registro</h1>');

    /*print_r($_GET);   esta recepción de datos form 
    $nombre = $_GET['nombre'];    $email = $_GET['email'];    $telefono = $_GET['telefono'];*/

    print_r($_POST);  /*esta recepción de datos form */
    
    require('../connection/connection.php');

    $nombre = $_POST['nombre'];
    $email = $_POST['email'];
    $telefono = $_POST['telefono'];

    $query = "INSERT INTO usuario(nombre, email, tel) VALUES ('$nombre','$email','$telefono')";

    $ejecutar = mysqli_query($connection,$query);

    header("Location: ../index.php");

    //print("Nombre usuario: <b>".$nombre."</b><br>E-mail: <b>".$email."</b><br>Telefono: <b>".$telefono."</b>");
    //echo "Nombre usuario: <b>{$nombre}</b><br>E-mail: <b>{$email}</b><br>Telefono: <b>{$telefono}</b>";
?>