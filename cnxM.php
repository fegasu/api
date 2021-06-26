<?php
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
    