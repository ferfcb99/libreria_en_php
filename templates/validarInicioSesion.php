<?php
    include('conexion.php');
    $con = conectar();

    if(isset($_POST['nombreUsuario']) && isset($_POST['clave'])){
        $nombreUsuario = $_POST['nombreUsuario'];
        $clave=$_POST["clave"];

        $sentencia = "select * from Usuario where nombreUsuario = '".$nombreUsuario."' and clave = '". $clave ."';";
        $consultaEjecutada = mysqli_query($con, $sentencia);

        if($consultaEjecutada){
            header('Location: pantallaPrincipal.php');
        }else{
            echo 'Datos incorrectos';
        }
        

    }else{
        header('Location: iniciarSesion.php');
    }
    

?>