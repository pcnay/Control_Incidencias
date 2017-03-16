<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	require_once("../../../php/conexion.php");
	require_once("../../../php/Crud.php");


	$model = new Crud;
	$model->select = "id_usuario,nombre_emp";
	$model->from = 't_usuarios';
	$model->orderby = 'nombre_emp';
	$model->Read();
	$filas = $model->rows;

	foreach ($filas as $reg)
	{
		echo '<option value ="'.$reg['id_usuario'].'">'.$reg['nombre_emp'].'</option>';
	}

}
?>
