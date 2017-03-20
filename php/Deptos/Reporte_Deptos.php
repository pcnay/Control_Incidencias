<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
		//require_once('../fpdf181/fpdf.php');
		include_once('pdf.php');
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
		$pdf = new PDF('L','cm','Letter');
		$pdf->AliasNbPages();
		$pdf->Addpage();

		// Imprimiendo el contenido de la tabla:
		$model = new Crud;
		$model->select = "t_departamento.id_depto,t_departamento.nombre,t_departamento.horario,t_departamento.ubicacion,t_gerencia.nombre AS nombre_depto";
		$model->from = 't_departamento INNER JOIN t_gerencia ON t_departamento.gerencia_id_gerencia = t_gerencia.id_gerencia';
		$model->orderby = 't_departamento.nombre';
		$model->Read();
		$filas = $model->rows;

		// utf8_decode(Texto) = Para que imprima las cadenas con caracteres de acentos y ñ.

		foreach($filas as $fila)
		{
			$pdf->SetFont('Times','','8');
			$pdf->SetX(1);
			$pdf->Cell(6.5,0.5,utf8_decode($fila['nombre']),0,0,'L');
			$pdf->SetX(7.5);
			$pdf->Cell(4.2,0.5,utf8_decode($fila['horario']),0,0,'L');
			$pdf->SetX(11.7);

			$pdf->Cell(7,0.5,utf8_decode($fila['nombre_depto']),0,'L',false);
			$pdf->SetX(18);
			// MultiCell(AnchoCelda,AltoCelda,Texto,Border(0=Sin Borde, 1=Con Borde),Alineado,Relleno)
			$pdf->MultiCell(9,0.5,utf8_decode($fila['ubicacion']),0,'L',false);
			$pdf->Ln(0.5);
		}


		$pdf->Output();
}
else
{
	header("location:../../vistas/index_login.php");
}

?>
