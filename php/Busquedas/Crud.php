<?php
	class Crud
	{
		public $insertInto;			// Seccion para Insertar Registro.
		public $insertColumns;
		public $insertValues;
		public $select;					// Sección para Leer Registros.
		public $from;
		public $condition;
		public $orderby;
		public $mensaje;
		public $rows;
		public $update;				// Sección para Actualizar los registros.
		public $set;
		public $deleteFrom;		// Borrar registros.

		public function Create()
		{
			$model = new Conexion;
			$conexion = $model->conexion();
			$insertInto = $this->insertInto;
			$insertColumns = $this->insertColumns;
			$insertValues = $this->insertValues;
			
			$sql = "INSERT INTO $insertInto ($insertColumns) VALUES ($insertValues)";
			$consulta = $conexion->prepare($sql);
			if ( !$consulta)
			{
				$this->mensaje = "Error al crear el registro";
			}
			else
			{
				$consulta->execute();
				$this->mensaje = "Registro Grabado Correctamente";
			}

			$consulta->CloseCursor();
			$conexion = null;
			
			
		}

		public function Read()
		{
			$model = new Conexion();
			$conexion = $model->conexion();
			$select = $this->select;
			$from = $this->from;
			$condition = $this->condition;
			$orderby = $this->orderby;
			
			
			if ($condition != '')
			{
				$condition = " WHERE ".$condition;
			}

			if ($orderby != '')
			{
				$orderby = " ORDER BY ".$orderby;
			}
			
			$sql = "SELECT $select FROM $from $condition $orderby";

			
			$consulta = $conexion->prepare($sql);
			$consulta->execute();

			// Obteniendo los registros de la consulta anterior.
			while ($filas = $consulta->fetch())
			{
				$this->rows[] = $filas;				
			}

			$consulta->CloseCursor();
			$conexion = null;
		}

		public function Update()
		{
			$model = new Conexion;
			$conexion = $model->conexion();
			$update = $this->update;
			$set = $this->set;
			$condition = $this->condition;

			if ($condition != '')
			{
				$condition = " WHERE ".$condition;				
			}

			$sql = "UPDATE $update SET $set $condition";
			$consulta = $conexion->prepare($sql);

			if (!$consulta)
			{
				$this->mensaje = "Ha ocurrido un error al actualizar el registro";
			}
			else
			{
				$consulta->execute();
				$this->mensaje = "Registro Actualizado Correctamente ";
			}

			$consulta->CloseCursor();
			$conexion = null;

		}

		public function Delete()
		{
			$model = new Conexion;
			$conexion = $model->conexion();
			$deleteFrom = $this->deleteFrom;
			$condition = $this->condition;
			if ($condition != '')
			{
				$condition = " WHERE ".$condition;				
			}
			
			$sql = "DELETE FROM $deleteFrom $condition";
			$consulta = $conexion->prepare($sql);

			if (!$consulta)
			{
				$this->mensaje = "Error al eliminar el registro";				
			}
			else
			{
				$consulta->execute();
				$this->mensaje = "Registro Borrado !";				
			}

			$consulta->CloseCursor();
			$conexion = null;

		}

	}	// Class

	class Desplegar_tabla
	{
		public $nombre_tabla;			// Seccion para Insertar Registro.
		public $buscar_cadena;
		public $texto_buscar;

		public function Mostrar_contenido()
		{
			$nombre_tabla = $this->nombre_tabla;
			$buscar_cadena = $this->buscar_cadena;
			$texto_buscar = $this->texto_buscar;

			if ($nombre_tabla == 't_departamento')
			{
				if ($buscar_cadena == true) 
				{
					
					$model = new Crud;
					// Se realizan las consultas Multiples JOIN.
					$model->select = "t_departamento.id_depto,t_departamento.nombre,t_departamento.horario,t_departamento.ubicacion,t_departamento.gerencia_id_gerencia,t_gerencia.nombre AS nombre_depto";
					$model->from = 't_departamento INNER JOIN t_gerencia ON t_departamento.gerencia_id_gerencia = t_gerencia.id_gerencia';
					$model->condition = "t_departamento.nombre LIKE '%$texto_buscar%'";
					$model->orderby = 't_departamento.nombre';
					$model->Read();
					$filas = $model->rows;

				}
				else // if ($buscar_cadena == true)
				{
					$model = new Crud;
					// Se realizan las consultas Multiples JOIN.
					$model->select = "t_departamento.id_depto,t_departamento.nombre,t_departamento.horario,t_departamento.ubicacion,t_gerencia.nombre AS nombre_depto";
					$model->from = 't_departamento INNER JOIN t_gerencia ON t_departamento.gerencia_id_gerencia = t_gerencia.id_gerencia';
					$model->orderby = 't_departamento.nombre';
					$model->Read();
					$filas = $model->rows;

				}			

					echo '<table class="table table-striped table-condensed table-hover">
				        	<tr>
		            		<th width="280">Nombre</th>
		                <th width="160">Horarios</th>
		                <th width="400">Ubicacion</th>
		                <th width="150">Gerencia</th>
										<th width="50">Opciones</th>
			            </tr>';

							  foreach($filas as $fila)
							  {
						      echo '<tr>
					          <td>'.$fila['nombre'].'</td>
					          <td>'.$fila['horario'].'</td>                   
					          <td>'.$fila['ubicacion'].'</td>                 
					          <td>'.$fila['nombre_depto'].'</td>                  
					          <td><a href="javascript:editarDepto('.$fila['id_depto'].');" class="glyphicon glyphicon-edit"></a> <a href="javascript:eliminarDepto('.$fila['id_depto'].');" class="glyphicon glyphicon-remove-circle"></td>
					          </tr>';
							  }				  
					echo '</table>';

			}		// if ($nombre_tabla == 't_departamento')

			
			// Se coloca por tabla, dado que se imprimen los campos en la pantalla de busqueda.

			if ($nombre_tabla == 't_inventario_temporal')
			{
				if ($buscar_cadena == true) 
				{
					$model = new Crud;
					$model->select = "IP,Inventario_g,Marca_g,Modelo_g,Serie_g,Posicion,Ubicacion,id_inventario_temporal";
					$model->from = 't_inventario_temporal';
					//$model->condition = "t_departamento.nombre LIKE '%$dato%'";
					//$model->condition = "Serie_g LIKE '%$texto_buscar%' OR Inventario_g LIKE '%$texto_buscar%' OR IP LIKE '%$texto_buscar%' OR Ubicacion LIKE '%$texto_buscar%'";
					$model->condition = "Serie_g LIKE '%$texto_buscar%' OR Inventario_g LIKE '%$texto_buscar%' OR IP LIKE '%$texto_buscar%' OR Ubicacion LIKE '%$texto_buscar%'";

					$model->orderby = '';
					$model->Read();
					$filas = $model->rows;

				}
				else // if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "IP,Inventario_g,Marca_g,Modelo_g,Serie_g,Posicion,Ubicacion,id_inventario_temporal";
					$model->from = 't_inventario_temporal';
					//$model->condition = "t_departamento.nombre LIKE '%$dato%'";
					$model->condition = ''; // "Serie LIKE '%$dato%' OR Inventario_g LIKE '%$dato%' OR IP LIKE '%$dato%'";
					$model->orderby = '';
					$model->Read();
					$filas = $model->rows;			
				}			

					echo '<table class="table table-striped table-condensed table-hover">
				        	<tr>
		            		<th width="120">IP</th>
		                <th width="140">Inventario</th>
		                <th width="80">Marca</th>
		                <th width="150">Modelo</th>
		                <th width="170">Serie</th>
		                <th width="180">Posicion</th>
		                <th width="110">Ubicacion</th>		                		                
										<th width="50">Opciones</th>
			            </tr>';

							  foreach($filas as $fila)
							  {
						      echo '<tr>

					          <td>'.$fila['IP'].'</td>
					          <td>'.$fila['Inventario_g'].'</td>                   
					          <td>'.$fila['Marca_g'].'</td>                 
					          <td>'.$fila['Modelo_g'].'</td>
					          <td>'.$fila['Serie_g'].'</td>                   
					          <td>'.$fila['Posicion'].'</td>                 
					          <td>'.$fila['Ubicacion'].'</td>

					          <td><a href="javascript:editarDepto('.$fila['id_inventario_temporal'].');" class="glyphicon glyphicon-edit"></a> <a href="javascript:eliminarDepto('.$fila['id_inventario_temporal'].');" class="glyphicon glyphicon-remove-circle"></td>
					          </tr>';
							  }				  
					echo '</table>';

			}		// if ($nombre_tabla == 't_departamento')



			
		} // public function Mostrar_contenido()
		
			
	} // class Desplegar_tabla

		

?>

