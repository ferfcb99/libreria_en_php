<?php

include('conexion.php');

$formato_fecha = date('Y-m-d');
// 2021-10-27

$formato_hora = date('H:i:s');
//14:03:57

$idcliente = $_GET['idcliente'];
$con = conectar();

$idlibroo = $_GET['idlibro'];

$usuarioActivo = "SELECT idcliente from usuario where  estaDentroDelSistema=1;";

$consultaEjecutada2 = mysqli_query($con, $usuarioActivo);

$idcliente = mysqli_fetch_array($consultaEjecutada2);

$idcliente = $_GET['idcliente'];

$consulta = "insert into ClienteLibro(idcliente, idlibro, fecha, hora) values('$idcliente', '$idlibroo', '$formato_fecha', '$formato_hora');";

$consultaEjecutada = mysqli_query($con, $consulta);


if ($consultaEjecutada) {

    header('Location: pantallaPrincipal.php');
} else {
    header('Location: pantallaCompra.php');
}
?>
