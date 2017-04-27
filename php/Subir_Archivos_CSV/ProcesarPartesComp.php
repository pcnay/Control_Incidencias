<?php
	include("conexion.php");

	// usando "h ref" en PHP
	echo "<a href = \"/folios/php/subir_archivos_csv/index.php\">Indice</a>";

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
		$reg_procesados = 0;
		while ($data = fgetcsv($fp,5000,","))
		{
			// Si la línea no es igual a 1 guarda el registro, ya que el reg. 1 es los titulos.
			if ($row != 1)
				{
					// En la primera vuelta se analiza los datos del Gabinete
										// Se inicia el proceso de copia de los registros del "Inventario Temporal" a Partes de computadoras"
					switch ($data[1])
						{
							case 'L':
								{
										$data[1] = '8';
										$dato[1] = (int)$data[1];
										$data[1] = 'NA';
										break;
								}

							case 'I':
								{
											$data[1] = '6';
											$dato[1] = (int)$data[1];
											$data[1] = 'NA';
											break;
									}
							case 'C':
								{
											$data[1] = '7';
											$dato[1] = (int)$data[1];
											$data[1] = 'NA';
											break;
									}


						}

						echo " Valor de Componente Computadora ",$dato[1];
						echo "<br  />";


/*
						$sql_guardar = "INSERT INTO t_componente_comp(nomenclatura,ip,serial,num_inventario,posicion,t_usuarios_id_usuario,t_marca_id_marca,t_modelo_id_modelo,t_partecomp_id_partecomp
						)";
						$datos[6] = (int)$data[6];
						$datos[7] = (int)$data[7];
						$datos[8] = (int)$data[8];
						$datos[9] = (int)$data[9];
						$sql_guardar .= "VALUES('$data[0]','$data[1]','$data[2]','$data[3]','$data[4]','$data[5]','$datos[6]','$datos[7]','$datos[8]','$datos[9]')";
						mysql_query($sql_guardar) or die(mysql_error());

						echo "grabo el registro ";

						$num_nvo++;

						if (!$sql_guardar)
						{
							echo "<div>Problemas al importar el archivo </div>";
							exit;
						}
*/

				} // ($row != 1)

			$row++;

		} // while ($data = fgetcsv($fp,5000,","))
		echo "Registros procesados : ".$row;
		echo "<br>";
		echo "<br>";

		// usando "h ref" en PHP
		echo "<a href = \"/folios/php/subir_archivos_csv/index.php\">Indice</a>";

			fclose($fp);

	} // if (substr($_FILES['excel']['name'],-3)=="csv")

// http://localhost/folios/php/subir_archivos_csv/Procesarpartescomp.php

?>
