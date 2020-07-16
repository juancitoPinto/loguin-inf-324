<!-- vamos a ver la parte del fron end  -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="estilos/estilo.css">
    <title>Document</title>
</head>
<body>
  <div class="container">
    <form action="controlador.php" method="GET" >
        <label for="usuario">Usuario</label>
        <input type="text" id="usuario" value="" name="usuario"  >
        <label for="clave">Clave...</label>
        <input type="text" id="clave" name="clave" value="">
        <input type="submit" value="Ingresar">
        <input type="reset" value="borrar">
    </form>

    
  </div>  
</body>
</html>