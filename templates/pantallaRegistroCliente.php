<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesion</title>

    <style>
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

    <form action="validaRegistroCliente.php" method="POST" class="form">
        <fieldset class="fieldset">
            <legend>
                Formulario de registro
            </legend>
            <div class="campos">
                <div>
                    <label>Nombre: </label>
                    <input type="text" placeholder="ingresa tu nombre" name="nombre">
                </div>
                <div>
                    <label>apellido</label>
                    <input type="text" placeholder="ingresa tu apellido" name="apellido">
                </div>
                <div>
                    <label>telefono</label>
                    <input type="text" placeholder="ingresa tu telefono" name="telefono">
                </div>
                <div>
                    <label>direccion</label>
                    <input type="text" placeholder="ingresa tu direccion" name="direccion">
                </div>
                <div class="botones">
                    <input class="btn btn_morado" type="submit" value="Enviar">
                </div>
            </div>
        </fieldset>
    </form>

</body>

</html>