<?php

  
    include('funciones.php');

    $idlibro = $_GET['idlibro'];
   // $libroSeleccionado = consultaLibroPorId($idlibro);
    //echo var_dump(consultaLibroPorId($idlibro));

    $libro = consultaLibroPorId($idlibro);
    

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Libro</title>
    <style>
        .main{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;  
        }
    </style>
</head>
<body>

    <main class="main" style="max-width: 80%; margin: 0 auto;">
        <div class="">
                 <?php 
                    echo "<img src='../img/libro".$libro['idlibro'].".jpg' alt='portada libro'>"
                    ?>
         
        </div>
        <div>
            <p>Titulo: <?php echo $libro['nombrelibro']; ?> 
            <p>Descripcion: <?php echo $libro['descripcion']; ?> 
            <p>Precio: <?php echo $libro['precio']; ?> 
            
            <?php
               echo "<a class='boton' href='validaFormularioDeCompra.php?idlibro=$idlibro&idcliente=2'>Confirmar compra</a>";
            ?>

        </p>
        </div>
    </main>
    
</body>
</html>