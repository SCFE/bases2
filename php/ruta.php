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
   <form action='recibe_ruta.php' method='POST'>

 <!--correo-->
  <div class="form-group">
    <label for="ruta">Escriba la ruta del archivo</label>
    <input type="hidde" class="form-control" id="ruta" aria-describedby="emailHelp" name='path' placeholder="Ingrese la ruta del archivo">
  </div>
 
  <!--boton-->
  <button type="submit" class="btn btn-primary">Insertar</button>
</form>
    </div>
  
 <script src="../public/bootstrap/dist/js/bootstrap.js"></script>  
</body>
</html>