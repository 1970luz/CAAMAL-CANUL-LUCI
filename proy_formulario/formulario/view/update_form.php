<?php
    //print_r($_GET);
    $id = $_GET['id'];
    require("../connection/connection.php");
    //$query = "SELECT * FROM usuario WHERE id_usuaio = $_GET[id]";
    $query = "SELECT * FROM usuario WHERE id_usuario = $id";
    $ejecutar = mysqli_query($connection,$query);
    $fila = mysqli_fetch_array($ejecutar);
?>


<!doctype html>
<html lang="en">

<head>
  <title>Title</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- ========== Seccion Bootstrap CSS v5.2.1 ========== -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- ========== Iconos Bootsrap ========== -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
</head>

<body>
  <header>
    <!-- place navbar here -->
  </header>
  <main>
    <div class="container mt-5">
      <div class="row justify-content-center align-item-center g-2">
        <div class="col-6">
          <div class="card" style="background-color:darkgrey;">
            <div class="card-body">
              <h2>Actualizar usuario</h2>
              <form action="../function/update.php" method="post">
                <div class="mb-3">
                  <label class="form-label">Nombre completo</label>
                  <input name="nombre" value="<?php echo $fila['nombre']; ?>" type="text" class="form-control">
                </div>
                <div class="mb-3">
                  <label class="form-label">Correo electronico</label>
                  <input name="email" value="<?php echo $fila['email']; ?>" type="email" class="form-control">
                </div>
                <div class="mb-3">
                  <label class="form-label">Telefono</label>
                  <input name="telefono" value="<?php echo $fila['tel']; ?>" type="number" class="form-control">
                </div>
                <input type="hidden" name="id" value="<?php echo $fila[ 'id_usuario' ]; ?>">
                <!--input type="hidden" name="id" value="<?php //echo $id; ?>"-->
                <button type="submit" class="btn btn-primary">Actualizar</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  <footer>
    <!-- place footer here -->
  </footer>
  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js">
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js">
  </script>
</body>

</html>