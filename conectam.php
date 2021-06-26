<?php
include "cnxMysql.php";
$cn=new DBMysql();
//$cn->Ejecutar("select * from eps");
//while($cn->Cargar())
//	echo $cn->getdato(1)."<br>";
//$cn->EjecutarJSON("select * from eps");
//echo $cn->CargarJSON();
//echo  $cn->CargarCSV("select * from eps");
$cn->Ejecutar("select * from eps");
print_r( $cn->CargarArray());


