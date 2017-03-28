<?php
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
	$model->select = "t_usuarios.num_usuario,t_usuarios.nombre_emp,t_usuarios.num_tel,t_usuarios.num_ext,t_usuarios.correo_electronico,t_usuarios.t_puesto_id_puesto,t_usuarios.t_departamento_id_depto,t_puesto.nombre AS nombre_puesto,t_departamento.nombre AS nombre_depto";
	$model->from = 't_usuarios INNER JOIN t_puesto ON t_usuarios.t_puesto_id_puesto = t_puesto.id_puesto INNER JOIN t_departamento ON t_usuarios.t_departamento_id_depto = t_departamento.id_depto';					
	$model->condition = '';
	$model->orderby = 't_usuarios.nombre_emp';
	$model->Read();
	$filas = $model->rows;

	// utf8_decode(Texto) = Para que imprima las cadenas con caracteres de acentos y ñ.

	$pdf->SetFont('Times','','8');

	foreach($filas as $fila)
	{

		$pdf->SetX(1);
		$pdf->Cell(1.9,0.5,utf8_decode($fila['num_usuario']),0,0,'L');
		$pdf->SetX(2.5);
		//$pdf->MultiCell(6.2,0.5,utf8_decode($fila['nombre_emp']),0,'L',false);
		$pdf->Cell(6.2,0.5,utf8_decode($fila['nombre_emp']),0,0,'L');
		$pdf->SetX(10.1);	
		$pdf->Cell(2.3,0.5,utf8_decode($fila['num_tel']),0,0,'L');
		$pdf->SetX(12.4);
		$pdf->Cell(2.3,0.5,utf8_decode($fila['num_ext']),0,0,'L');	
		$pdf->SetX(13.4);
		$pdf->Cell(4.5,0.5,utf8_decode($fila['correo_electronico']),0,0,'L');	
		$pdf->SetX(18.9);
		$pdf->Cell(2.7,0.5,utf8_decode($fila['nombre_puesto']),0,0,'L');	
		$pdf->SetX(21.5);
		$pdf->Cell(6.8,0.5,utf8_decode($fila['nombre_depto']),0,0,'L');	
		// MultiCell(AnchoCelda,AltoCelda,Texto,Border(0=Sin Borde, 1=Con Borde),Alineado,Relleno)		
		$pdf->Ln(0.5);
	}
	
	$pdf->Output();

?>

