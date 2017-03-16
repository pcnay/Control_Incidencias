<!DOCTYPE html>
<html lang = "en">
	<head>
		<meta charset = "UTF-8">
		<title>Subir archivos de Excel en PHP</title>

		<!-- Se usa codigo de Java script para validar la etiqueta "file" -->
		<script type = "text/javascript">
			function subirArchivoExcel()
			{
				if (document.frmSubirArchivo.excel.value=="")
				{
					alert("Error, Debe Subir Un Archivo");
					document.frmSubirArchivo.excel.focus();
					return false;
				}

				document.frmSubirArchivo.action="Procesar.php";
				//document.frmSubirArchivo.action="procesar.php"; Para los inventario se activa esta línea
				document.frmSubirArchivo.submit();

			}

		</script>

	</head>
	<body>
		<articule>
			<section>
				<!-- Con la opción "multipart/form-data", se puede subir imagenes, documentos, hojas de calculo -->
				<form name = "frmSubirArchivo" method="POST" enctype="multipart/form-data">

					<p>Archivo Excel </p>
					<!-- Muestra una barra con el boton de "examinar" -->
					<p><input type = "file" name ="excel" /></p> 

					<p><input type = "button" value ="Subir Archivo" onclick ="subirArchivoExcel();"/></p>

				</form>

			</section>

		</articule>

	</body>

</html>


