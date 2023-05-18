<?php
session_start();
//verificar si se ha enviado el formulario
if($_SERVER["REQUEST_METHOD"]=="POST")
{
    $emailOrCorreo = $_POST["emailL"];
    $password = $_POST["contraL"];

    if(empty($emailOrCorreo) || empty($password))
    {
        echo "<script>alert('por favor, rellene todos los campos');window.history.go(-1);</script>";
    }
    else
    {
        $server="localhost";
        $db="tienda";
        $user="root";
        $pass="";

        $conn = new mysqli($server,$user,$pass,$db);
        if($conn->connect_error)
        {
            die("Error al conectarse a la base de datos".$conn->connect_error);
        }

        $sql = "SELECT * FROM user WHERE (correo='$emailOrCorreo' OR username='$emailOrCorreo') AND clave='$password'";
        $resultado = mysqli_query($conn,$sql);

        //verificar si se encontro el usuario
        if($resultado->num_rows >0)
        {
            $row = mysqli_fetch_assoc($resultado);
            $usuario = $row["username"];
            $_SESSION["usuario"] = $usuario;
            echo "<script>alert('Usuario encontrado');window.history.go(-2);</script>";

        }
        else
        {
            echo "<script>alert('Usuario no encontrado, por favor verifica tus datos de inicio de sesion');window.history.go(-1);</script>";
        }
        mysqli_close($conn);
    }
}