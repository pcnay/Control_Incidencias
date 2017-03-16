<?php
include('../../php/conexion.php');
require_once('../../php/crud.php');


$dato = $_POST['dato'];


//OBTENEMOS LOS VALORES DEL PRODUCTO
	$model = new Crud;
	// Se realizan las consultas Multiples JOIN.
	$model->select = "IP,Inventario_g,Marca_g,Modelo_g,Serie_g,Posicion,Ubicacion";
	$model->from = 't_inventario_temporal';
	
//$model->condition = "Serie_g LIKE '%$dato%' OR Inventario_g LIKE '%$dato%' OR IP LIKE '%$dato%' OR Ubicacion LIKE '%dato%' ";
	$model->condition = "Serie_g LIKE '%$dato%' OR Inventario_g LIKE '%$dato%' OR IP LIKE '%$dato%' OR Ubicacion LIKE '%$dato%'";
	$model->orderby = '';
	$model->Read();
	
	$filas = $model->rows;
	$total = count($filas);

	if ($total >0)
	{
        //ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS
		$mostrar = new Desplegar_tabla;
    $mostrar->nombre_tabla = 't_inventario_temporal';
    $mostrar->buscar_cadena = true;
    $mostrar->texto_buscar = $dato;
    $mostrar->Mostrar_contenido();
	}
	else
	{
		echo '<tr>
					<td colspan="6">No se encontraron resultados</td>
				</tr>';
	}

?>
