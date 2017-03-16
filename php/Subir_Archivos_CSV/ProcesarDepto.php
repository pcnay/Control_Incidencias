<?php
	include("conexion.php");
	
	// Determina si es un archivo "CVS"
	if (substr($_FILES['excel']['name'],-3)=="csv")
	{
		$fecha = date('Y-m-d');
		$rand = rand(99999999999999,99999999999);
		$carpeta = "archivos-excel/";
		$excel = $fecha."-".$rand."-".$_FILES['excel']['name'];
		// Mueve el archivo a l a ruta especificada ( filename, destination ) 
		move_uploaded_file($_FILES['excel']['tmp_name'], "$carpeta$excel");

		$row = 1;
		$num_act=0;
		$num_nvo=0;

		// Lee el archivo "csv" 
		$fp = fopen("$carpeta$excel","r");

		//fgetcsv Obtiene los valores que estan en el "csv" y los extrae, que estan separados por ","
		
		while ($data = fgetcsv($fp,1000,","))
		{
			// Si la línea no es igual a 1 guarda el registro, ya que el reg. 1 es los titulos.
			if ($row != 1)
				{	

						$sql_guardar = "INSERT INTO t_departamento(nombre,horario,ubicacion,gerencia_id_gerencia)";
						$sql_guardar .= "VALUES('$data[0]','$data[1]','$data[2]','$data[3]')";
						mysql_query($sql_guardar) or die(mysql_error());

						echo "grabo el registro ";

						$num_nvo++;

						if (!$sql_guardar)
						{
							echo "<div>Problemas al importar el archivo </div>";
							exit;
						}
				}

			$row++;				
		}
		
		if ($num_nvo > 0)
		{
	//		echo "Registros Nuevos : ".$num_nvo.;
			echo "Registro Nuevos : ".$num_nvo;
			echo "Valor del reg. Agregado : ".$data[0];
		}
		else
		{
			echo "Registros Actualizados :".$num_act;
	//		echo "Registros Actualziados : ".$num_act.;
		}
	

		// $num = count($data)
		//echo "El arreglo contiene ".$num.;
		// header("Location:http://localhost/Folios/menu.php");
		echo "<br>";
		echo "<br>";

		// usando "h ref" en PHP
		echo "<a href = \"/folios/menu.php\">Menu General </a>";


		fclose($fp);


	}
?>

