<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
		require_once ('../../../php/conexion.php');
		require_once ('../../../php/crud.php');
		// Mezclar código PHP y HTML.

		echo '<select name="parte_comp" id="parte_comp"';

			$model = new Crud;
			$model->select= "id_partecomp,descripcion";
			$model->from= 't_partecomp';
			$model->orderby= 'descripcion';
			$model->condition='';
			$model->Read();
			$filas = $model->rows;

			foreach ($filas as $reg)
			{
				echo '<option value ="'.$reg['id_partecomp'].'">'.$reg['descripcion'].'</option>';
			}

		echo '</select>';
}

?>
