<?php
// print_r($_GET);

$id_nota = $_GET[ 'id_nota' ];

require("../connection/connection.php");

$query = "SELECT * FROM notas WHERE id_nota = $id_nota";

$ejecutar = mysqli_query($connection, $query);


$fila = mysqli_fetch_array($ejecutar);

?>

<!doctype html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

</head>

<body>
    <header>
        <!-- place navbar here -->
    </header>
    <main>
        <div class="container mt-5">
            <div class="row justify-content-center align-items-center g-2">
                <div class="col-6">
                    <div class="card">
                        <h3>Actualizar Notas</h3>
                        <div class="card-body">
                            <form action="../function/update.php" method="post">
                                <div class="mb-3">
                                    <label class="form-label">Asunto</label>
                                    <input name="Asunto" value="<?php echo $fila[ 'Asunto' ]; ?>" type="text"
                                        class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Notas</label>
                                    <input name="Notas" value="<?php echo $fila[ 'Notas' ]; ?>" type="text"
                                        class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Prioridad</label>
                                    <input name="Prioridad" value="<?php echo $fila[ 'Prioridad' ]; ?>" type="text"
                                        class="form-control">
                                </div>
                                <input type="hidden" name="id_nota" value="<?php echo $fila[ 'id_nota' ]; ?>">
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
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
        </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
        </script>
</body>

</html>