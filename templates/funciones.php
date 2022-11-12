<?php 

   include('conexion.php');

    function consultaLibroPorId($id){
        $consulta = "SELECT * FROM libro WHERE idlibro = ". $id;
        $con = conectar();
        $resultado = mysqli_query($con, $consulta);
        $libro = mysqli_fetch_array($resultado);

        return $libro;
    }    

    function consultaUltimoCliente(){
        $consulta = "select max(idcliente) as ultimoCliente from cliente;";
        $con = conectar();
        $resultado = mysqli_query($con, $consulta);
        $idCliente = mysqli_fetch_array($resultado);

        return intval($idCliente);
    }

?>