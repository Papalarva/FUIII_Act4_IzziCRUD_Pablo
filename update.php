<?php

    include("conexion.php");
    $con=conectar();

    $id=$_POST['id'];
    $nombre=$_POST['nombre'];
    $apellido=$_POST['apellido'];
    $codigo_postal=$_POST['codigo_postal'];
    $correo=$_POST['correo'];
    $contraseña=$_POST['contraseña'];

    $sql="UPDATE usuario SET  nombre='$nombre',apellido='$apellido',codigo_postal='$codigo_postal', correo='$correo', contraseña='$contraseña'  WHERE id='$id'";
    $query=mysqli_query($con,$sql);

    if($query){
        Header("Location: usuario.php");
    }
?>