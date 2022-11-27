<?php

    function conectar(){
        $servidor = "localhost";
        $usuario = "root";
        $clave = "";
        $db = "Biblioteca";
        $con = mysqli_connect($servidor, $usuario, $clave, $db); 

        return $con;
    }


?>