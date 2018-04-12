<?php
//include('conexion.php');
//$nombre = $_POST['nombre'];
//$apellido = $_POST['apellido'];
$correo = $_POST['correo'];
$contraseña = $_POST['contraseña'];

$serverName = 'DESKTOP-QFF34H1\SQLExpress';

$stringConnection = array('Database'=>'prueba', 'UID'=>'SA', 'PWD'=>'Edgar*7319');

$connection = sqlsrv_connect($serverName, $stringConnection);

if($connection)
{
  

//$querySelect = "SELECT Nombre FROM PRUEBA WHERE Correo = '$correo'";


 // echo 'Conexion exitosa';
    /*$queryInsert= "INSERT INTO USUARIO(Nombre, Apellido, Correo, Contrasenia )
    VALUES ('$nombre', '$apellido','$correo','$contraseña')";*/
    $querySelect = "SELECT * FROM USUARIO WHERE Correo = '$correo'";

//$buscar = sqlsrv_prepare($connection, $querySelect);
$buscar = sqlsrv_query($connection,$querySelect);

if($buscar === false)
{

    die(print_r(sqlsrv_errors(), true));
}

while( $row = sqlsrv_fetch_array($buscar, SQLSRV_FETCH_NUMERIC))
{
    
    $i = sizeof($row);
    for($j=0; $j<$i; $j++ )
    {
        echo $row[$j].'</br>';
    }
    
}
sqlsrv_free_stmt($buscar);


//verificar
/*
if(sqlsrv_execute($buscar))
{
echo "Se realizo la busqueda";
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

}*/
//De aca para abajo no se a usado
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
}

?>


