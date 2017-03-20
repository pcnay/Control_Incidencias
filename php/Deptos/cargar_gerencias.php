<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
		require_once("../../php/conexion.php");
		require_once("../../php/Crud.php");


		$model = new Crud;
		$model->select = "*";
		$model->from = 't_gerencia';
		$model->orderby = 'nombre';
		$model->Read();
		$filas = $model->rows;

		foreach ($filas as $reg)
		{
			echo '<option value ="'.$reg['id_gerencia'].'">'.$reg['nombre'].'</option>';
		}

}


?>
