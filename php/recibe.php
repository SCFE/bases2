<?php
//include('conexion.php');
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$correo = $_POST['correo'];
$contraseña = $_POST['contraseña'];

$serverName = 'DESKTOP-QFF34H1\SQLExpress';

$stringConnection = array('Database'=>'prueba', 'UID'=>'SA', 'PWD'=>'Edgar*7319');

$connection = sqlsrv_connect($serverName, $stringConnection);

if($connection)
{
  
 // echo 'Conexion exitosa';
    $query= "INSERT INTO USUARIO(Nombre, Apellido, Correo, Contrasenia )
    VALUES ('$nombre', '$apellido','$correo','$contraseña')";

$insertar = sqlsrv_prepare($connection, $query);

//verificar

if(sqlsrv_execute($insertar))
{
echo "Se realizo la insercion";
}
else
{
echo "Oh oh parece que hubo un error";
die(print_r(sqlsrv_errors(), true));
}

}
else
{
    echo 'Oh oh algo asi lado mal';
    die(print_r(sqlsrv_errors(), true));

}

/*if(!empty($_POST))
{
    echo "Estos son los datos del formulario: ".$nombre." ".$apellido." ".$correo." ".$contraseña;

    $query= "INSERT INTO USUARIO(Nombre, Apellido, Correo, Contrasenia )
                VALUES ('$nombre', '$apellido','$correo','$contraseña')";
    
    $insertar = sqlsrv_prepare($query);
    
    //verificar
    
    if(sqlsrv_execute($insertar))
    {
        echo "Se realizo la insercion";
    }
    else
    {
        echo "Oh oh parece que hubo un error";
    }

}*/


?>