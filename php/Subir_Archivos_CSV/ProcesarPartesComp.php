<?php
	include("conexion.php");

	// Definiendo los modelos, es decir los patrones de busquedas.
	$arreglo_patrones = array (
		34=>'002',
		60=>'656',
		48=>'XOL',
		27=>'7800',
		18=>'6305',
	);


	function obtener_componente($data1)
	{
		switch ($data1)
			{
				case 'L':
					{
						$data1 = '8';
						$dato1 = (int)$data1; // Convertilo a tipo Entero
						$data1 = 'NA';
						break;
					}
				case 'I':
					{
						$data1 = '6';
						$dato1 = (int)$data1;
						$data1 = 'NA';
						break;
					}
				case 'C':
					{
						$data1 = '7';
						$dato1 = (int)$data1;
						$data1 = 'NA';
						break;
					}
				case 'IT':
					{
						$data1 = '9';
						$dato1 = (int)$data1;
						$data1 = 'NA';
						break;
					}
				case 'E':
					{
						$data1 = '10';
						$dato1 = (int)$data1;
						$data1 = 'NA';
						break;
					}

			} // switch ($data[1])

			return $dato1;

		} // function obtener_componente

		function obtener_marca($data4)
		{

			switch ($data4) // Marca Del Gabinete
				{
					case 'HP':
						{
							$data[4] = '18';
							$dato4 = (int)$data[4];
							$data[4] = 'NA';
							break;
						}

					case 'LEXMARK':
						{
							$data[4] = '15';
							$dato4 = (int)$data[4];
							$data[4] = 'NA';
							break;
						}
					case 'EPSON':
						{
							$data[4] = '16';
							$dato4 = (int)$data[4];
							$data[4] = 'NA';
							break;
						}
					case 'CANNON':
						{
							$data[4] = '20';
							$dato4 = (int)$data[4];
							$data[4] = 'NA';
							break;
						}
					case 'DELL':
						{
							$data[4] = '9';
							$dato4 = (int)$data[4];
							$data[4] = 'NA';
							break;
						}


				} // switch ($data[4])

				return $dato4;

			} //function obtener_marca($data4)

			//
			function obtener_modelo($data5,$patrones)
			{

				$cadena_de_texto = $data5;
				for ($veces=1;$veces<=count($patrones);$veces++)
				{
					$posicion_coincidencia = strrpos($data5,$patrones[$veces]);
					if ($posicion_coincidencia == true)
					{
						$dato5 = '34';
					}
				}
/*
$cadena_de_texto = $data5;
$cadena_buscada   = '002';
$posicion_coincidencia = strrpos($cadena_de_texto, $cadena_buscada);

//se puede hacer la comparacion con 'false' o 'true' y los comparadores '===' o '!=='
if ($posicion_coincidencia === false) {
    echo "NO se ha encontrado la palabra deseada!!!!";
    } else {
            echo "Éxito!!! Se ha encontrado la palabra buscada en la posición: ".$posicion_coincidencia;
            }

*/



				switch ($data5) // Marca Del Gabinete
					{
						case '10CVA002LM':
							{
								$data[5] = '34';
								$dato5 = (int)$data[5];
								$data[5] = 'NA';
								break;
							}
						case '656DE':
							{
								$data[5] = '60';
								$dato5 = (int)$data[5];
								$data[5] = 'NA';
								break;
							}
						case 'BIXOLON':
							{
								$data[5] = '48';
								$dato5 = (int)$data[5];
								$data[5] = 'NA';
								break;
							}
						case 'COMPAQ DC7800':
							{
								$data[5] = '27';
								$dato5 = (int)$data[5];
								$data[5] = 'NA';
								break;
							}


					} // switch ($data[4])

					return $dato4;

				} //function obtener_marca($data4)



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
		// $veces = Es para grabar Gabinete, Monitores, Teclado, Raton,
		$reg_procesados = 0;

		for ($veces=1;$veces<=4;$veces++)
			{
				while ($data = fgetcsv($fp,5000,","))
				{
					// Si la línea no es igual a 1 guarda el registro, ya que el reg. 1 es los titulos.
					if ($row != 1)
						{
							// En la primera vuelta se analiza los datos del Gabinete
							// Se inicia el proceso de copia de los registros del "Inventario Temporal" a Partes de computadoras"

								$dato[1] = obtener_componente($data[1]);
								$dato[4] = obtener_marca($data[4]);
								$dato[5] = obtener_modelo($data[5],$arreglo_patrones);


								echo " Tipo Componente :  ",$dato[1];
								echo "<br  />";
								echo "Marca Componente : ",$dato[4];
								echo "<br  />";


		/*
								$sql_guardar = "INSERT INTO t_componente_comp(nomenclatura,ip,serial,num_inventario,posicion,t_usuarios_id_usuario,t_marca_id_marca,t_modelo_id_modelo,t_partecomp_id_partecomp
								)";
								$datos[6] = (int)$data[6];
								$datos[7] = (int)$data[7];
								$datos[8] = (int)$data[8];
								$datos[9] = (int)$data[9];
								$sql_guardar .= "VALUES('$dato[1]','$data[2]','$data[3]','$dato[4]','$data[5]','$data[6]','$datos[7]','$datos[8]','$datos[9]','$datos[10]')";
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

				} // for ($veces=1;$veces<=4;$veces++)

			} // while ($data = fgetcsv($fp,5000,","))

		echo "Registros procesados : ".$row;
		echo "Veces ejecutadas ",$veces;
		echo "<br>";
		echo "<br>";

		// usando "h ref" en PHP
		echo "<a href = \"/folios/php/subir_archivos_csv/index.php\">Indice</a>";

			fclose($fp);

	} // if (substr($_FILES['excel']['name'],-3)=="csv")

// http://localhost/folios/php/subir_archivos_csv/index.php

?>
