<?php
include "cnxMysql.php";
$cn=new DBMysql();
//$cn->Ejecutar("select * from eps");
//while($cn->Cargar())
//	echo $cn->getdato(1)."<br>";
//$cn->EjecutarJSON("select * from eps");
//echo $cn->CargarJSON();
//echo  $cn->CargarCSV("select * from eps");
//$cn->Ejecutar("select * from eps");
//print_r( $cn->CargarArray());
//$cn->Ejecutar("CALL PREPS('I',null,'ELEFANTE',1)");
//$cn=new DBMysql();
//$cn->Ejecutar("CALL PREPS('U',22,'PERRO',2)");
//$cn=new DBMysql();
//$cn->Ejecutar("CALL PREPS('D',16,null,null)");
//$cn=new DBMysql();
$cn->Ejecutar("CALL PREPS('A',null,null,null)");
while($cn->Cargar())
	echo $cn->getdato(1)."<br>";


