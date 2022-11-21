<?php

   
    include('funciones.php');

    if(isset($_POST["usuario"]) && isset($_POST["clave"])){
 
        $con = conectar();
        $idcliente = consultaUltimoCliente();
        $usuario=$_POST["usuario"];
        $clave=$_POST["clave"];
        $consulta = "insert into usuario(nombreUsuario, clave, estaDentroDelSistema ,idcliente) values ('$usuario','$clave', 0, '$idcliente');";
        $consultaEjecutada = mysqli_query($con, $consulta);

        if($consultaEjecutada){
            header('Location: iniciarSesion.php');
        }else{
            header('Location: pantallaRegistroUsuario.php');
        }

        
    }else{
        header('Location: pantallaRegistroUsuario.php');
    }




    ?>