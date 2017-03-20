<?php
include_once('fpdf.php');

class PDF extends FPDF
{

	// Cabecera de página.
	function Header()
	{
		// Imprimiendo el logo
		// imagen(Archivo,XEsqSupIzq,YEsqSupIzq,AnchoImagen,AltoImagen)
																									//10,8
		$this->Image('../../Imagen/logo_servinext.png',0,0,4.5,1.5);
		$this->Image('../../Imagen/logo_telcel.png',17,0,4.5,1.5);

		//Line(Columna(X),Renglon(Y),Columna2(X2),Renglon2(Y2))
		$this->SetLineWidth(0.05);
		$this->Line(0,1.8,24,1.8);
		$this->SetLineWidth(0.05);
		//Line(Columna(X),Renglon(Y),Columna2(X2),Renglon2(Y2))		
		$this->Line(0,2.1,24,2.1);
		$this->SetFont('Arial','B',15);
		// Titulo
		// Cell(AnchoCelda,AltoCelda,Texto,Border(0=Sin borde, 1=Borde),SALTO LINEA(0=SIN SALTO, 1=SALTO),Alineado(Izq,Centro,Der),Rellenado(1=SI, 2=NO))
		 $this->Cell(20,0.5,'REPORTE DE GERENCIAS',0,0,'C');
		 $this->Ln(0.5);
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
