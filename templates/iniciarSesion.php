<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesion</title>
    <style>
      
      body{
      }
        .form{
           display: flex;
           min-height: 100vh;
           justify-content: center;
           align-items: center;
        }

        .fieldset{
            padding: 30px;
            border-radius: 10px;
        }
        .campos{
            display: flex;
            flex-direction: column;
            gap: 25px;
        }

        .campo{
            display: flex;
            justify-content: space-between;
            gap: 5px;
            align-items: center;
        }

        input[type="text"],
        input[type="password"]{
            padding: 0.5rem;
            border: 1px solid #e1e1e1;
            border-radius: 10px;
        }

        .btn{
            padding: 0.5rem;
            border-radius: 10px;
            border: 1px solid #8D72E1;
            text-decoration: none;
        }

        .btn_morado{
            background-color: #8D72E1;
        }

        .btn:hover{
            cursor: pointer;
            border: 1px solid #8D72E1;
            background-color: white;
            transition: 1s ease;
        }
        .botones{
            display: flex;
            justify-content: space-between;
        }

    </style>
</head>

<body>

    <form action="validarInicioSesion.php" method="POST" class="form">
        <fieldset class="fieldset">
            <legend class="legend">
                Formulario de ingreso
            </legend>
            <div class="campos">
                <div class="campo">
                    <label>Usuario: </label>
                    <input type="text" placeholder="ingresa tu usuario" name="nombreUsuario">
                </div>
                <div class="campo">
                    <label>Clave: </label>
                    <input type="password" placeholder="ingresa tu clave" name="clave">
                </div>
                <div class="botones">
                    <input class="btn btn_morado" type="submit" value="Enviar">
                    <a class="btn btn_morado" href="pantallaRegistroCliente.php">Registrate</a>
                </div>

            </div>
        </fieldset>
    </form>

</body>

</html>