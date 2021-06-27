



<?php
    class Db
    {
        private static $instance=NULL;
        
        private function __construct(){}

        private function __clone(){}
        
        public static function getConnect(){
            if (!isset(self::$instance)) {
                $pdo_options[PDO::ATTR_ERRMODE]=PDO::ERRMODE_EXCEPTION;
                self::$instance= new PDO('mysql:host=localhost;dbname=salud','root','',$pdo_options);
            }
            return self::$instance;
        }
    }

class DbS
    {
        private static $instance=NULL;
        public static $Bd;
        private function __construct(){}
        
        
        private function __clone(){}
        
        public static function getConnect($Bd){
            if (!isset(self::$instance)) {
                $pdo_options[PDO::ATTR_ERRMODE]=PDO::ERRMODE_EXCEPTION;
                //self::$instance= new PDO('mysql:host=localhost;dbname=salud','root','',$pdo_options);
                self::$instance= new PDO('sqlite:'.$Bd);
                self::$instance->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                self::$instance->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
            }
            return self::$instance;
        }
    }
class CSqlite{
    private $cn;
    private function __construct(){}
    public function DameJSON($db,$sql){
        $t=$db->prepare("SELECT * FROM EPS");
        $t->execute();
        $e = $t->fetchAll(PDO::FETCH_OBJ);
        return json_encode($e);
    }
    public function Dame($db,$sql){
        $t=$db->prepare("SELECT * FROM EPS");
        $t->execute();
        $e = $t->fetchAll(PDO::FETCH_OBJ);
        return ($e);
    }
}
 
class BDCnx{
 var $f;
 var $t;
 var $e;
 public $numcols;
var $filas=0;

function __construct($bd="salud"){
 $this->f=mysqli_connect("","root","","salud");
 //mysqli_select_db($this->f,$bd);
}

function Ejecutar($sentencia){
   $this->t=mysqli_query($this->f,$sentencia);   
}
function EjecutarJSON($sentencia){
      $this->t=mysqli_query($this->f,$sentencia);
      return json_encode($this->t);
  }

function CargarJSON(){
       $rawdata = array();
       foreach ($this->t as $row) {
               $rawdata[] = $row;
             }
             return json_encode($rawdata);
}
 function CargarCSV($sentencia){
    $this->Ejecutar($sentencia);
    $this->numcols=$this->t->field_count;
    $this->filas=mysqli_num_fields($this->t);

    $a="";
    $j=0;
    while($si=$this->Cargar()){
        for($i=0; $i<$this->numcols;$i++){
            $a.=$this->getdato($i);
            if($i<$this->numcols-1)
            $a.=",";   
        } 
        if(!$si)
            $a.="";
        else
            $a.="|";
    }
        return $a;
    }
function CargarArray(){
       $rawdata = array();
       foreach ($this->t as $row) {
               $rawdata[] = $row;
             }
             return $rawdata;
   }



 function Cargar(){
 return($this->e=mysqli_fetch_array($this->t,MYSQLI_NUM));
}

function getdato($col){
   return $this->e[$col];
}
    function Datos($col){
	    //die(chr(34).$col.chr(34));
        return ($this->e["$col"]);
    }

}
    