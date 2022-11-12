<?php

    include('conexion.php');

    $formato_fecha = date('Y-m-d');   
    // 2021-10-27

    $formato_hora = date('H:i:s');
    //14:03:57

    $idcliente = $_GET['idcliente'];

    $idlibroo = $_GET['idlibro'];

    $consulta = "insert into ClienteLibro(idcliente, idlibro, fecha, hora) values('$idcliente', '$idlibroo', '$formato_fecha', '$formato_hora');";

    $con = conectar();

    $consultaEjecutada = mysqli_query($con, $consulta);

    if($consultaEjecutada){
        header('Location: pantallaPrincipal.php');
    }else{
        header('Location: pantallaCompra.php');
    }

?>