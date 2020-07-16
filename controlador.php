<?php
   
   include_once('conexion.php');
   if(isset($_GET['cambiar']))
   {
        echo $_GET['color'];
        echo $_GET['cid'];
        mysqli_query($con,"update usuarios set color='".$_GET['color']."' where ci='".$_GET['cid']."'");
        
         session_unset();
         header('Location:index.php');
   }else{
     
      $u=$_GET['usuario'];
      echo $u;
      $c=$_GET['clave'];
      echo $c;
        
      $sql= "select * from usuarios where usuario='".$u."' and "."clave='".$c."'";
      $resulbd=mysqli_query($con,$sql);
      $formato=mysqli_fetch_array($resulbd,MYSQLI_ASSOC)  ;
      if($formato){
        //  print_r($formato);
        session_start();
        $color=$formato['color'];
        $sql= "select * from identificador where ci='".$formato['ci']."'";
        $resulbd=mysqli_query($con,$sql);
        $formato=mysqli_fetch_array($resulbd,MYSQLI_ASSOC)  ;
        $_SESSION['nombre']=$formato['nombre_completo'];
        $_SESSION['color']=$color;
        $_SESSION['ci']=$formato['ci'];
        $_SESSION['foto']=$formato['foto'];
        
        //  $_SESSION['c']=$c;
        header("Location:logueado.php");
      }
      else {
        echo "dato no encontrado";
        header('Location:index.php');
      }
  }
   /*

   if( $u=="juan" && $c=="juan"){
     echo "estas registrado";
     header('Location:login.php');

   }
   else 
     echo "no estas registrado";
    */
?>