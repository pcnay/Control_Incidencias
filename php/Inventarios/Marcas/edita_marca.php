<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{

		include('../../../php/conexion.php');
		require_once('../../../php/crud.php');
		//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Deptos" y "php"

		$id_marca = $_POST['id'];

		//OBTENEMOS LOS VALORES DEL PRODUCTO
			$model = new Crud;
			// Se realizan las consultas Multiples JOIN.
			$model->select = "id_marca,descripcion";
			$model->from = 't_marca';
			$model->condition = "id_marca=".$id_marca;
			$model->orderby = 'descripcion';
			$model->Read();
			$filas = $model->rows;

			foreach ($filas as $fila)
				{
					$datos = array(
						0 =>$fila['id_marca'],
						1 =>$fila['descripcion'],
						);
				};

		echo json_encode($datos);
	}
}

?>
