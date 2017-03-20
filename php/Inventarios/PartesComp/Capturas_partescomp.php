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
		$id_partecomp = addslashes($_POST['id_partecomp']);
		$proceso = $_POST['pro'];
		$nombre_partecomp = addslashes($_POST['nombre_partecomp']);

		switch($proceso)
			{
				case 'Registro':
					$model = new Crud;
					$model->insertInto = 't_partecomp';
					$model->insertColumns = 'descripcion';
					$model->insertValues = "'$nombre_partecomp'";
					$model->Create();
				break;

				case 'Edicion':
					$model = new Crud;
					$model->update = "t_partecomp";
					$model->set = "descripcion='$nombre_partecomp'";
					$model->condition = "id_partecomp='$id_partecomp'";
					$model->Update();
				break;
			}


		//ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS

			$mostrar = new Desplegar_tabla;
			$mostrar->nombre_tabla = 't_partecomp';
			$mostrar->buscar_cadena = false;
	    $mostrar->texto_buscar = '';
			$mostrar->Mostrar_contenido();
	}
}

?>
