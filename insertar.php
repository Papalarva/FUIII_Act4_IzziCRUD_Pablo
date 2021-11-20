<?php
    include("conexion.php");
    $con=conectar();

    $id=$_POST['id'];
    $nombre=$_POST['nombre'];
    $apellido=$_POST['apellido'];
    $codigo_postal=$_POST['codigo_postal'];
    $correo=$_POST['correo'];
    $contraseña=$_POST['contraseña'];

    $sql="INSERT INTO usuario VALUES('$id','$nombre','$apellido','$codigo_postal','$correo', '$contraseña')";
    $query= mysqli_query($con,$sql);

    if($query){
        Header("Location: usuario.php");
    }else {}
?>