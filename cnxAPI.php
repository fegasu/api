<?php
function CnxAPI($purl,$peticion,$opcion,$parte){
	$aux=str_replace(" ", "+", $parte);
    $url="http://".$_SERVER["SERVER_NAME"]."/".$purl."/".$peticion."/".$opcion."/".$aux;
    $a=file_get_contents($url);
    if($opcion==0 & $parte>0)
     $a=file_get_contents($url);    
    return $a;
}
