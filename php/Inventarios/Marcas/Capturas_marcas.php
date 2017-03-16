<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{

		require_once("../../../php/conexion.php");
		require_once("../../../php/crud.php");

		//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Deptos" y "php"
		// addslashes = Prepara la cadena para ser grabada en la base de datos.
		$id_marcas = addslashes($_POST['id_marcas']);
		$proceso = $_POST['pro'];
		$nombre_marcas = addslashes($_POST['nombre_marcas']);

		switch($proceso)
			{
				case 'Registro':
					$model = new Crud;
					$model->insertInto = 't_marca';
					$model->insertColumns = 'descripcion';
					$model->insertValues = "'$nombre_marcas'";
					$model->Create();
				break;

				case 'Edicion':
					$model = new Crud;
					$model->update = "t_marca";
					$model->set = "descripcion='$nombre_marcas'";
					$model->condition = "id_marca='$id_marcas'";
					$model->Update();
				break;
			}


		//ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS

			$mostrar = new Desplegar_tabla;
			$mostrar->nombre_tabla = 't_marca';
			$mostrar->buscar_cadena = false;
	    $mostrar->texto_buscar = '';
			$mostrar->Mostrar_contenido();
	}
}

?>
