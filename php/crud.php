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

			}		// if ($nombre_tabla == 't_inventario_temporal')

			// Se coloca por tabla, dado que se imprimen los campos en la pantalla de busqueda.
			if ($nombre_tabla == 't_usuarios')
			{
				if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "t_usuarios.id_usuario,t_usuarios.num_usuario,t_usuarios.nombre_emp,t_usuarios.num_tel,t_usuarios.num_ext,t_usuarios.correo_electronico,t_usuarios.t_puesto_id_puesto,t_usuarios.t_departamento_id_depto,t_puesto.nombre AS nombre_puesto,t_departamento.nombre AS nombre_depto";
					$model->from = 't_usuarios INNER JOIN t_puesto ON t_usuarios.t_puesto_id_puesto = t_puesto.id_puesto INNER JOIN t_departamento ON t_usuarios.t_departamento_id_depto = t_departamento.id_depto';
					$model->condition = "nombre_emp LIKE '%$texto_buscar%'";
					$model->orderby = '';
					$model->Read();
					$filas = $model->rows;

				}
				else // if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "t_usuarios.id_usuario,t_usuarios.num_usuario,t_usuarios.nombre_emp,t_usuarios.num_tel,t_usuarios.num_ext,t_usuarios.correo_electronico,t_usuarios.t_puesto_id_puesto,t_usuarios.t_departamento_id_depto,t_puesto.nombre AS nombre_puesto,t_departamento.nombre AS nombre_depto";
					$model->from = 't_usuarios INNER JOIN t_puesto ON t_usuarios.t_puesto_id_puesto = t_puesto.id_puesto INNER JOIN t_departamento ON t_usuarios.t_departamento_id_depto = t_departamento.id_depto';
					$model->condition = '';
					$model->orderby = 't_usuarios.nombre_emp';
					$model->Read();
					$filas = $model->rows;
				}

					echo '<table class="table table-striped table-condensed table-hover">
				        	<tr>
		            		<th width="60">Num. Emp</th>
		                <th width="200">Nombre</th>
		                <th width="70">Telefono</th>
										<th width="40">Ext</th>
		                <th width="50">Correo Electronico</th>
		                <th width="90">Puesto</th>
		                <th width="110">Departamento</th>
		                <th width="40">Opciones</th>
			            </tr>';

							  foreach($filas as $fila)
							  {
						      echo '<tr>
					          <td>'.$fila['num_usuario'].'</td>
					          <td>'.$fila['nombre_emp'].'</td>
					          <td>'.$fila['num_tel'].'</td>
										<td>'.$fila['num_ext'].'</td>
					          <td>'.$fila['correo_electronico'].'</td>
					          <td>'.$fila['nombre_puesto'].'</td>
					          <td>'.$fila['nombre_depto'].'</td>
					          <td><a href="javascript:editarUsuario('.$fila['id_usuario'].');" class="glyphicon glyphicon-edit"></a> <a href="javascript:eliminarUsuario('.$fila['id_usuario'].');" class="glyphicon glyphicon-remove-circle"></td>
					          </tr>';
							  }
					echo '</table>';

			}		// if ($nombre_tabla == 't_usuarios')



			// Se coloca por tabla, dado que se imprimen los campos en la pantalla de busqueda.
			if ($nombre_tabla == 't_puesto')
			{
				if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "id_puesto,nombre";
					$model->from = 't_puesto';
					$model->condition = "nombre LIKE '%$texto_buscar%'";
					$model->orderby = '';
					$model->Read();
					$filas = $model->rows;

				}
				else // if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "id_puesto,nombre";
					$model->from = 't_puesto';
					$model->condition = '';
					$model->orderby = 'nombre';
					$model->Read();
					$filas = $model->rows;
				}

					echo '<table class="table table-striped table-condensed table-hover">
				        	<tr>

		            		<th width="80">Id Puesto</th>
		                <th width="140">Nombre Puesto</th>
										<th width="50">Opciones</th>
			            </tr>';

							  foreach($filas as $fila)
							  {
						      echo '<tr>

					          <td>'.$fila['id_puesto'].'</td>
					          <td>'.$fila['nombre'].'</td>
					          <td><a href="javascript:editarPuesto('.$fila['id_puesto'].');" class="glyphicon glyphicon-edit"></a> <a href="javascript:eliminarPuesto('.$fila['id_puesto'].');" class="glyphicon glyphicon-remove-circle"></td>
					          </tr>';
							  }
					echo '</table>';

			}		// if ($nombre_tabla == 't_puesto')

			if ($nombre_tabla == 't_gerencia')
			{
				if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "id_gerencia,nombre";
					$model->from = 't_gerencia';
					$model->condition = "nombre LIKE '%$texto_buscar%' ";
					$model->orderby = 'nombre';
					$model->Read();
					$filas = $model->rows;

				}
				else // if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "id_gerencia,nombre";
					$model->from = 't_gerencia';
					$model->condition = '';
					$model->orderby = 'nombre';
					$model->Read();
					$filas = $model->rows;
				}

					echo '<table class="table table-striped table-condensed table-hover">
				        	<tr>
		            		<th width="80">Id Gerencia</th>
		                <th width="140">Nombre Gerencia</th>
										<th width="50">Opciones</th>
			            </tr>';

							  foreach($filas as $fila)
							  {
						      echo '<tr>

					          <td>'.$fila['id_gerencia'].'</td>
					          <td>'.$fila['nombre'].'</td>
					          <td><a href="javascript:editarGerencia('.$fila['id_gerencia'].');" class="glyphicon glyphicon-edit"></a> <a href="javascript:eliminarGerencia('.$fila['id_gerencia'].');" class="glyphicon glyphicon-remove-circle"></td>
					          </tr>';
							  }
					echo '</table>';

			}		// if ($nombre_tabla == 't_gerencia')

			if ($nombre_tabla == 't_marca')
			{
				if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "id_marca,descripcion";
					$model->from = 't_marca';
					$model->condition = "descripcion LIKE '%$texto_buscar%' ";
					$model->orderby = 'descripcion';
					$model->Read();
					$filas = $model->rows;
					$total =count($filas);

				}
				else // if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "id_marca,descripcion";
					$model->from = 't_marca';
					$model->condition = '';
					$model->orderby = 'descripcion';
					$model->Read();
					$filas = $model->rows;
					$total =count($filas);
				}

					echo '<table class="table table-striped table-condensed table-hover">
				        	<tr>
		            		<th width="80">Id Marca</th>
		                <th width="140">Descripcion De La Marca</th>
										<th width="50">Opciones</th>
			            </tr>';
			        if ($total > 0)
			        	{
								  foreach($filas as $fila)
								  {
							      echo '<tr>

						          <td>'.$fila['id_marca'].'</td>
						          <td>'.$fila['descripcion'].'</td>
						          <td><a href="javascript:editarMarcas('.$fila['id_marca'].');" class="glyphicon glyphicon-edit"></a> <a href="javascript:eliminarMarcas('.$fila['id_marca'].');" class="glyphicon glyphicon-remove-circle"></td>
						          </tr>';
								  }
								}

					echo '</table>';

			}		// if ($nombre_tabla == 't_marca')

			if ($nombre_tabla == 't_modelo')
			{
				if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "id_modelo,descripcion";
					$model->from = 't_modelo';
					$model->condition = "descripcion LIKE '%$texto_buscar%' ";
					$model->orderby = 'descripcion';
					$model->Read();
					$filas = $model->rows;
					$total =count($filas);

				}
				else // if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "id_modelo,descripcion";
					$model->from = 't_modelo';
					$model->condition = '';
					$model->orderby = 'descripcion';
					$model->Read();
					$filas = $model->rows;
					$total =count($filas);
				}

					echo '<table class="table table-striped table-condensed table-hover">
				        	<tr>
		            		<th width="80">Id Modelo</th>
		                <th width="140">Descripcion Del Modelo</th>
										<th width="50">Opciones</th>
			            </tr>';
			        if ($total > 0)
			        	{
								  foreach($filas as $fila)
								  {
							      echo '<tr>

						          <td>'.$fila['id_modelo'].'</td>
						          <td>'.$fila['descripcion'].'</td>
						          <td><a href="javascript:editarModelo('.$fila['id_modelo'].');" class="glyphicon glyphicon-edit"></a> <a href="javascript:eliminarModelo('.$fila['id_modelo'].');" class="glyphicon glyphicon-remove-circle"></td>
						          </tr>';
								  }
								}

					echo '</table>';

			}		// if ($nombre_tabla == 't_modelo')

			if ($nombre_tabla == 't_partecomp')
			{
				if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "id_partecomp,descripcion";
					$model->from = 't_partecomp';
					$model->condition = "descripcion LIKE '%$texto_buscar%' ";
					$model->orderby = 'descripcion';
					$model->Read();
					$filas = $model->rows;
					$total =count($filas);

				}
				else // if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "id_partecomp,descripcion";
					$model->from = 't_partecomp';
					$model->condition = '';
					$model->orderby = 'descripcion';
					$model->Read();
					$filas = $model->rows;
					$total =count($filas);
				}

					echo '<table class="table table-striped table-condensed table-hover">
				        	<tr>
		            		<th width="80">Id Componente</th>
		                <th width="140">Descripcion Del Componente</th>
										<th width="50">Opciones</th>
			            </tr>';
			        if ($total > 0)
			        	{
								  foreach($filas as $fila)
								  {
							      echo '<tr>

						          <td>'.$fila['id_partecomp'].'</td>
						          <td>'.$fila['descripcion'].'</td>
						          <td><a href="javascript:editarParteComp('.$fila['id_partecomp'].');" class="glyphicon glyphicon-edit"></a> <a href="javascript:eliminarParteComp('.$fila['id_partecomp'].');" class="glyphicon glyphicon-remove-circle"></td>
						          </tr>';
								  }
								}

					echo '</table>';

			}		// if ($nombre_tabla == 't_partecomp')

			if ($nombre_tabla == 't_espef_cpu')
			{
				if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "id_espef_cpu,procesador,velocidad,memoria,disco_duro";
					$model->from = 't_espef_cpu';
					$model->condition = "procesador LIKE '%$texto_buscar%' ";
					$model->orderby = 'procesador';
					$model->Read();
					$filas = $model->rows;
					$total =count($filas);

				}
				else // if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "id_espef_cpu,procesador,velocidad,memoria,disco_duro";
					$model->from = 't_espef_cpu';
					$model->condition = '';
					$model->orderby = 'procesador';
					$model->Read();
					$filas = $model->rows;
					$total =count($filas);
				}

					echo '<table class="table table-striped table-condensed table-hover">
				        	<tr>
		            		<th width="80">Id Especif</th>
		                <th width="90">Procesador</th>
		                <th width="90">Velocidad</th>
		                <th width="90">Memoria</th>
		                <th width="90">Disco Duro</th>
										<th width="50">Opciones</th>
			            </tr>';
			        if ($total > 0)
			        	{
								  foreach($filas as $fila)
								  {
							      echo '<tr>
						          <td>'.$fila['id_espef_cpu'].'</td>
						          <td>'.$fila['procesador'].'</td>
						          <td>'.$fila['velocidad'].'</td>
						          <td>'.$fila['memoria'].'</td>
						          <td>'.$fila['disco_duro'].'</td>
						          <td><a href="javascript:editarEspecif('.$fila['id_espef_cpu'].');" class="glyphicon glyphicon-edit"></a> <a href="javascript:eliminarEspecif('.$fila['id_espef_cpu'].');" class="glyphicon glyphicon-remove-circle"></td>
						          </tr>';
								  }
								}

					echo '</table>';

			}		// if ($nombre_tabla == 't_espef_cpu')

			if ($nombre_tabla == 't_componente_comp')
			{
				if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "t_componente_comp.id_componente_comp AS id_componente_comp,t_componente_comp.ip AS IP,t_componente_comp.num_inventario AS Inventario,t_marca.descripcion AS Marca,t_modelo.descripcion AS Modelo,t_componente_comp.serial AS Serial,t_componente_comp.posicion AS Posicion,t_usuarios.nombre_emp AS Nombre,t_departamento.nombre AS Ubicacion";
					$model->from = 't_componente_comp INNER JOIN t_marca ON t_componente_comp.t_marca_id_marca = t_marca.id_marca INNER JOIN t_modelo ON t_componente_comp.t_modelo_id_modelo = t_modelo.id_modelo INNER JOIN t_usuarios ON t_componente_comp.t_usuarios_id_usuario = t_usuarios.id_usuario INNER JOIN t_departamento ON t_usuarios.t_departamento_id_depto = t_departamento.id_depto';
					$model->condition = "t_componente_comp.ip LIKE '%$texto_buscar%' OR t_componente_comp.serial LIKE '%$texto_buscar%' OR t_componente_comp.num_inventario LIKE '%$texto_buscar%' OR t_departamento.nombre LIKE '%$texto_buscar%'";
					$model->orderby = 'Ubicacion';
					$model->Read();
					$filas = $model->rows;
					$total =count($filas);
				}
				else // if ($buscar_cadena == true)
				{
					$model = new Crud;
					$model->select = "t_componente_comp.id_componente_comp AS id_componente_comp,t_componente_comp.ip AS IP,t_componente_comp.num_inventario AS Inventario,t_marca.descripcion AS Marca,t_modelo.descripcion AS Modelo,t_componente_comp.serial AS Serial,t_componente_comp.posicion AS Posicion,t_usuarios.nombre_emp AS Nombre,t_departamento.nombre AS Ubicacion";
					$model->from = 't_componente_comp INNER JOIN t_marca ON t_componente_comp.t_marca_id_marca = t_marca.id_marca INNER JOIN t_modelo ON t_componente_comp.t_modelo_id_modelo = t_modelo.id_modelo INNER JOIN t_usuarios ON t_componente_comp.t_usuarios_id_usuario = t_usuarios.id_usuario INNER JOIN t_departamento ON t_usuarios.t_departamento_id_depto = t_departamento.id_depto';
					$model->orderby = 'Ubicacion';
	//				$model->orderby = '';
					$model->Read();
					$filas = $model->rows;
					$total =count($filas);
				}

					echo '<table class="table table-striped table-condensed table-hover">
				        	<tr>
		            		<th width="80">IP</th>
		                <th width="90">INVENTARIO</th>
		                <th width="135">MARCA</th>
		                <th width="140">MODELO</th>
		                <th width="210">SERIAL</th>
		                <th width="40">POSICION</th>
		                <th width="180">UBICACION</th>
										<th width="30">Opciones</th>
			            </tr>';
			        if ($total > 0)
			        	{
								  foreach($filas as $fila)
								  {
							      echo '<tr>
						          <td>'.$fila['IP'].'</td>
						          <td>'.$fila['Inventario'].'</td>
						          <td>'.$fila['Marca'].'</td>
						          <td>'.$fila['Modelo'].'</td>
						          <td>'.$fila['Serial'].'</td>
						          <td>'.$fila['Posicion'].'</td>
						          <td>'.$fila['Ubicacion'].'</td>
						          <td><a href="javascript:editarComponente('.$fila['id_componente_comp'].');" class="glyphicon glyphicon-edit"></a> <a href="javascript:eliminarComponente('.$fila['id_componente_comp'].');" class="glyphicon glyphicon-remove-circle"></td>
						          </tr>';
								  }
								}

					echo '</table>';

			}		// if ($nombre_tabla == 't_componente_comp')


		} // public function Mostrar_contenido()

	} // class Desplegar_tabla

?>
