<?php
			require_once("../../php/conexion.php");
			require_once("../../php/crud.php");

			//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Deptos" y "php"

$campo_act = addslashes($_POST['campo_act']);
$arreglo_marcas[0] = 'HP';
$arreglo_marcas[1] = 'DELL';
$arreglo_marcas[2] = 'LEXMARK';
$arreglo_marcas[3] = 'EPSON';

$arreglo_modelos[0] = 'ELITEDESK 705 G1 SFF'
$arreglo_modelos[1] = 'OPTIPLEX 960'
$arreglo_modelos[2] = 'OPTIPLEX 990';

// Se obtienen el número total de elementos de los arreglo_modelos
$total_marcas = count($arreglo_marcas);
$total_modelos = count($arreglo_modelos);

// Recorrido de los arreglos.
for ($i=0;$i<$total_marcas;$i++)
{
	$arreglo_marcas[$i];
	$model = new Crud;
	$model->update = "t_inventario_temporal";
	//$model->set  = "Marca_g='$valor_nuevo'";
	$model->set  = "Modelo_g='$valor_nuevo'";
	$model->condition = "Modelo_g ='$campo_act'";
	$model->Update();

}
modelos(arreglo_marcas);



function modelos(nombre_modelo)
{
	for
	switch ($campo_act)
		{
			case "ELITEDESK 705 G1 SFF":
				$valor_nuevo = "1";
				break;


}

marcas($campo_act);
modelos($campo_act);

			switch ($campo_act)
				{
					case "ELITEDESK 705 G1 SFF":
						$valor_nuevo = "1";
						break;
					case 'OptiPlex 9010':
						$valor_nuevo = "13";
						break;
					case "PROBOOK 640 G2":
						$valor_nuevo = "18";
						break;
					case "PROBOOK 645 G1":
						$valor_nuevo = "19";
						break;
					case "MX711DE":
						$valor_nuevo = "21";
						break;
					case "FX-2190":
						$valor_nuevo = "22";
						break;
					case "PHOTOSMART C7280":
						$valor_nuevo = "23";
						break;
					case "X656DE":
						$valor_nuevo = "24";
						break;
					case "LASERJET 5000 COLOR":
						$valor_nuevo = "25";
						break;
					case "DR-2050C":
						$valor_nuevo = "26";
						break;
					case "OptiPlex 960":
						$valor_nuevo = "12";
						break;
					case "COMPAQ DC7800":
						$valor_nuevo = "27";
						break;
					case "COMPAQ PRO 6305 SFF":
						$valor_nuevo = "28";
						break;
					case "'OptiPlex 990":
						$valor_nuevo = "2";
						break;
					case "OptiPlex GX280":
						$valor_nuevo = "29";
						break;
					case "OPTIPLEX GX 620":
						$valor_nuevo = "31";
						break;
					//case "LASERJET M401DNE":
					case "":
						$valor_nuevo = "30";
						break;

/*
					case 'DELL':
						$valor_nuevo = "9";
						break;
					case 'HP':
						$valor_nuevo = "18";
						break;
					case 'XEROX':
							$valor_nuevo = "18";
							break;
					case 'LEXMARK':
							$valor_nuevo = "15";
							break;
					case 'EPSON':
							$valor_nuevo = "16";
							break;
					case 'CANNON':
							$valor_nuevo = "19";
							break;
					case 'LENOVO':
							$valor_nuevo = "20";
							break;
*/

				}
				echo "Valor que se tecleo ".$valor_nuevo;

//			echo '<script type="text/javascript ">
//				alert("Valor teclados");
//			</script>'




?>
