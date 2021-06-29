<?php
//Conexion a base de datos Sqlite
class DbS
    {
        private static $instance=NULL;
        public static $Bd;
        private function __construct(){}
        
        
        private function __clone(){}
        
        public static function getConnect($Bd){
            if (!isset(self::$instance)) {
                $pdo_options[PDO::ATTR_ERRMODE]=PDO::ERRMODE_EXCEPTION;
                self::$instance= new PDO('sqlite:'.$Bd);
                self::$instance->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                self::$instance->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
            }
            return self::$instance;
        }
    }
class CSqlite{
    private static $e;
    private function __construct(){}
    public function DameJSON($db,$sql){
        $t=$db->prepare($sql);
        $t->execute();
        $e = $t->fetchAll(PDO::FETCH_OBJ);
        return json_encode($e);
    }
    public function Dame($db,$sql){
        $t=$db->prepare($sql);
        $t->execute();
        self::$e = $t->fetchAll(PDO::FETCH_OBJ);
        return (self::$e);
    }
 
}

class BDCnx{
var $Cnx;
var $Rs;
var $u;
public $numcols;
var $filas=0;


 function __construct($Bd="./SALUD.db"){
 try {
    $this->Cnx= new PDO('sqlite:'.$Bd);
  } catch (Exception $e) {die ($e);}
 }

 function Ejecutar($Sentencia){
  try{
   $this->Rs = $this->Cnx->prepare($Sentencia.';') or die(SQLITE_ERROR.' '.$Sentencia);
   $this->Rs->execute();
   $this->numcols=$this->Rs->columnCount();
   $this->filas=$this->Rs->rowCount();

   }catch (Exception $e){ die($e);}
 }

   function EjecutarJSON($Sentencia){
      $this->Rs = $this->Cnx->query($Sentencia,PDO::FETCH_OBJ);
      return json_encode($this->Rs);
  }

 function CargarJSON(){
       $rawdata = array();
       foreach ($this->Rs as $row) {
               $rawdata[] = $row;
             }
             return json_encode($rawdata);
   }

 function CargarCSV($sentencia){
    $this->Ejecutar($sentencia);
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
       foreach ($this->Rs as $row) {
               $rawdata[] = $row;
             }
             return $rawdata;
   }


 function Cargar(){
  $this->u = $this->Rs->fetch();
  return ($this->u );
 }


 function getdato($col){
  //$a=$this->Rs->fetchColumn($col);
  $a=$this->u[$col];
  return $a;
 }
}



?>
