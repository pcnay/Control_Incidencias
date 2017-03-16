<?php
include_once('../../fpdf181/fpdf.php');

class PDF extends FPDF
{

	// Cabecera de página.
	function Header()
	{
		// Imprimiendo el logo
		// imagen(Archivo,XEsqSupIzq,YEsqSupIzq,AnchoImagen,AltoImagen)
		global $fecha;
		$this->Image('../../Imagen/logo_servinext.png',1,1,4.5,1.5);
		$this->Image('../../Imagen/logo_telcel.png',22.5,1,4.5,1.5);
		$this->SetFont('Arial','B',15);
		$this->Cell(27,0.5,'REPORTE DE COMPONENTE',0,0,'C');

		//Line(Columna(X),Renglon(Y),Columna2(X2),Renglon2(Y2))
		$this->SetLineWidth(0.05);
		$this->Line(1,2.8,27,2.8);
		$this->SetLineWidth(0.05);
		//Line(Columna(X),Renglon(Y),Columna2(X2),Renglon2(Y2))		
		$this->Line(1,3.1,27,3.1);
		$this->Ln(0.5);
		$this->SetFont('Arial','',9);
		$fecha = "Tijuana B.C. : ".date("j")." / ".date("M")." / ".date("Y");
		$this->Cell(27,0.5,$fecha,0,0,'C',0);
		$this->Ln(2.1); // Espacios del titulo, logos. 
		$this->SetFont('Times','B','7.5');
		$this->SetFillColor(232,232,232);
		$this->SetX(1);
		$this->Cell(1.8,0.5,"IP",1,0,'C',1);
		$this->SetX(2.8);
		$this->Cell(1.8,0.5,"INVENTARIO",1,0,'C',1);
		$this->SetX(4.6);	
		$this->Cell(1.5,0.5,"MARCA",1,0,'C',1);
		$this->SetX(6.1);
		$this->Cell(3.9,0.5,"MODELO",1,0,'C',1);	
		$this->SetX(9.6);
		$this->Cell(3,0.5,"SERIAL",1,0,'C',1);	
		$this->SetX(12.6);
		$this->Cell(3,0.5,"USUARIO UNIV",1,0,'C',1);	
		$this->SetX(15.6);
		$this->Cell(4,0.5,"POSICION",1,0,'C',1);
		$this->SetX(19.6);
		$this->Cell(3.8,0.5,"NOMENCLATURA",1,0,'C',1);
		$this->SetX(22.9);
		$this->Cell(3,0.5,"UBICACION",1,0,'C',1);

		$this->Ln(0.7); // Espacio del titulo y el texto a imprimir


	}
	function Footer()
	{
			// posicion a 1.5 cms. del final.
			$this->SetY(-1.5);
			// Arial Italic 8
			$this->SetFont('Arial','I',8);
			// Número de Página:
			$this->Cell(0,1,'Pagina '.$this->PageNo()." / {nb}",0,0,'C');

	}


}


?>
