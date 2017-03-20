<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{

		include('../../../php/conexion.php');
		require_once('../../../php/crud.php');

		$texto_buscar = $_POST['dato'];

		//OBTENEMOS LOS VALORES DE LA MARCA
		$model = new Crud;
		$model->select = "t_componente_comp.id_componente_comp AS id_componente_comp,t_componente_comp.ip AS IP,t_componente_comp.num_inventario AS Inventario,t_marca.descripcion AS Marca,t_modelo.descripcion AS Modelo,t_componente_comp.serial AS Serial,t_componente_comp.posicion AS Posicion,t_usuarios.nombre_emp AS Nombre,t_departamento.nombre AS Ubicacion";
		$model->from = 't_componente_comp INNER JOIN t_marca ON t_componente_comp.t_marca_id_marca = t_marca.id_marca INNER JOIN t_modelo ON t_componente_comp.t_modelo_id_modelo = t_modelo.id_modelo INNER JOIN t_usuarios ON t_componente_comp.t_usuarios_id_usuario = t_usuarios.id_usuario INNER JOIN t_departamento ON t_usuarios.t_departamento_id_depto = t_departamento.id_depto';
		$model->condition = "t_componente_comp.ip LIKE '%$texto_buscar%' OR t_componente_comp.serial LIKE '%$texto_buscar%' OR t_componente_comp.num_inventario LIKE '%$texto_buscar%' OR t_departamento.nombre LIKE '%$texto_buscar%'";
		//$model->condition = "IP LIKE '%$texto_buscar%' OR Serial LIKE '%$texto_buscar%' OR Ubicacion LIKE '%$texto_buscar%'";
		// OR Inventario LIKE '%$texto_buscar%'
		$model->orderby = 'Ubicacion';
		$model->Read();
		$filas = $model->rows;
		$total =count($filas);

			if ($total >0)
			{
		        //ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS
				$mostrar = new Desplegar_tabla;
		    $mostrar->nombre_tabla = 't_componente_comp';
		    $mostrar->buscar_cadena = true;
		    $mostrar->texto_buscar = $texto_buscar;
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
