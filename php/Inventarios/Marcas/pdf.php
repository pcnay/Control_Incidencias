<?php
include_once('../../../fpdf181/fpdf.php');

class PDF extends FPDF
{

	// Cabecera de página.
	function Header()
	{
		// Imprimiendo el logo
		// imagen(Archivo,XEsqSupIzq,YEsqSupIzq,AnchoImagen,AltoImagen)
		 $this->Ln(0.5);
		 $this->SetFont('Arial','B',15);												
		 $this->Cell(20,0.5,'REPORTE DE MARCAS',0,0,'C');
		 
		$this->Image('../../../Imagen/logo_servinext.png',1,1,4.5,1.5);
		$this->Image('../../../Imagen/logo_telcel.png',16,1,4.5,1.5);

		//Line(Columna(X),Renglon(Y),Columna2(X2),Renglon2(Y2))
		$this->SetLineWidth(0.05);
		$this->Line(1,2.8,20.5,2.8);
		$this->SetLineWidth(0.05);
		//Line(Columna(X),Renglon(Y),Columna2(X2),Renglon2(Y2))		
		$this->Line(1,3,20.5,3);
		$this->SetFont('Arial','B',15);
		$this->Ln(0.5);
		// Titulo
		// Cell(AnchoCelda,AltoCelda,Texto,Border(0=Sin borde, 1=Borde),SALTO LINEA(0=SIN SALTO, 1=SALTO),Alineado(Izq,Centro,Der),Rellenado(1=SI, 2=NO))
		$this->SetFont('Arial','',9);
		$fecha = "Tijuana B.C. : ".date("j")." / ".date("M")." / ".date("Y");
		$this->Cell(20,0.5,$fecha,0,0,'C',0);
		//$this->Ln(2.1); // Espacios del titulo, logos. 
		$this->SetFont('Times','B','10');
		$this->SetFillColor(232,232,232);
		$this->Ln(1.5);
		$this->SetX(4.5);
		$this->Cell(2.5,0.5,"ID MARCA",1,0,'C',1);
		$this->SetX(7);
		$this->Cell(9,0.5,"NOMBRE DE LA MARCA",1,0,'C',1);
		$this->Ln(0.5);
		
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
