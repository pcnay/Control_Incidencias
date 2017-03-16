<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{

		include('../../php/conexion.php');
		require_once('../../php/crud.php');
		//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Deptos" y "php"


		$id_depto = $_POST['id'];

		//OBTENEMOS LOS VALORES DEL PRODUCTO
			$model = new Crud;
			// Se realizan las consultas Multiples JOIN.
			$model->select = "t_departamento.id_depto,t_departamento.nombre,t_departamento.horario,t_departamento.ubicacion,t_departamento.gerencia_id_gerencia,t_gerencia.nombre AS nombre_depto";
			$model->from = 't_departamento INNER JOIN t_gerencia ON t_departamento.gerencia_id_gerencia = t_gerencia.id_gerencia';
			$model->condition = "id_depto=".$id_depto;
			$model->orderby = 't_departamento.nombre';
			$model->Read();
			$filas = $model->rows;

			foreach ($filas as $fila)
				{
					$datos = array(
						0 =>$fila['id_depto'],
						1 =>$fila['nombre'],
						2 =>$fila['horario'],
						3 =>$fila['ubicacion'],
						4 =>$fila['gerencia_id_gerencia'],
						5 =>$fila['nombre_depto'],
						);
				};

		echo json_encode($datos);

	}
}

?>
