<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{
		include('../../../php/conexion.php');
		require_once('../../../php/crud.php');
		//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Deptos" y "php"

		$id_modelo = $_POST['id'];

		//OBTENEMOS LOS VALORES DEL PRODUCTO
		$model = new Crud;
		// Se realizan las consultas Multiples JOIN.
		$model->select = "id_modelo,descripcion,procesador,velocidad,memoria,disco_duro";
		$model->from = 't_modelo';
		$model->condition = "id_modelo=".$id_modelo;
		$model->orderby = 'descripcion';
		$model->Read();
		$filas = $model->rows;

		foreach ($filas as $fila)
			{
				$datos = array(
					0 =>$fila['id_modelo'],
					1 =>$fila['descripcion'],
					2 =>$fila['procesador'],
					3 =>$fila['velocidad'],
					4 =>$fila['memoria'],
					5 =>$fila['disco_duro'],
					);
			};

		echo json_encode($datos);

	}
}

?>
