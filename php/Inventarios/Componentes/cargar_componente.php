<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	require_once("../../../php/conexion.php");
	require_once("../../../php/Crud.php");


	$model = new Crud;
	$model->select = "id_partecomp,descripcion";
	$model->from = 't_partecomp';
	$model->orderby = 'descripcion';
	$model->Read();
	$filas = $model->rows;

	foreach ($filas as $reg)
	{
		echo '<option value ="'.$reg['id_partecomp'].'">'.$reg['descripcion'].'</option>';
	}

}

?>
