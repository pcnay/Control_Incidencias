<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	require_once("../../../php/conexion.php");
	require_once("../../../php/Crud.php");


	$model = new Crud;
	$model->select = "id_espef_cpu,procesador";
	$model->from = 't_espef_cpu';
	$model->orderby = 'procesador';
	$model->Read();
	$filas = $model->rows;

	foreach ($filas as $reg)
	{
		echo '<option value ="'.$reg['id_espef_cpu'].'">'.$reg['procesador'].'</option>';
	}

}

?>
