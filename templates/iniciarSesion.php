<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesion</title>
</head>

<body>

    <form action="validarInicioSesion.php" method="POST">
        <fieldset>
            <legend>
                Formulario de ingreso
            </legend>
            <div>
                <div>
                    <label>Usuario: </label>
                    <input type="text" placeholder="ingresa tu usuario" name="nombreUsuario">
                </div>
                <div>
                    <label>Clave: </label>
                    <input type="password" placeholder="ingresa tu clave" name="clave">
                </div>
                <div>
                    <input type="submit" value="Enviar">
                </div>
            </div>
        </fieldset>
    </form>

</body>

</html>