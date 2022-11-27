<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteca</title>
    <style>
        .libro {
            display: flex;
            flex-direction: column;
        }

        .datos div {
            display: flex;
            gap: 6rem;
        }

        .header {
            display: flex;
            padding: 3rem 3rem;
            justify-content: space-between;
        }

        .boton {
            background-color: #FFA1CF;
            padding: 0.7rem 1rem;
            border-radius: 10px;
            color: white;
            text-decoration: none;
            border: 1px solid #FFA1CF;
        }

        .boton:hover {
            border: 1px solid #FFA1CF;
            background-color: white;
            color: black;
            transition: 0.6s ease;
        }
        img{
            max-width: 100%;
        }

        .header{
            padding: 2rem;
            border: 2px solid #8D9EFF;
            margin: 0 0 25px 0;
        }

        .contacto a{
            text-decoration: none;
            border: 1px solid white;
            padding: 5px;
        }

        .contacto a:hover{
            border: 1px solid #FFA1CF;
            border-radius: 10px;
            padding: 5px;
        }

        .contacto{
            display: flex;
            flex-direction: row;
            gap: 3rem;
        }

        .header{
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo{
            height: 150px;
            width: 150px;
        }
        .libroindividual{
            height: 620px;
            width: 360px;
        }

    </style>
    ¿<?php
     echo '<script type="text/javascript">';
     echo 'alert("Compra exitosa")';  
     echo '</script>';
     ?>
</head>

<body>

    <header class="header">
        <div class="logo">
            <img src="../img/logo.png" alt="">
        </div>
        <div class="contacto">
            <a href="www.facebook.com">Contacto</a>
            <a href="iniciarSesion.php">Cerrar Sesion</a>
        </div>
    </header>
    <main>
        <div style="max-width: 80%; margin: 0 auto; display: grid; grid-template-columns: repeat(3, 1fr); 
                    row-gap: 3rem; column-gap: 2rem;">
            <?php
    
            include('funciones.php');
            $con = conectar();
            $consulta = "select * from libro";
            $datos = mysqli_query($con, $consulta);
            $urlImagen = "../img/libro";
            ?>
            <?php while ($fila = mysqli_fetch_array($datos)) { ?>
                <div class="libro">
                    <?php 
                    echo "<img class='libroindividual' src='../img/libro ".$fila['idlibro'].".jpg' alt='portada libro'>"
                    ?>
                    <div class="datos">
                        <p><?php echo $fila['nombrelibro']; ?></p>
                        <p><?php echo $fila['descripcion']; ?></p>
                        <div>
                            <p>$<?php echo $fila['precio']; ?> Pesos.</p>
                            <p><?php echo $fila['autor']; ?></p>
                        </div>
                    </div>
                    <div>
                        <?php
                            $idlibro = $fila['idlibro'];
                            echo " <a class='boton' href='pantallaCompra.php?idlibro=$idlibro'>Comprar</a>";
                           
                        ?>
                        
                       
                    </div>
                </div>
            <?php  } ?>

        </div>
    </main>

    <footer>

    </footer>

</body>

</html>