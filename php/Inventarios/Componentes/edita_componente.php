<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{

		include('../../../php/conexion.php');
		require_once('../../../php/crud.php');
		//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Deptos" y "php"


		$id_componente_comp = $_POST['id'];

							$model = new Crud;
							$model->select = "id_componente_comp,nomenclatura,ip,serial,num_inventario,posicion,t_usuarios_id_usuario,t_partecomp_id_partecomp,t_marca_id_marca,t_modelo_id_modelo";
							$model->from = 't_componente_comp';
							$model->condition = "id_componente_comp=".$id_componente_comp;
							$model->orderby = '';
							$model->Read();
							$filas = $model->rows;

			foreach ($filas as $fila)
				{
					$datos = array(
						0 =>$fila['id_componente_comp'],
						1 =>$fila['nomenclatura'],
						2 =>$fila['ip'],
						3 =>$fila['serial'],
						4 =>$fila['num_inventario'],
						5 =>$fila['posicion'],
						6 =>$fila['t_usuarios_id_usuario'],
						7 =>$fila['t_partecomp_id_partecomp'],
						8 =>$fila['t_marca_id_marca'],
						9 =>$fila['t_modelo_id_modelo'],
						);
				};

		echo json_encode($datos);
		
	}
}
?>
