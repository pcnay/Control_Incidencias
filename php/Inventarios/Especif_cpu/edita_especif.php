<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{

	include('../../../php/conexion.php');
	require_once('../../../php/crud.php');
	//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Especif" y "php"

	$id_espef_cpu = $_POST['id'];

	//OBTENEMOS LOS VALORES DEL PRODUCTO
		$model = new Crud;
		$model->select = "id_espef_cpu,procesador,velocidad,memoria,disco_duro";
		$model->from = 't_espef_cpu';
		$model->condition = "id_espef_cpu=".$id_espef_cpu;
		$model->orderby = 'procesador';
		$model->Read();
		$filas = $model->rows;

		foreach ($filas as $fila)
			{
				$datos = array(
					0 =>$fila['id_espef_cpu'],
					1 =>$fila['procesador'],
					2 =>$fila['velocidad'],
					3 =>$fila['memoria'],
					4 =>$fila['disco_duro'],
					);
			};

	echo json_encode($datos);
	}
}

?>
