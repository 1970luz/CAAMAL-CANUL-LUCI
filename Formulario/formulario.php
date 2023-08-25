<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
      <main>
        <div class="container h-100" style="padding-top: 4rem;">   
        <div class="row justify-content-center align-item-center h-60">
                <div class="cal-12 col-sm-12 col-md-3 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <form action="./function/insert.php" method="post">
                                <!-- nombre-->
                                <div class="mb-3">
                                  <label class="form-label">Nombre</label>
                                  <input name="nombre" type="text" class="form-control">
                                </div>
                                  <!-- correo electronico-->
                                <div class="mb-3">
                                    <label class="form-label">Correo Electronico </label>
                                    <input name="correoelectronico" type="text" class="form-control">
                                </div>
                                  <!-- Asunto-->
                                <div class="mb-3">
                                    <label class="form-label">Asunto</label>
                                    <input name="Asunto" type="text" class="form-control">
                                </div>
                                  <!-- Mensaje-->
                                <div class="mb-3">
                                  <label class="form-label">Mensaje</label>
                                  <input name="Mensaje" type="text" class="form-control">
                              </div>
                                <button type="submit" class="btn btn-primary">Enviar</button>
                            </form>
                        </div>
                        </div>
                      </div>
                    <div class="col-12 col-sm-12 col-md-9">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Nombre</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Teléfono</th>
                                            <th scope="col"></th>
                                            <th scope="col"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        require("./connection/connection.php");
                                        $query = "SELECT * FROM alumnos";
                                        $ejecutar = mysqli_query($connection, $query);
                                        $contador = 1;
                                        while ($fila = mysqli_fetch_array($ejecutar)) {
                                        ?>
                                        <tr>
                                            <td><?php echo $contador;?></td>
                                            <td><?php echo $fila['nombre'];?></td>
                                            <td><?php echo $fila['correo'];?></td>
                                            <td><?php echo $fila['asunto'];?></td>
                                            <td><?php echo $fila['mensaje'];?></td>
                                            <td><a href="./function/update.php">Editar</a> </td>
                                            <td><a href="./function/delete.php?id=<?php echo $fila['id_alumno'];?>">Eliminar</a></td>
                                        </tr>
                                        <?php $contador++;} ?>
                                    </tbody>
                                </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
              </main>
</body>
</html>