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
		$id_modelo = addslashes($_POST['id_modelo']);
		$proceso = $_POST['pro'];
		$nombre_modelo = addslashes($_POST['nombre_modelo']);
		$procesador = addslashes($_POST['procesador']);
		$velocidad = addslashes($_POST['velocidad']);
		$memoria = addslashes($_POST['memoria']);
		$disco_duro = addslashes($_POST['disco_duro']);
		switch($proceso)
			{
				case 'Registro':
					$model = new Crud;
					$model->insertInto = 't_modelo';
					$model->insertColumns = 'descripcion,procesador,velocidad,memoria,disco_duro';
					$model->insertValues = "'$nombre_modelo','$procesador','$velocidad','$memoria','$disco_duro'";
					$model->Create();
				break;

				case 'Edicion':
					$model = new Crud;
					$model->update = "t_modelo";
					$model->set = "descripcion='$nombre_modelo',procesador='$procesador',velocidad='$velocidad',memoria='$memoria',disco_duro='$disco_duro'";
					$model->condition = "id_modelo='$id_modelo'";
					$model->Update();
				break;
			}


		//ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS

			$mostrar = new Desplegar_tabla;
			$mostrar->nombre_tabla = 't_modelo';
			$mostrar->buscar_cadena = false;
	    $mostrar->texto_buscar = '';
			$mostrar->Mostrar_contenido();
	}
	
}

?>
