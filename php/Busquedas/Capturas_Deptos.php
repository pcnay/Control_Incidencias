<?php
	require_once("../../php/conexion.php");
	require_once("../../php/crud.php");

	//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Deptos" y "php"

	$id_depto = $_POST['id_depto'];
	$proceso = $_POST['pro'];
	$nombre = $_POST['nombre'];
	$horario = $_POST['horario'];	
	$ubicacion = $_POST['ubicacion'];	
	$id_gerencia = $_POST['id_gerencia'];

		switch($proceso)
		{
			case 'Registro':
				$model = new Crud;
				$model->insertInto = 't_departamento';
				$model->insertColumns = 'nombre,horario,ubicacion,gerencia_id_gerencia';
				$model->insertValues = "'$nombre','$horario','$ubicacion','$id_gerencia'";
				$model->Create();
			break;
			
			case 'Edicion':
				$model = new Crud;
				$model->update = "t_departamento";
				$model->set = "nombre='$nombre',horario='$horario',ubicacion='$ubicacion',gerencia_id_gerencia='$id_gerencia'";
				$model->condition = "id_depto='$id_depto'";
				$model->Update();
			break;
		}
			

	//ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS

		$mostrar = new Desplegar_tabla;
		$mostrar->nombre_tabla = 't_departamento';
		$mostrar->buscar_cadena = false;
    $mostrar->texto_buscar = '';		
		$mostrar->Mostrar_contenido();
/*
	$model = new Crud;
	// Se realizan las consultas Multiples JOIN.
	$model->select = "t_departamento.id_depto,t_departamento.nombre,t_departamento.horario,t_departamento.ubicacion,t_gerencia.nombre AS nombre_depto";
	$model->from = 't_departamento INNER JOIN t_gerencia ON t_departamento.gerencia_id_gerencia = t_gerencia.id_gerencia';
	$model->orderby = 't_departamento.nombre';
	$model->Read();
	$filas = $model->rows;

	echo '<table class="table table-striped table-condensed table-hover">
        	<tr>
            		<th width="280">Nombre</th>
                <th width="160">Horarios</th>
                <th width="400">Ubicacion</th>
                <th width="150">Gerenciar</th>
								<th width="50">Opciones</th>
            </tr>';

  foreach($filas as $fila)
  {
      echo '<tr>
          <td>'.$fila['nombre'].'</td>
          <td>'.$fila['horario'].'</td>                   
          <td>'.$fila['ubicacion'].'</td>                 
          <td>'.$fila['nombre_depto'].'</td>                  
          <td><a href="javascript:editarProducto('.$fila['id_depto'].');" class="glyphicon glyphicon-edit"></a> <a href="javascript:eliminarDepto('.$fila['id_depto'].');" class="glyphicon glyphicon-remove-circle"></td>
          </tr>';
  }

		/*
			$precio = $_POST['precio'];
			if (!is_numeric($precio)) 
			{
				$mensaje = "Error, el campo debe ser númerico";					
			}
		*/


?>

