<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
?>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Componentes De Computadora</title>
  <link href="../css/estilo.css" rel="stylesheet">
  <script src="../js/jquery-3.1.1.js"></script>
  <script src="../js/myjava.js"></script>
  <link href="../bootstrap-3.3.7/css/bootstrap.css" rel="stylesheet">
  <link href="../bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <link href="../bootstrap-3.3.7/css/bootstrap-theme.css" rel="stylesheet">
  <link href="../bootstrap-3.3.7/css/bootstrap-theme.min.css" rel="stylesheet">
  <script src="../bootstrap-3.3.7/js/bootstrap.min.js"></script>
  <script src="../bootstrap-3.3.7/js/bootstrap.js"></script>
  </head>
  <body>
      <header>CAPTURAS DE COMPONENTES DE COMPUTADORA</header>
      <section>
      <table border="0" align="center">
      	<tr>
          	<td width="335"><input type="text" placeholder="IP, Inventario, Serial, CAC " id="bs-componente"/></td>
              <td width="100"><button id="nuevo-componente" class="btn btn-primary">Nuevo</button></td>
              <td width="100"><a target = "_blank" href="../php/Inventarios/Componentes/Opcion_reportes.php" class="btn btn-info" id="opcion_imprimir">Imprimir</a></td>
              <td width="100"><button id="menu_gral" class="btn btn-success">Menu</button></td>
              <td width="100"><button id="salir" class="btn btn-danger">Salir</button></td>
          </tr>
      </table>
      </section>

      <div class="registros" id="agrega-componente">
              <?php
                  require_once ('../php/conexion.php');
                  require_once ('../php/crud.php');

                  //ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS
                  $mostrar = new Desplegar_tabla;
                  $mostrar->nombre_tabla = 't_componente_comp';
                  $mostrar->buscar_cadena = false;
                  $mostrar->texto_buscar = '';
                  $mostrar->Mostrar_contenido();

              ?>
      </div>

      <!-- MODAL PARA EL REGISTRO LA MARCA -->
      <div class="modal fade" id="registra-componente" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><b>Registra o Edita Un Componente</b></h4>
              </div>
              <form id="formulario" class="formulario" onsubmit="return agregaComponente();">
              <div class="modal-body">
  				<table border="0" width="100%">
                 		 <tr>
                          <td colspan="2"><input type="text" required="required" readonly="readonly" id="id_componente_comp" name="id_componente_comp" readonly="readonly" style="visibility:hidden; height:5px;"/></td>
                      </tr>
                       <tr>
                      	<td width="150">Proceso: </td>
                          <td><input type="text" required="required" readonly="readonly" id="pro" name="pro"/></td>
                      </tr>
                      <tr>
                  	   	<td>Nomenclatura : </td>
                          <td><input type="text" name="nomenclatura" id="nomenclatura" maxlength="45"/></td>
                      </tr>
                      <tr>
                  	   	<td>IP : </td>
                          <td><input type="text" name="ip" id="ip" maxlength="30"/></td>
                      </tr>
                      <tr>
                  	   	<td>Serial : </td>
                          <td><input type="text" required="required" name="serial" id="serial" maxlength="45"/></td>
                      </tr>
                      <tr>
                  	   	<td>Inventario : </td>
                          <td><input type="text" name="inventario" id="inventario" maxlength="20"/></td>                    </tr>
                      <tr>
                  	   	<td>Posicion : </td>
                          <td><input type="text" name="posicion" id="posicion" maxlength="45"/></td>                    </tr>
                      <tr>
                          <td>Usuario : </td>
                          <td><select id="id_usuario" name="id_usuario"></select></td>
                      </tr>
                      <tr>
                          <td>Componente : </td>
                          <td><select id="id_componente" name="id_componente"></select></td>                    </tr>
                      <tr>
                          <td>Marca : </td>
                          <td><select id="id_marca" name="id_marca"></select></td>
                      </tr>
                      <tr>
                          <td>Modelo : </td>
                          <td><select id="id_modelo" name="id_modelo"></select></td>
                      </tr>
  								<!--
                      <tr>
                          <td>Especificaciones: </td>
                          <td><select id="id_especif" name="id_especif"></select></td>
                      </tr>
                   -->
                      <tr>
                      	<td colspan="2">
                         	    <div id="mensaje"></div>
                          </td>
                      </tr>

                  </table>
              </div>

              <div class="modal-footer">
              	<input type="submit" value="Registrar" class="btn btn-success" id="reg"/>
                  <input type="submit" value="Grabar" class="btn btn-warning"  id="edi"/>
              </div>
              </form>
            </div>

          </div>

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
