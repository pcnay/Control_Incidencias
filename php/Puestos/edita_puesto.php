<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{

		include('../../php/conexion.php');
		require_once('../../php/crud.php');
		//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Deptos" y "php"

		$id_puesto = $_POST['id'];

		//OBTENEMOS LOS VALORES DEL PRODUCTO
			$model = new Crud;
			// Se realizan las consultas Multiples JOIN.
			$model->select = "id_puesto,nombre";
			$model->from = 't_puesto';
			$model->condition = "id_puesto=".$id_puesto;
			$model->orderby = 'nombre';
			$model->Read();
			$filas = $model->rows;

			foreach ($filas as $fila)
				{
					$datos = array(
						0 =>$fila['id_puesto'],
						1 =>$fila['nombre'],
						);
				};

		echo json_encode($datos);
	}
}

?>
