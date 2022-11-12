<?php 

    include('conexion.php');

    if(isset($_POST['nombre']) && isset($_POST['apellido']) && isset($_POST['telefono']) && isset($_POST['direccion'])){

        $nombrecliente=$_POST['nombre'];
        $apellidocliente=$_POST['apellido'];
        $telefono=$_POST['telefono'];
        $direccion=$_POST['direccion'];
        $con = conectar();


       // $consulta = "insert into cliente(nombrecliente, apellidocliente, telefono, direccion) values(". $nombrecliente .", " . $apellidocliente . " ,".$telefono." ,".$direccion." );";
        $consulta = "insert into cliente(nombrecliente, apellidocliente, telefono, direccion) values( '$nombrecliente', '$apellidocliente' , '$telefono' , '$direccion' );";

        $consultaEjecutada = mysqli_query($con, $consulta);

        if($consultaEjecutada){
            header('Location: pantallaRegistroUsuario.php');
        }else{
            header('Location: iniciarSesion.php');
        }

    }else{
        header('Location: iniciarSesion.php');
    }


?>
