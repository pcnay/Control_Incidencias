
<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{
		include('../../../php/conexion.php');
		require_once('../../../php/crud.php');

		//  cada ../ es una carpeta que sube, en este caso son tres carpetas "Especifaciones" y "php"

		$id_especif_cpu = $_POST['id'];

		//ELIMINAMOS EL PRODUCTO
		$model = new Crud;
		$model->deleteFrom = "t_espef_cpu";
		$model->condition = "id_espef_cpu='$id_especif_cpu'";
		$model->Delete();

		//ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS
		$mostrar = new Desplegar_tabla;
		$mostrar->nombre_tabla = 't_espef_cpu';
		$mostrar->buscar_cadena = false;
    $mostrar->texto_buscar = '';
		$mostrar->Mostrar_contenido();
  }
}

?>
