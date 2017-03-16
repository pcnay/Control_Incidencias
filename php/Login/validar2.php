<?php
	require_once('../conexion.php');
	require_once('../crud.php');
	$usuario = $_POST['usuario'];
	$clave = $_POST['password'];
	$boton = $_POST['boton'];


	class validar
	{
		function identificar($usuario,$clave)
		{
			//OBTENEMOS LOS VALORES DEL USUARIO
			$clave = md5($clave); // Encriptar la variable para consultar en la base de datos.
			$model = new Crud;
			// Se realizan las consultas Multiples JOIN.
			$model->select = "nombre,usuario,clave,privilegio";
			$model->from = 't_permisos';
			$model->condition = "usuario='$usuario' AND clave='$clave'";
			$model->orderby = '';
			$model->Read();
			$filas = $model->rows;
			$total = count($filas);
			
			if ($total > 0)
			{
				foreach ($filas as $fila)
				{
					$r = array(
						0 =>$fila['nombre'],
						1 =>$fila['usuario'],
						2 =>$fila['clave'],
						3 =>$fila['privilegio'],
						);
				};

			}
			else
			{
				$r[0] = 0;
			}
			return $r;

		}

	}

	$ing = new validar();
	$array = $ing->identificar($usuario,$clave);
	
	if ($boton='cerrar')
	{
		session_start();
		session_destroy();

	}
	else
	{
		if ($array[0] = 0)
		{
			echo 0;		
		}
		else
		{
			alert("NO se encontro el usuario");
			//session_start();
			// $_SESSION['ingreso'] = 'YES';
			// $_SESSION['nombre'] = $array[1];
		}
	}
		



// Tiempo Video : 9:14 min
	
?>
