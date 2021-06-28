<?php
include "cnxS.php";
//$cn=new BDCnx();
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
//$cn->Ejecutar("CALL PREPS('A',null,null,null)");
//$cn->Ejecutar("SELECT * FROM EPS");
//while($cn->Cargar())
//	echo $cn->getdato(1)."<br>";
//$db=Db::getConnect();
//$t=$db->query('SELECT * FROM EPS');

//$t=$db->query("CALL PREPS('A',null,null,null)");
//$e=json_encode($t->fetchAll());
//print_r($e);
//echo $e;
//echo $e[0]["nombre"];
//$db=DbS::getConnect("SALUD_.db");
//$e=CSqlite::Dame($db,"SELECT * FROM EPS");
//for($i=0;$i<count($e);$i++)
//echo $e[$i]->nombre."<br>";	
//print_r( $e);

class eps_controller{
    public  $cn;
	public function __controler($bd){
       $this->cn=$bd;
	}
    function Listar($bd,$sql){
    	$t=$bd->prepare($sql);
        $t->execute();
        $e = $t->fetchAll(PDO::FETCH_BOTH);
       return json_encode($e);
        
    }
    function Editar(stdClass $cual){

    }
    function Insert(){

    }
    function Delete($cual){

    }

}
$db=DbS::getConnect("SALUD_.db");
$x=new eps_controller($db);
print_r( $x->Listar($db,"SELECT  * FROM EPS"));


