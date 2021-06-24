<?php
<?php
if(!isset($_GET["N"]))
	$N=0;
else
	$N=$_GET["N"];

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
