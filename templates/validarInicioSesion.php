<?php
    include('conexion.php');

    $con = conectar();

    if(isset($_POST['nombreUsuario']) && isset($_POST['clave'])){
        $nombreUsuario = $_POST['nombreUsuario'];
        $clave=$_POST["clave"];

        $sentencia = "select * from Usuario where nombreUsuario = '".$nombreUsuario."' and clave = '". $clave ."';";
        $consultaEjecutada = mysqli_query($con, $sentencia);

        $actualizaEstado = "update Usuario set estaDentroDelSistema = 1 where nombreUsuario = '".$nombreUsuario."' and clave = '". $clave ."';";
        $consultaEjecutada2 = mysqli_query($con, $actualizaEstado);

        if($consultaEjecutada && $consultaEjecutada){
            header('Location: pantallaPrincipal.php');
        }else{
            echo 'Datos incorrectos';
        }
        

    }else{
        header('Location: iniciarSesion.php');
    }
    

?>