<?php
	//require_once('../fpdf181/fpdf.php');
	include_once('pdf.php');
	require_once("../../php/conexion.php");
	require_once("../../php/Crud.php");

$cac = $_POST['nombre_cac']; //
$componente = $_POST['componente'];

switch ($cac)
	{
		case 68:
			$cac = "CAC MONARCA";
			break;
		case 64:
			$cac = "CAC 5 Y 10";
			break;
		case 86:
			$cac = "CAC CABO SAN LUCAS";
			break;
		case 85:
			$cac = "CAC CIUDAD CONSTITUCION";
			break;
		case 75:
			$cac = "CAC ENSENADA 1";
			break;
		case 76:
			$cac = "CAC ENSENADA 2";
			break;
		case 82:
			$cac = "CAC LA PAZ 1";
			break;
		case 83:
			$cac = "CAC LA PAZ 2";
			break;
		case 84:
			$cac = "CAC LA PAZ 3";
			break;
		case 67:
			$cac = "CAC MACROPLAZA / STT TIJUANA";
			break;
		case 77:
			$cac = "CAC MEXICALI 1";
			break;
		case 78:
			$cac = "CAC MEXICALI 2";
			break;
		case 79:
			$cac = "CAC MEXICALI 3";
			break;
		case 80:
			$cac = "CAC MEXICALI 4";
			break;
		case 72:
			$cac = "CAC OTAY";
			break;
		case 71:
			$cac = "CAC PASEO 2000";
			break;
		case 65:
			$cac = "CAC PLAYAS";
			break;
		case 70:
			$cac = "CAC PLAZA RIO";
			break;
		case 66:
			$cac = "CAC RIO";
			break;
		case 74:
			$cac = "CAC ROSARITO";
			break;
		case 87:
			$cac = "CAC SAN JOSE DEL CABO";
			break;
		case 81:
			$cac = "CAC SAN LUIS RIO COLORADO";
			break;
		case 69:
			$cac = "CAC SANTA FE";
			break;
	case 73:
			$cac = "CAC TECATE";
			break;
	case 57:
			$cac = "CAD LA PAZ";
			break;
	case 56:
			$cac = "CAC MEXICALI";
			break;
	case 58:
			$cac = "CAD TIJUANA";
			break;
	default:
		$cac = "ALFER";

	}

if ($componente == 'T')
	{
		$condicional = "Ubicacion='$cac'";
		$ordenar = '';
	}
else
	{
		$condicional = "Componente='$componente' AND Ubicacion='$cac'";
		$ordenar = '';
	}


/* 

	Son medidas para los reportes en escala de "cms".
	// SetXY(X,Y)
	$pdf->SetXY(0,0);

	// Cell(AnchoCelda,AltoCelda,Texto,Border(0=Sin borde, 1=Borde),SALTO LINEA(0=SIN SALTO, 1=SALTO),Alineado(Izq,Centro,Der),Rellenado(1=SI, 2=NO))


	$pdf->Cell(21.5,0.5,'X=0,Y=0 CMS INICIO Y FIN DE LA HOJA A 21.5 CMS.',1,0,'C');

	$pdf->SetXY(0,12.5);
	$pdf->Cell(21.5,0.5,'X=0,Y=12.5 MITAD DEL DOCUMENTO, IMPRESORA HP LJ 401 DNE',1,0,'C');
	$pdf->SetXY(10.75,13.0);
	$pdf->Cell(10.75,0.5,'X=10.75,Y=13 MITAD VERTICAL, IMP. LJ401 DNE',1,0,'C');

	$pdf->SetXY(0,24.5);
	$pdf->Cell(21.5,0.5,'X=0, Y=24.5 cms RENGLON FINAL DEL TEXTO',1,0,'C');

	*/ 

	// P = Portrait (Vertical); L = Landscape (Horizontal), 'mm(medida), Tamaño Papel(A4, Letter, Legal)'	
	$pdf = new PDF('L','cm','Letter');
	$pdf->AliasNbPages();
	$pdf->Addpage();

	// Imprimiendo el contenido de la tabla:
	$model = new Crud;
	$model->select = 'IP,Inventario_g,Marca_g,Modelo_g,Serie_g,Usuario_Univ,Posicion,Ubicacion,Nomenclatura';
	$model->from = 't_inventario_temporal';
	$model->condition = $condicional;
	$model->orderby = $ordenar;
	$model->Read();
	$filas = $model->rows;
	$total = count($filas);

	// utf8_decode(Texto) = Para que imprima las cadenas con caracteres de acentos y ñ.
	// MultiCell(AnchoCelda,AltoCelda,Texto,Border(0=Sin Borde, 1=Con Borde),Alineado,Relleno)
	if ($total >0)
	{
		foreach($filas as $fila)
		{
			$pdf->SetFont('Times','','8');
			$pdf->SetX(1);
			$pdf->Cell(1.8,0.5,utf8_decode($fila['IP']),0,0,'L');
			$pdf->SetX(2.8);
			$pdf->Cell(1.8,0.5,utf8_decode($fila['Inventario_g']),0,0,'L');
			$pdf->SetX(4.6);		
			$pdf->Cell(1.5,0.5,utf8_decode($fila['Marca_g']),0,0,'L');
			$pdf->SetX(6.1);		
			$pdf->Cell(3.9,0.5,utf8_decode($fila['Modelo_g']),0,0,'L');		
			$pdf->SetX(9.6);
			$pdf->Cell(3,0.5,utf8_decode($fila['Serie_g']),0,0,'L');		
			$pdf->SetX(12.6);
			$pdf->Cell(3,0.5,utf8_decode($fila['Usuario_Univ']),0,0,'L');						
			$pdf->SetX(15.6);
			$pdf->Cell(4,0.5,utf8_decode($fila['Posicion']),0,0,'L');								
			$pdf->SetX(19.6);
			$pdf->Cell(3.8,0.5,utf8_decode($fila['Nomenclatura']),0,0,'L');
			$pdf->SetX(22.9);
			$pdf->Cell(3,0.5,utf8_decode($fila['Ubicacion']),0,1,'L');
		}
	}

	$pdf->Output();

?>

