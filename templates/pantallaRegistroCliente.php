<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesion</title>
</head>

<body>

    <form action="validaRegistroCliente.php" method="POST">
        <fieldset>
            <legend>
                Formulario de ingreso
            </legend>
            <div>
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
                <div>
                    <input type="submit" value="Enviar">
                </div>
            </div>
        </fieldset>
    </form>

</body>

</html>