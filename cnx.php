<?php
class SqlitePDO{
var $Cnx;
var $Rs;
var $u;
 function __construct($Bd="SALUD.db"){
 try {
    $this->Cnx= new PDO('sqlite:'.$Bd);
  } catch (Exception $e) {die ($e);}
 }
 
 function Ejecutar($Sentencia){
  try{
   $this->Rs = $this->Cnx->prepare($Sentencia.';') 
   or die(SQLITE_ERROR.' '.$Sentencia);
   $this->Rs->execute();
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