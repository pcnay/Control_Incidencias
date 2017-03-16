<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
	?>
		<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
		<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Opciones Del Reporte</title>
		<link href="../../../css/estilo.css" rel="stylesheet">
		<script src="../../../js/jquery-3.1.1.js"></script>
		<script src="../../../js/myjava.js"></script>
		<link href="../../../bootstrap-3.3.7/css/bootstrap.css" rel="stylesheet">
		<link href="../../../bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link href="../../../bootstrap-3.3.7/css/bootstrap-theme.css" rel="stylesheet">
		<link href="../../../bootstrap-3.3.7/css/bootstrap-theme.min.css" rel="stylesheet">
		<script src="../../../bootstrap-3.3.7/js/bootstrap.min.js"></script>
		<script src="../../../bootstrap-3.3.7/js/bootstrap.js"></script>
		<script>
/*
			// Se cargan las funciones al terminar de cargarse la pagina
			window.onload = function()
			{
				obtener_cac();
				obtener_partecomp();
			};

*/

/*

			if (document.addEventListener)
			{
		        window.addEventListener('load',obtener_cac,false);
		        //window.addEventListener('load',obtener_partecomp,false);
		    }
			else
			{
		     window.attachEvent('onload',obtener_cac);
		     //window.attachEvent('onload',obtener_partecomp);
		    }
*/

		// funcion de Simon Willison
		function addLoadEvent(func) {
		    var oldonload = window.onload;
		    if (typeof window.onload != 'function') {
		        window.onload = func;
		    }
		    else {
		        window.onload = function() {
		            oldonload();
		            func();
		        }
		    }
		}
		addLoadEvent(obtener_cac);
		//addLoadEvent(obtener_partecomp);

		</script>

		</head>

		    <!-- <body onload="obtener_cac();"> -->
		    <body>
		        <div class="wrap">
		            <header>
		                <!-- <a href="../index.php"><img src="../img/logoSS.png"/> </a> -->
		                <h1>Opciones Para Obtener Reportes </h1>
		            </header>

		            <section id="formulario">
		                <form  id="form_rep" method="post" ACTION="../../../php/Inventarios/Componentes/Reporte_Componente.php" target="_blank">
		                <br>
		                <br>
		                    <p>Seleccionar CAC's</p>
												<!-- <select id="obtener_cac" name="obtener_cac"></select> -->
		                    <div id="obtener_cac"></div>
		                    <br>
		                    <p>Seleccionar el Componente</p>
												<!-- <select id="obtener_partecomp" name="obtener_partecomp"></select> -->
		                    <div id="obtener_partecomp"></div>

		<!--
		                    <div id="div_componente">
		                        <p>Componente a Buscar</p>

		                      <select name="componente" id="componente">
		                        <option selected value="C">Computadora</option>
		                        <option value="I">Impresora</option>
		                        <option value="E">Escaner</option>
		                        <option value="IT">Imp. De Tickets</option>
		                        <option value="T">Todos</option>
		                      </select>
		-->
		                      <br/><br/>

		                    </div>

		                    <input name="buscar" type="submit" class="generarBorrar" value="Imprimir Reporte" >
		                    <input type="reset" value="Borrar" class="generarBorrar">

		                </form>

		            </section>

		        </div>

		    </body>

		</html>

<?php
}
else
{
  header("location:index_login.php");
}
?>
