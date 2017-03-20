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
		$id_especif_cpu = addslashes($_POST['id_especif']);
		$proceso = $_POST['pro'];
		$procesador = addslashes($_POST['nombre_proc']);
		$velocidad = addslashes($_POST['velocidad']);
		$memoria = addslashes($_POST['capac_memoria']);
		$disco_duro = addslashes($_POST['disco_duro']);


		switch($proceso)
			{
				case 'Registro':
					$model = new Crud;
					$model->insertInto = 't_espef_cpu';
					$model->insertColumns = 'procesador,velocidad,memoria,disco_duro';
					$model->insertValues = "'$procesador','$velocidad','$memoria','$disco_duro'";
					$model->Create();
				break;

				case 'Edicion':
					$model = new Crud;
					$model->update = "t_espef_cpu";
					$model->set = "procesador='$procesador',velocidad='$velocidad',memoria='$memoria',disco_duro='$disco_duro'";
					$model->condition = "id_espef_cpu='$id_especif_cpu'";
					$model->Update();
				break;
			}


		//ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS

			$mostrar = new Desplegar_tabla;
			$mostrar->nombre_tabla = 't_espef_cpu';
			$mostrar->buscar_cadena = false;
	    $mostrar->texto_buscar = '';
			$mostrar->Mostrar_contenido();
	}
}

?>
