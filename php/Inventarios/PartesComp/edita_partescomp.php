<?php
include('../../../php/conexion.php');
require_once('../../../php/crud.php');
//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Deptos" y "php"

$id_partecomp = $_POST['id'];

//OBTENEMOS LOS VALORES DEL PRODUCTO
	$model = new Crud;
	$model->select = "id_partecomp,descripcion";
	$model->from = 't_partecomp';
	$model->condition = "id_partecomp=".$id_partecomp; 
	$model->orderby = 'descripcion';
	$model->Read();
	$filas = $model->rows;

	foreach ($filas as $fila)
		{
			$datos = array(
				0 =>$fila['id_partecomp'],
				1 =>$fila['descripcion'],
				);
		};
				
echo json_encode($datos);
?>  
