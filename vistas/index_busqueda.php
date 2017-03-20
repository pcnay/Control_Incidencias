<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Busqueda de Componentes</title>
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
    <header>BUSQUEDAS COMPONENTES</header>
    <section>
    <table border="0" align="center">
    	<tr>
        	<td width="335"><input type="text" placeholder="Buscar por : IP, Serial, Inventario, Ubicacion " id="bs-componente"/></td>          
        </tr>
    </table>
    </section>

    <div class="registros" id="agrega-registros">
            <?php
                require_once ('../php/conexion.php');
                require_once ('../php/crud.php');            
                
                //ACTUALIZAMOS LOS REGISTROS Y LOS OBTENEMOS
                $mostrar = new Desplegar_tabla;
                $mostrar->nombre_tabla = 't_inventario_temporal';
                $mostrar->buscar_cadena = false;
                $mostrar->texto_buscar = '';        
                $mostrar->Mostrar_contenido();

            ?>
    </div>

    <!-- MODAL PARA EL REGISTRO DE PRODUCTOS-->
    <div class="modal fade" id="registra-depto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title" id="myModalLabel"><b>Registra o Edita Un Departamento</b></h4>
            </div>
            <form id="formulario" class="formulario" onsubmit="return agregaRegistro();">
            <div class="modal-body">
				<table border="0" width="100%">
               		 <tr>
                        <td colspan="2"><input type="text" required="required" readonly="readonly" id="id_depto" name="id_depto" readonly="readonly" style="visibility:hidden; height:5px;"/></td>
                    </tr>
                     <tr>
                    	<td width="150">Proceso: </td>
                        <td><input type="text" required="required" readonly="readonly" id="pro" name="pro"/></td>
                    </tr>
                	   	<td>Nombre: </td>
                        <td><input type="text" required="required" name="nombre" id="nombre" maxlength="50"/></td>
                    </tr>
                    <tr>
                        <td>Horario: </td>
                        <td><input type="text" required="required" name="horario" id="horario" maxlength="45"/></td>
                    </tr>
                    <tr>
                        <td>Ubicación : </td>
                        <td><textarea name = "ubicacion" id = "ubicacion" cols = "40" rows = "10"></textarea></td>
                    </tr>
                    <tr>
                        <td>Gerencia </td>
                        <td><select id="gerencia" name="id_gerencia"></select></td>                      
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
