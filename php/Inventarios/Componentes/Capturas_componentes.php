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

		$proceso = $_POST['pro'];
		$id_componente_comp = addslashes($_POST['id_componente_comp']);
		$nomenclatura = addslashes($_POST['nomenclatura']);
		$ip = addslashes($_POST['ip']);
		$serial = addslashes($_POST['serial']);
		$inventario = addslashes($_POST['inventario']);
		$posicion = addslashes($_POST['posicion']);
		$id_usuario = addslashes($_POST['id_usuario']);
		$id_componente = addslashes($_POST['id_componente']);
		$id_marca = addslashes($_POST['id_marca']);
		$id_modelo = addslashes($_POST['id_modelo']);
		//$id_especif = addslashes($_POST['id_especif']);

		switch($proceso)
			{
				case 'Registro':
					$model = new Crud;
					$model->insertInto = 't_componente_comp';
					$model->insertColumns = 'nomenclatura,ip,serial,num_inventario,posicion,t_usuarios_id_usuario,t_marca_id_marca,t_modelo_id_modelo,t_partecomp_id_partecomp';
					$model->insertValues = "'$nomenclatura','$ip','$serial','$inventario','$posicion','$id_usuario','$id_marca','$id_modelo','$id_componente'";
					$model->Create();
				break;

				case 'Edicion':
					$model = new Crud;
					$model->update = "t_componente_comp";
					$model->set = "nomenclatura='$nomenclatura' ,ip='$ip',serial='$serial',num_inventario='$inventario',posicion='$posicion',t_usuarios_id_usuario='$id_usuario',t_marca_id_marca='$id_marca',t_modelo_id_modelo='$id_modelo',t_partecomp_id_partecomp='$id_componente'";
					$model->condition = "id_componente_comp='$id_componente_comp'";
					$model->Update();
				break;
			}

		//ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS

			$mostrar = new Desplegar_tabla;
			$mostrar->nombre_tabla = 't_componente_comp';
			$mostrar->buscar_cadena = false;
	    $mostrar->texto_buscar = '';
			$mostrar->Mostrar_contenido();
	}

}

?>
