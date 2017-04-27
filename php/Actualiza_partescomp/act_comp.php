<?php
			require_once("../../php/conexion.php");
			require_once("../../php/crud.php");

			//  cada ../ es una carpeta que sube, en este caso son dos carpetas "Deptos" y "php"


//$campo_act = addslashes($_POST['campo_act']);
$arreglo_marcas = array (
	19=>'CANNON',
	18=>'HP',
 	9=>'DELL',
	14=>'XEROX',
	16=>'EPSON',
	17=>'KODAK',
	20=>'LENOVO',
	15=>'LEXMARK',
	11=>'WESTERN DIGITAL',
);

$arreglo_modelos = array (
	27=>'COMPAQ DC7800',
	28=>'COMPAQ PRO 6305 SFF',
 	26=>'DR-2050C',
	1=>'ELITEDESK 705 G1 SFF',
	16=>'ELITEDESK 705 G2',
	22=>'FX-2190',
	11=>'HDTG',
	25=>'LASERJET 5000 COLOR',
	30=>'LASERJET M401DNE',
	21=>'MX711DE',
	20=>'OFFICEJET PRO 8100',
	17=>'OPTIPLEX 620',
	7=>'OPTIPLEX 745',
	13=>'OPTIPLEX 9010',
	12=>'OPTIPLEX 960',
	2=>'OPTIPLEX 990',
	31=>'OPTIPLEX GX 620',
	29=>'OPTIPLEX GX280',
	23=>'PHOTOSMART C7280',
	28=>'PROBOOK 640 G1',
	19=>'PROBOOK 645 G2',
	24=>'X656DE',
);

$arreglo_ubicacion = array (
	65=>'CAC PLAYAS',
	145=>'OYM',
	99=>'EGRESOS',
	102=>'CAJAS',
	70=>'CAC PLAZA RIO',
	66=>'CAC RIO',
	64=>'CAC 5 Y 10',
	74=>'CAC ROSARITO',
	73=>'CAC TECATE',
	86=>'CAC CABO',
	87=>'CAC SAN JOSE',
	158=>'CAE LOS CABOS',
	77=>'CAC MEXICALI 1',
	78=>'CAC MEXICALI 2',
	79=>'CAC MEXICALI 3',
	80=>'CAC MEXICALI 4',
	81=>'CAC SAN LUIS RIO COLORADO',
	82=>'CAC LA PAZ 1',
	83=>'CAC LA PAZ 2',
	84=>'CAC LA PAZ 3',
	54=>'CCT RIO',
	54=>'CCT PLAZA RIO',
	82=>'CAC LA PAZ 1',
	68=>'CAC MONARCA',
	146=>'CAE RIO',
	106=>'CAE MEXICALI',
	76=>'CAC ENSENADA 2',
	75=>'CAC ENSENADA 1',
	58=>'CAD 5 Y 10 (DISTRIBUCION)',
	76=>'CAC ENSENADA 2',
	67=>'CAC MACROPLAZA',
);

// http://www.aprenderaprogramar.com/index.php?option=com_content&view=article&id=570:arrays-asociativos-en-php-arreglos-concepto-y-formas-de-declaracion-y-uso-ejercicios-resueltos-cu00825b&catid=70&Itemid=193

//$arreglo_marcas[1] = 'DELL';

// Se obtienen el número total de elementos de los arreglo_modelos
//$total_marcas = count($arreglo_marcas);
//$total_modelos = count($arreglo_modelos);

class actualizar
{
	public $opcion;
	public $indice;

	function actualiza_datos()
	{
		$opcion = $this->opcion;
		$indice = $this->indice;
		$indice_letra = (string)$indice;
/*
		echo '<br/>';
		echo 'Valor de opcion = '.$opcion;
		//Pasandolo el valor de "Indice" de nuevo a cadena.

		echo 'Valor de indice = '.$indice_letra;
		echo '<br/>';
*/

		$model = new Crud;
		$model->update = "t_inventario_temporal2";
		//$model->set  = "Marca_g='$indice_letra'";
		//$model->condition = "Marca_g='$opcion'";
		//$model->set  = "Modelo_g='$indice_letra'";
		//$model->condition = "Modelo_g='$opcion'";
		$model->set  = "Ubicacion='$indice_letra'";
		$model->condition = "Ubicacion='$opcion'";
		$model->Update();

	}
}

$actualizador = new actualizar;

// Recorrido de los arreglos.
for ($i=0;$i<200;$i++)
{
// if (!empty($arreglo_marcas[$i]))
// if (!empty($arreglo_modelos[$i]))
	if (!empty($arreglo_ubicacion[$i]))
	{
		// Se obtiene el valor de la cadena del indice del arreglo asociativo
		//$actualizador->opcion = $arreglo_marcas[$i];
		//$actualizador->opcion = $arreglo_modelos[$i];
		$actualizador->opcion = $arreglo_ubicacion[$i];
		$actualizador->indice = $i;
		$actualizador->actualiza_datos();
	}
}

// http://aprende-web.net/php/php6_2.php


/*

switch ($i)
	{
		case 19:
		//$actualizador->opcion = $arreglo_marcas[$i];
		//$actualizador->indice = $i;
		$actualizador->actualiza_datos();
		break;
	}

*/


?>
