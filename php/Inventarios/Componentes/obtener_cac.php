<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
		require_once ('../../../php/conexion.php');
		require_once ('../../../php/crud.php');
		// Mezclar código PHP y HTML.

		echo '<select name="nombre_cac" id="nombre_cac"';

			$model = new Crud;
			$model->select= "id_depto,nombre";
			$model->from= 't_departamento';
			$model->orderby= 'nombre';
			$model->condition='';
			$model->Read();
			$filas = $model->rows;

			foreach ($filas as $reg)
			{
				echo '<option value ="'.$reg['id_depto'].'">'.$reg['nombre'].'</option>';
			}

		echo '</select>';

}

?>
