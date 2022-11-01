<?php

    function conectar(){
        $servidor = "localhost";
        $usuario = "root";
        $clave = "12345";
        $con = mysqli_connect($servidor, $usuario, $clave);

        if($con){
            echo "Conectado";
        }else{
            echo "Error al conectar";
        }
    
        // return $con;
    }

?>