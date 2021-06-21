<?php
switch($_SERVER["REQUEST_METHOD"]){
    case 'GET':
        echo "Obtener un registro o todos los registros";
        break;
    case 'POST':
        echo "Crea un registro";
        break;
    case 'PUT':
        echo "Actualiza un registro";
        break;
    case 'DELETE':
        echo "Borra un registro";
        break;
} 