<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{

	//require_once('../fpdf181/fpdf.php');
	include_once('../../php/Puestos/pdf.php');
	require_once("../../php/conexion.php");
	require_once("../../php/Crud.php");


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
	$pdf = new PDF('P','cm','Letter');
	$pdf->AliasNbPages();
	$pdf->Addpage();
	/*
	$pdf->Ln(0.5);
	$pdf->SetX(4.5);
	$pdf->Cell(2.5,0.5,"ID PUESTO",1,0,'C',1);
	$pdf->SetX(7);
	$pdf->Cell(9,0.5,"NOMBRE PUESTO",1,0,'C',1);
	$pdf->Ln(0.5);
	*/

	// Imprimiendo el contenido de la tabla:
	$model = new Crud;
	$model->select = "id_puesto,nombre";
	$model->from = 't_puesto';
	$model->orderby = 'nombre';
	$model->Read();
	$filas = $model->rows;
	//$total = count($filas);
	foreach($filas as $fila)
	{
		$pdf->SetFont('Times','','10');
		$pdf->SetX(4.5);
		$pdf->Cell(2.5,0.5,$fila['id_puesto'],1,0,'C');
		$pdf->SetX(7);
																			// 1 = Salto de Líne
		$pdf->Cell(9,0.5,$fila['nombre'] ,1,1,'C');
	}


	$pdf->Output();

	}
}

?>
