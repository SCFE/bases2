<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="../public/bootstrap/dist/css/bootstrap.css">
    <title>Pruebas</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
</head>
<body>

   <div class='container' style="position:relative; top: 250px;  width: 400px; height: 200px;">
   <form action='recibe.php' method='POST'>
 <!--nombre-->
 <div class="form-group">
    <label for="exampleNombre">Nombre</label>
    <input type="hidde" class="form-control" id="exampleNombre" aria-describedby="emailHelp" name='nombre' placeholder="Ingrese su nombre">
  </div>
 <!--apellido-->
 <div class="form-group">
    <label for="exampleApellido">Apellido</label>
    <input type="hidde" class="form-control" id="exampleApellido" aria-describedby="emailHelp" name='apellido' placeholder="Ingrese su apellido">
  </div>  
 <!--correo-->
  <div class="form-group">
    <label for="exampleInputEmail1">Direccion email</label>
    <input type="hidde" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name='correo' placeholder="Ingrese su email">
  </div>
  <!--contraseña-->
  <div class="form-group">
    <label for="exampleInputPassword1">Contraseña</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name='contraseña' placeholder="Contraseña">
  </div>
  <!--boton-->
  <button type="submit" class="btn btn-primary">Enviar</button>
</form>
    </div>
  
 <script src="../public/bootstrap/dist/js/bootstrap.js"></script>  
</body>
</html>