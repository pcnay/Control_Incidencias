<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{

		include('../../../php/conexion.php');
		require_once('../../../php/crud.php');


		$dato = $_POST['dato'];


		//OBTENEMOS LOS VALORES DE LA MARCA
			$model = new Crud;
			$model->select = "id_modelo,descripcion";
			$model->from = 't_modelo';
			$model->condition = "descripcion LIKE '%$dato%'";
			$model->orderby = 'descripcion';
			$model->Read();
			$filas = $model->rows;
			$total = count($filas);

			if ($total >0)
			{
		        //ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS
				$mostrar = new Desplegar_tabla;
		    $mostrar->nombre_tabla = 't_modelo';
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
