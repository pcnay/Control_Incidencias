<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{
		require_once("../../php/conexion.php");
		require_once("../../php/crud.php");

		//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Deptos" y "php"

		$id_depto = addslashes($_POST['id_depto']);
		$proceso = $_POST['pro'];
		$nombre = addslashes($_POST['nombre']);
		$horario = addslashes($_POST['horario']);
		$ubicacion = addslashes($_POST['ubicacion']);
		$id_gerencia = addslashes($_POST['id_gerencia']);

			switch($proceso)
			{
				case 'Registro':
					$model = new Crud;
					$model->insertInto = 't_departamento';
					$model->insertColumns = 'nombre,horario,ubicacion,gerencia_id_gerencia';
					$model->insertValues = "'$nombre','$horario','$ubicacion','$id_gerencia'";
					$model->Create();
				break;

				case 'Edicion':
					$model = new Crud;
					$model->update = "t_departamento";
					$model->set = "nombre='$nombre',horario='$horario',ubicacion='$ubicacion',gerencia_id_gerencia='$id_gerencia'";
					$model->condition = "id_depto='$id_depto'";
					$model->Update();
				break;
			}


		//ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS

			$mostrar = new Desplegar_tabla;
			$mostrar->nombre_tabla = 't_departamento';
			$mostrar->buscar_cadena = false;
	    $mostrar->texto_buscar = '';
			$mostrar->Mostrar_contenido();
	}
	
}

?>
