<?php
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
			$model->select = "id_puesto,nombre";
			$model->from = 't_puesto';
			//$model->condition = "t_departamento.nombre LIKE '%$dato%'";
			$model->condition = "nombre LIKE '%$dato%'";
			$model->orderby = 'nombre';
			$model->Read();
			$filas = $model->rows;
			$total = count($filas);

			if ($total >0)
			{
		        //ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS
				$mostrar = new Desplegar_tabla;
		    $mostrar->nombre_tabla = 't_puesto';
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
