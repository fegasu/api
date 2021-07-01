<?php
/**************************************************
 * Esta funcion permite comunicarme con la API-REST
 * Autor: Jose Fernando Galindo Suarez
 * $data: es el arreglo que se le pasa a la api
 * $url: Lugar donde se encuentra la api
 * $metodo: GET, POST, PUT, DELETE
 * ************************************************/
function CnxCurl(array $data,$url, $metodo){
	$data_json=json_encode($data);
	$ch=curl_init();
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, $metodo);
	curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json','Content-Length:'.strlen($data_json)));
	curl_setopt($ch, CURLOPT_POSTFIELDS, $data_json);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	$response=curl_exec($ch);
	curl_close($ch);
	print_r($response);
}
?>