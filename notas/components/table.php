<?php
require("./connection/connection.php");

$query = "SELECT * FROM notas";

$ejecutar = mysqli_query($connection, $query);

$contador = 1;

while ($fila = mysqli_fetch_array($ejecutar)) {

    ?>
    <tr>
        <td>
            <?php echo $contador; ?>
        </td>
        <td>
            <?php echo $fila[ 'Asunto' ]; ?>
        </td>
        <td>
            <?php echo $fila[ 'Notas' ]; ?>
        </td>
        <td>
            <?php echo $fila[ 'Prioridad' ]; ?>
        </td>
        <td><a href="./function/update.php">editar</a></td>
        <td><a href="./function/delete.php?id=<?php echo $fila[ 'id_nota' ]; ?>">eliminar</a></td>
    </tr>
    <?php $contador++;
} ?>