<?php 

   

    function consultaLibroPorId($id){
        $consulta = "SELECT * FROM libro WHERE idlibro = ". $id;
        $con = conectar();
        $resultado = mysqli_query($con, $consulta);
        $libro = mysqli_fetch_array($resultado);

        return $libro;

    }    


?>