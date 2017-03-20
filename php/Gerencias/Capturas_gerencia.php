<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{
		require_once("../../php/conexion.php");
		require_once("../../php/crud.php");

		//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Deptos" y "php"
		// addslashes = Prepaara la cadena para ser grabada en la base de datos.
		$id_gerencia = addslashes($_POST['id_gerencia']);
		$proceso = $_POST['pro'];
		$nombre = addslashes($_POST['nombre']);

		switch($proceso)
			{
				case 'Registro':
					$model = new Crud;
					$model->insertInto = 't_gerencia';
					$model->insertColumns = 'nombre';
					$model->insertValues = "'$nombre'";
					$model->Create();
				break;

				case 'Edicion':
					$model = new Crud;
					$model->update = "t_gerencia";
					$model->set = "nombre='$nombre'";
					$model->condition = "id_gerencia='$id_gerencia'";
					$model->Update();
				break;
			}


		//ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS

			$mostrar = new Desplegar_tabla;
			$mostrar->nombre_tabla = 't_gerencia';
			$mostrar->buscar_cadena = false;
	    $mostrar->texto_buscar = '';
			$mostrar->Mostrar_contenido();

		}

}
?>
