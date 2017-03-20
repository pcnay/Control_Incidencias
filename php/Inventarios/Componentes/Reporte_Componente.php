<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	if ($_POST != "" && !empty($_POST))
	{

		//require_once('../fpdf181/fpdf.php');
		include_once('pdf.php');
		require_once("../../../php/conexion.php");
		require_once("../../../php/Crud.php");

	$cac = $_POST['nombre_cac']; //
	//$componente = $_POST['componente'];

echo $cac;


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

	}
}

?>
