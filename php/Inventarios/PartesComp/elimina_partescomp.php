<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{
		include('../../../php/conexion.php');
		require_once('../../../php/crud.php');

		//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Marca" y "php"

		$id_partescomp = $_POST['id'];

		//ELIMINAMOS EL PRODUCTO
		$model = new Crud;
		$model->deleteFrom = "t_partecomp";
		$model->condition = "id_partecomp='$id_partescomp'";
		$model->Delete();

		//ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS
		$mostrar = new Desplegar_tabla;
		$mostrar->nombre_tabla = 't_partecomp';
		$mostrar->buscar_cadena = false;
    $mostrar->texto_buscar = '';
		$mostrar->Mostrar_contenido();
		
	}
}

?>
