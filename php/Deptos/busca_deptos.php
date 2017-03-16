<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{

		include('../../php/conexion.php');
		require_once('../../php/crud.php');


		$dato = $_POST['dato'];


		//OBTENEMOS LOS VALORES DEL PRODUCTO
			$model = new Crud;
			// Se realizan las consultas Multiples JOIN.
			$model->select = "t_departamento.id_depto,t_departamento.nombre,t_departamento.horario,t_departamento.ubicacion,t_departamento.gerencia_id_gerencia,t_gerencia.nombre AS nombre_depto";
			$model->from = 't_departamento INNER JOIN t_gerencia ON t_departamento.gerencia_id_gerencia = t_gerencia.id_gerencia';
			//$model->condition = "t_departamento.nombre LIKE '%$dato%'";
			$model->condition = "t_departamento.nombre LIKE '%$dato%'";
			$model->orderby = 't_departamento.nombre';
			$model->Read();
			$filas = $model->rows;
			$total = count($filas);

			if ($total >0)
			{
		        //ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS
				$mostrar = new Desplegar_tabla;
		    $mostrar->nombre_tabla = 't_departamento';
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
