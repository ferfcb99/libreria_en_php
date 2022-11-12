<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesion</title>
</head>

<body>

    <form action="validaRegistroUsuario.php" method="POST">
        <fieldset>
            <legend>
                Formulario de ingreso
            </legend>
            <div>
                <div>
                    <label>Nombre de usuario: </label>
                    <input type="text" placeholder="ingresa tu usuario" name="usuario">
                </div>
                <div>
                    <label>clave</label>
                    <input type="text" placeholder="ingresa tu clave" name="clave">
                </div>
                
                <div>
                    <input type="submit" value="Enviar">
                </div>
            </div>
        </fieldset>
    </form>

</body>

</html>