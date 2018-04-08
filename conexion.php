<?php

$serverName = 'DESKTOP-QFF34H1\SQLExpress';

$stringConnection = array('Database'=>'prueba', 'UID'=>'SA', 'PWD'=>'Edgar*7319');

$connection = sqlsrv_connect($serverName, $stringConnection);

if($connection)
{
    echo 'Conexion exitosa';
}
else
{
    echo 'Oh oh algo asi lado mal';
    die(print_r(sqlsrv_errors(), true));

}

?>