<?php

   
    include('funciones.php');

    if(isset($_POST["usuario"]) && isset($_POST["clave"])){
 
        $con = conectar();
        $idcliente = consultaUltimoCliente();
        $usuario=$_POST["usuario"];
        $clave=$_POST["clave"];
        $consulta = "insert into usuario(nombreUsuario, clave, idcliente) values ('$usuario','$clave','$idcliente');";
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