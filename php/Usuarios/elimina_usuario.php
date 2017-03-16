<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{

		include('../../php/conexion.php');
		require_once('../../php/crud.php');

		//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Deptos" y "php"

		$id_usuario = $_POST['id'];


		//ELIMINAMOS EL PRODUCTO
		$model = new Crud;
		$model->deleteFrom = "t_usuarios";
		$model->condition = "id_usuario='$id_usuario'";
		$model->Delete();

		//ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS
		$mostrar = new Desplegar_tabla;
		$mostrar->nombre_tabla = 't_usuarios';
		$mostrar->buscar_cadena = false;
    $mostrar->texto_buscar = '';
		$mostrar->Mostrar_contenido();
	}
}
		  
?>
