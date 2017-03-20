<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{

		include('../../php/conexion.php');
		require_once('../../php/crud.php');
		//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Deptos" y "php"


		$id_usuario = $_POST['id'];

		//OBTENEMOS LOS VALORES DEL PRODUCTO
			$model = new Crud;
			// Se realizan las consultas Multiples JOIN.
			$model->select = "t_usuarios.id_usuario,t_usuarios.usuario_universal,t_usuarios.num_usuario,t_usuarios.nombre_emp,t_usuarios.num_tel,t_usuarios.num_ext,t_usuarios.correo_electronico,t_usuarios.comentarios,t_usuarios.t_puesto_id_puesto,t_usuarios.t_departamento_id_depto,t_puesto.nombre AS nombre_puesto,t_departamento.nombre AS nombre_depto";
			$model->from = 't_usuarios INNER JOIN t_puesto ON t_usuarios.t_puesto_id_puesto = t_puesto.id_puesto INNER JOIN t_departamento ON t_usuarios.t_departamento_id_depto = t_departamento.id_depto';
			$model->condition = "id_usuario=".$id_usuario;
			$model->orderby = 't_usuarios.nombre_emp';
			$model->Read();
			$filas = $model->rows;

			foreach ($filas as $fila)
				{
					$datos = array(
						0 =>$fila['id_usuario'],
						1 =>$fila['usuario_universal'],
						2 =>$fila['num_usuario'],
						3 =>$fila['nombre_emp'],
						4 =>$fila['num_tel'],
						5 =>$fila['num_ext'],
						6 =>$fila['correo_electronico'],
						7 =>$fila['comentarios'],
						8 =>$fila['t_puesto_id_puesto'],
						9 =>$fila['t_departamento_id_depto'],
						);
				};

		echo json_encode($datos);
	}
}

?>
