<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{

			require_once("../../php/conexion.php");
			require_once("../../php/crud.php");

			//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Deptos" y "php"

			$id_usuario = addslashes($_POST['id_usuario']);
			$proceso = $_POST['pro'];
			$usuario_univ = addslashes($_POST['usuario_univ']);
			$num_usuario = $_POST['num_usuario'];
			$nombre = addslashes($_POST['nombre']);
			$num_tel = addslashes($_POST['num_tel']);
			$num_ext = addslashes($_POST['num_ext']);
			$correo_elect = addslashes($_POST['correo_elect']);
			$comentario = addslashes($_POST['comentario']);
			$id_departamento = $_POST['id_departamento'];
			$id_puesto = $_POST['id_puesto'];


				switch($proceso)
				{
					case 'Registro':
						$model = new Crud;
						$model->insertInto = 't_usuarios';
						$model->insertColumns = 'usuario_universal,num_usuario,nombre_emp,num_tel,num_ext,correo_electronico,comentarios,t_departamento_id_depto,t_puesto_id_puesto';
						$model->insertValues = "'$usuario_univ','$num_usuario','$nombre','$num_tel','$num_ext','$correo_elect','$comentario','$id_departamento','$id_puesto'";
						$model->Create();
					break;

					case 'Edicion':
						$model = new Crud;
						$model->update = "t_usuarios";
						$model->set  = "usuario_universal='$usuario_univ',num_usuario='$num_usuario',nombre_emp='$nombre',num_tel='$num_tel',num_ext='$num_ext',correo_electronico='$correo_elect',comentarios='$comentario',t_departamento_id_depto='$id_departamento',t_puesto_id_puesto='$id_puesto'";
						//$model->set = "nombre='$nombre',horario='$horario',ubicacion='$ubicacion',gerencia_id_gerencia='$id_gerencia'";
						$model->condition = "id_usuario='$id_usuario'";
						$model->Update();
					break;
				}


			//ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS

				$mostrar = new Desplegar_tabla;
				$mostrar->nombre_tabla = 't_usuarios';
				$mostrar->buscar_cadena = false;
		    $mostrar->texto_buscar = '';
				$mostrar->Mostrar_contenido();
	}
}

?>
