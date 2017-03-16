<?php
session_start();
if (isset($_SESSION['ingreso']) && $_SESSION['ingreso']=='YES')
{
?>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Usuarios</title>
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
  <!-- <body onload="cargarDepto();"> -->
  <body>
      <header>CAPTURAS DE USUARIOS</header>
      <section>
      <table border="0" align="center">
      	<tr>
          	<td width="335"><input type="text" placeholder="Buscar un Usuario" id="bs-usuario"/></td>
            <td width="40"></td>
            <td width="100"><button id="nuevo-usuario" class="btn btn-primary">Nuevo</button></td>
            <td width="100"><a target = "_blank" href="../php/Usuarios/Reporte_usuario.php" class="btn btn-info">Imprimir</a></td>
            <td width="100"><button id="menu_gral" class="btn btn-success">Menu</button></td>
            <td width="100"><button id="salir" class="btn btn-danger">Salir</button></td>
          </tr>
      </table>
      </section>

      <div class="registros" id="agrega-registros">
          <!-- <table class="table table-striped table-condensed table-hover"> -->
          <!--
              <tr>
                  <th width="280">Nombre</th>
                  <th width="160">Horario</th>
                  <th width="400">ubicacion</th>
                  <th width="150">Gerencia</th>
                  <th width="50">Opciones</th>
              </tr>
          -->

              <?php
                  require_once ('../php/conexion.php');
                  require_once ('../php/crud.php');

                  //ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS
                  $mostrar = new Desplegar_tabla;
                  $mostrar->nombre_tabla = 't_usuarios';
                  $mostrar->buscar_cadena = false;
                  $mostrar->texto_buscar = '';
                  $mostrar->Mostrar_contenido();

              ?>
          <!-- </table> -->

      </div>

      <!-- MODAL PARA EL REGISTRO DE PRODUCTOS-->
      <div class="modal fade" id="registra-usuario" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><b>Registra o Edita Un Usuario</b></h4>
              </div>
              <form id="formulario" class="formulario" onsubmit="return agregaUsuario();">
              <div class="modal-body">
  				<table border="0" width="100%">
                 		 <tr>
                          <td colspan="2"><input type="text" required="required" readonly="readonly" id="id_usuario" name="id_usuario" readonly="readonly" style="visibility:hidden; height:5px;"/></td>
                      </tr>
                       <tr>
                      	<td width="150">Proceso: </td>
                          <td><input type="text" required="required" readonly="readonly" id="pro" name="pro"/></td>
                      </tr>
                      <tr>
                  		<td>Usuario Universal: </td>
                          <td><input type="text" name="usuario_univ" id="usuario_univ" maxlength="15" autofocus/></td>
                      </tr>
                      <tr>
                          <td>Número Usuario : </td>
                          <td><input type="text" name="num_usuario" id="num_usuario" /></td>
                      </tr>
                      <tr>
                          <td>Nombre : </td>
                          <td><input type="text" name="nombre" id="nombre" maxlength="45"/></td>
                      </tr>
                      <tr>
                          <td>Número Tel.: </td>
                          <td><input type="text" name="num_tel" id="num_tel" maxlength="15"/></td>
                      </tr>
                      <tr>
                          <td>Número Ext : </td>
                          <td><input type="text" name="num_ext" id="num_ext" maxlength="15"/></td>
                      </tr>
                      <tr>
                          <td>Correo Electrónico : </td>
                          <td><input type="text" name="correo_elect" id="correo_elect" maxlength="50"/></td>
                      </tr>
                      <tr>
                          <td>Comentarios : </td>
                          <td><textarea name = "comentario" id ="comentario" cols = "40" rows = "10"></textarea></td>
                      </tr>
                      <tr>
                          <td>Departamento : </td>
                          <td><select id="id_departamento" name="id_departamento"></select></td>
                      </tr>
                      <tr>
                          <td>Puesto : </td>
                          <td><select id="id_puesto" name="id_puesto"></select></td>
                      </tr>
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
