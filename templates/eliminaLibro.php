<?php

    
    include('funciones.php');



    $idlibro = $_GET['idlibro'];
    
    $consultaEliminar = "delete from libro where idlibro = '$idlibro';";

    $consultaEjecutada = mysqli_query(conectar(), $consultaEliminar);

    if($consultaEjecutada){
        header('Location: pantallaPrincipal.php');
    }else{
        header('Location: pantallaPrincipal.php');
    }


?>