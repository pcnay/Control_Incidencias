<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{

		include('../../php/conexion.php');
		require_once('../../php/crud.php');


		$dato = $_POST['dato'];


		//OBTENEMOS LOS VALORES DEL USUARIO
			$model = new Crud;
			// Se realizan las consultas Multiples JOIN.
			$model->select = "t_usuarios.id_usuario,t_usuarios.num_usuario,t_usuarios.nombre_emp,t_usuarios.num_tel,t_usuarios.correo_electronico,t_usuarios.t_puesto_id_puesto,t_usuarios.t_departamento_id_depto,t_puesto.nombre AS nombre_puesto,t_departamento.nombre AS nombre_depto";
			$model->from = 't_usuarios INNER JOIN t_puesto ON t_usuarios.t_puesto_id_puesto = t_puesto.id_puesto INNER JOIN t_departamento ON t_usuarios.t_departamento_id_depto = t_departamento.id_depto';
			$model->condition = "nombre_emp LIKE '%$dato%'";
			$model->orderby = '';
			$model->Read();
			$filas = $model->rows;
			$total = count($filas);

			if ($total >0)
			{
		        //ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS
				$mostrar = new Desplegar_tabla;
		    $mostrar->nombre_tabla = 't_usuarios';
		    $mostrar->buscar_cadena = true;
		    $mostrar->texto_buscar = $dato;
		    $mostrar->Mostrar_contenido();
			}
			else
			{
				echo '<tr>
							<td colspan="6">No se encontraron resultados</td>
						</tr>';
			}

	}
}


?>
