<?php 
session_start();
$ci= $_SESSION['ci'];
$_SESSION['cid']=$ci;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilos/estilo.css">
    <title>Document</title>
</head>
<body>
    <header style="background-color:<?php echo $_SESSION['color'];?>" >
        <div class="cabecera">

            <div class="header">
                <?php 
                
                echo '<h1>Bienbenido  '.$_SESSION['nombre'].'</h1>';
                ?>
                <img src="img/<?php echo $_SESSION['foto']?>" alt="logo">

            </div>
    </header>
    <main class="cuerpo" style="background-color:<?php echo $_SESSION['color'];?>">
    <form action="controlador.php" method="GET">
    <input type="text" name="cid" value="<?php echo $_SESSION['ci']?>">
        <select name="color" >
               <option  style="background-color:orange" value="orange">ORANGE</option>
                <option  style="background-color:#FA7C92" value="#FA7C92">SALMON</option>
                <option style="background-color:#6EC4DB" value="#6EC4DB">RAIN</option>
                <option style="background-color:#FFF7C0"value="#FFF7C0">BUTTERMILK</option>
                <option style="background-color:#66AB8C" value="#66AB8C">LEAF</option>
        </select>
        <input type="submit" name="cambiar" id="cambiar" value="cambiar de color">
     </form>   
    </main>
    
</body>

</html>