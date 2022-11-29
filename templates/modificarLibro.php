<?php

    
    include('funciones.php');
    $idlibro = $_GET['idlibro'];
    
    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifica libro</title>

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

        .boton-rojo{
            background-color: #E0144C;
            padding: 0.7rem 1rem;
            border-radius: 10px;
            color: white;
            text-decoration: none;
            border: 1px solid #E0144C;
        }

        .boton-rojo:hover {
            border: 1px solid #E0144C;
            background-color: white;
            color: black;
            transition: 0.6s ease;
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

        .ordenaBotones{
            display: flex;
            gap: 30px;
        }
    </style>
</head>
<body>
<form action="validaModificacionLibro.php" method="POST" class="form">
        <fieldset class="fieldset">
            <legend class="legend">
                Formulario de Modificacion de libro
            </legend>
            <div class="campos">
                 <div class="campo">
                    <label>Identificador: </label>
                    <?php
                            echo " <input type='number'  name='idlibro' value = '$idlibro'>";
                        ?>

                </div>
                <div class="campo">
                    <label>Nombre de libro: </label>
                    <input type="text" placeholder="Ingresa el nuevo nombre" name="nombrelibro">
                </div>
                <div class="campo">
                    <label>Precio de libro: </label>
                    <input type="number" placeholder="Ingresa el nuevo precio" name="precio">
                </div>
                <div class="botones">
                    <input class="btn btn_morado" type="submit" value="Enviar">
                   
                </div>

            </div>
        </fieldset>
    </form>
</body>
</html>