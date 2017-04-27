<?php
// Base de Datos = "Agenda", Tabla = "agenda_datos".
/*
Los campos son :
idagenda
nombres VarChar(100);
apellidos Varchar(100);
direccion VarChar(100);
celular VarChar(100);
email VarChar(100);


 */

	//$cn = mysql_connect("localhost","tinexsn","Tinex2@16");
	//mysql_select_db("bd_sal_inst",$cn) or die (mysql_error());


 	class Conexion
 	{
 		protected $conexion_db;
 		public function Conexion()
 		{
 			try
 			{
 				$this->conexion_db = new PDO('mysql:host=localhost; dbname=bd_sal_inst','tinexsn','Tinex2@16');

 				$this->conexion_db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
 				$this->conexion_db->exec ("SET CHARACTER SET utf8");

 				return $this->conexion_db;
 			}
 			catch(Exception $e)
 			{
 				echo " La línea de error es".$e->getLine();
 			}
 		}
 	}

?>
