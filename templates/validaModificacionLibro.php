<?php

    include('funciones.php');

    $idlibro = $_POST['idlibro'];
    $nombrelibro = $_POST['nombrelibro'];
    $precio = $_POST['precio'];

    

        $consulta = "update libro set nombrelibro = '$nombrelibro', precio = '$precio'  where idlibro = '$idlibro';";
        $con = conectar();
        $consultaEjecutada = mysqli_query(conectar(), $consulta);

        if($consultaEjecutada){
            header('Location: pantallaPrincipal.php');
        }else{
            header('Location: pantallaPrincipal.php');
        }

?>