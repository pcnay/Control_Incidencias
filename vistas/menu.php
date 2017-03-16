
<?php
session_start();
  if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
  {?>

  <!DOCTYPE html>
  <html lang="en">
    <head>
    	<meta charset ="UTF-8">
      <title>Menu de navegacion Desplegable</title>
      <!-- Es inmportante que el archivo estilo_menu_nav.css (stylus.css) debe estar dentro de la carpeta fonts
    ya que se bajo la carpeta "fonts" y "styls.css" -->

      <link rel = "stylesheet" type = "text/css" href = "../css/estilo.css"/>
      <link rel = "stylesheet" type = "text/css" href = "../css/fonts/estilo_menu_nav.css"/>

    </head>

    <body>
      <header>
        <nav>
          <ul>

            <li><a href = "#"><span class = "primero"><i class = "icon-home"></i></span>Capturas</a>

              <ul>
                <li><a href = "../php/Subir_Archivos_CSV/index.php">Subir Archivos CSV</a></li>
                <li><a href = "index_usuario.php">Usuarios</a></li>
                <li><a href = "index_gerencia.php">Gerencia</a></li>
                <li><a href = "index_puesto.php">Puestos</a></li>
                <li><a href = "index_depto.php">Departamentos</a></li>
                <li><a href = "index_usuario.php">Usuarios</a></li>
                <li><a href = "index_componentes.php">Componentes</a></li>                
              </ul>

            <li><a href = "#"><span class = "segundo"><i class = "icon icon-tag"></i></span>Busquedas</a>
              <ul>
                <li><a href = "../../busquedas/index.php#">Buscar Equipo</a></li>
                <li><a href = "#">Item #2</a></li>
                <li><a href = "#">Item #3</a></li>
              </ul>



            <li><a href = "#"><span class = "cuarto"><i class = "icon icon-text"></i></span>Acerca De </a></li>
            <li><a href = "#"><span class = "tercero"><i class = "icon icon-suitcase"></i></span>Salir</a>
            <ul>
              <li><a href = "../php/login/Logout.php">Terminar la Sesion Del Sistema</a></li>
            </ul>
        </nav>

      </header>

    </body>

  </html>

<?php

  }
  else
  {
    header("location:index_login.php");
  }
 ?>
