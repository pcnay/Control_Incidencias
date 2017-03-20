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
					// Determina si ya existe el registro 							
					$sql_buscar ="SELECT IP,Marca_g,Modelo_g,Serie_g,Inventario_g,Posicion FROM t_inventario_temporal WHERE Serie_g ='$data[5]'";
					// WHERE celular = '.$data[3].'";
					$result = mysql_query($sql_buscar);
					$num_rows = mysql_num_rows($result);
					
					// Si existe actualiza los datos solamente pero que no se agregue.
					if ($num_rows > 0)
					{
						// Actualiza campos.
						$sql_actualizar = "UPDATE t_inventario_temporal SET nomenclatura='$data[0]',Componente='$data[1]',IP='$data[2]', Marca_g='$data[3]',Modelo_g='$data[4]',Serie_g='$data[5]',Inventario_g='$data[6]',Marca_m='$data[7]',Modelo_m='$data[8]',Serie_m='$data[9]',Inventario_m='$data[10]',Marca_t='$data[11]',Modelo_t='$data[12]',Serie_t='$data[13]',Marca_r='$data[14]',Modelo_r='$data[15]',Serie_r='$data[16]',Serie_Pila='$data[17]',Usuario_Univ='$data[18]',Posicion='$data[19]',Ubicacion='$data[20]' WHERE Serie_g='$data[5]'";
						mysql_query($sql_actualizar) or die(mysql_error());
							$num_act++;

						if (!$sql_actualizar)
						{
							echo "<div>Problemas al actualizar el registro </div>";
						}	
					}
					else
					{
						$sql_guardar = "INSERT INTO t_inventario_temporal(Nomenclatura,Componente,IP,Marca_g,Modelo_g,Serie_g,Inventario_g,Marca_m,Modelo_m,Serie_m,Inventario_m,Marca_t,Modelo_t,Serie_t,Marca_r,Modelo_r,Serie_r,Serie_Pila,Usuario_Univ,Posicion,Ubicacion)";
						$sql_guardar .= "VALUES('$data[0]','$data[1]','$data[2]','$data[3]','$data[4]','$data[5]','$data[6]','$data[7]','$data[8]','$data[9]','$data[10]','$data[11]','$data[12]','$data[13]','$data[14]','$data[15]','$data[16]','$data[17]','$data[18]','$data[19]','$data[20]')";
						mysql_query($sql_guardar) or die(mysql_error());

						echo "grabo el registro ";

						$num_nvo++;

						if (!$sql_guardar)
						{
							echo "<div>Problemas al importar el archivo </div>";
							exit;
						}
					}
				}
			$row++;				
		}
		
		if ($num_nvo > 0)
		{
	//		echo "Registros Nuevos : ".$num_nvo.;
			echo "Registro Nuevos : ".$num_nvo;
			echo "Valor del reg. Agregado : ".$data[5];
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
		echo "<a href = \"/folios/vistas/menu.php\">Menu General </a>";


		fclose($fp);


	}
?>

