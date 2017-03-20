<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{

		//require_once('../fpdf181/fpdf.php');
		include_once('pdf.php');
		require_once("../../../php/conexion.php");
		require_once("../../../php/Crud.php");


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

		// Imprimiendo el contenido de la tabla:
		$model = new Crud;
		$model->select = "procesador,velocidad,memoria,disco_duro";
		$model->from = 't_espef_cpu';
		$model->condition = '';
		$model->orderby = 'procesador';
		$model->Read();
		$filas = $model->rows;

		// utf8_decode(Texto) = Para que imprima las cadenas con caracteres de acentos y ñ.

		$pdf->SetFont('Times','','8');

		foreach($filas as $fila)
		{

			$pdf->SetX(1);
			$pdf->Cell(4.5,0.5,utf8_decode($fila['procesador']),0,0,'C');
			$pdf->SetX(5.5);
			//$pdf->MultiCell(6.2,0.5,utf8_decode($fila['nombre_emp']),0,'L',false);
			$pdf->Cell(4.5,0.5,utf8_decode($fila['velocidad']),0,0,'C');
			$pdf->SetX(10);
			$pdf->Cell(4.5,0.5,utf8_decode($fila['memoria']),0,0,'C');
			$pdf->SetX(14.5);
			$pdf->Cell(4.5,0.5,utf8_decode($fila['disco_duro']),0,0,'C');
			$pdf->Ln(0.5);
		}

		$pdf->Output();
		
	}
}

?>
