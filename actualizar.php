<?php 
    include("conexion.php");
    $con=conectar();

    $id_usuario=$_GET['id'];
    $sql="SELECT * FROM usuario WHERE id='$id_usuario'";

    $query=mysqli_query($con,$sql);
    $row=mysqli_fetch_array($query);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <title>Actualizar</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    </head>
    <body>
            <div class="container mt-5">
                <form action="update.php" method="POST">
                    <input type="hidden" name="id" value="<?php echo $row['id']  ?>">
                    <input type="text" class="form-control mb-3" name="nombre" placeholder="Nombres" value="<?php echo $row['nombre']  ?>">
                    <input type="text" class="form-control mb-3" name="apellido" placeholder="Apellidos" value="<?php echo $row['apellido']  ?>">
                    <input type="text" class="form-control mb-3" name="codigo_postal" placeholder="Código Postal" value="<?php echo $row['codigo_postal']  ?>">
                    <input type="email" class="form-control mb-3" name="correo" placeholder="Correo" value="<?php echo $row['correo']  ?>">
                    <input type="text" class="form-control mb-3" name="contraseña" placeholder="Contraseña" value="<?php echo $row['contraseña']  ?>">
                    <input type="submit" class="btn btn-primary btn-block" value="Actualizar">
                </form>
            </div>
    </body>
</html>