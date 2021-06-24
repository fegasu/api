<?php
if(!isset($_GET["N"]))
	$N=0;
else
	$N=$_GET["N"];
?>
<script type="text/javascript">
function Ir(donde){
      location.href="<?php echo $_SERVER['PHP_SELF']?>?N="+donde;
}
function Ir1(donde,que){
      location.href="<?php echo $_SERVER['PHP_SELF']?>?N="+donde+"&donde="+que;
}
</script>
<button onclick="Ir(1)">Nuevo</button><br>

<?php
function CnxAPI($purl,$peticion,$opcion,$parte){
	$aux=str_replace(" ", "+", $parte);
    $url="http://".$_SERVER["SERVER_NAME"]."/".$purl."/".$peticion."/".$opcion."/".$aux;
    $a=file_get_contents($url);
    if($opcion==0 & $parte>0)
     $a=file_get_contents($url);
    
    return $a;
}
function CSV2ARRAY($cadena){
   $a=array();
   $z=explode("|",$cadena);
   for($i=0;$i<count($z)-1;$i++){
   	//echo $i."->".$z[$i]."<br>";
   	$w=explode(",",$z[$i]);
   	for($j=0;$j<count($w);$j++)
   		$a[$i][]=$w[$j];
   }
   return $a;
}
