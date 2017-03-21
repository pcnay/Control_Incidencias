$(function(){

	//$("document").ready(function(){
	//$( "#gerencia" ).load("../php/Deptos/cargar_gerencias.php");
	//});

	// Vallidacion de los campos de los Departamentos.
	//$("#nombre").on('change',fuction(){})

	$('#bd-desde').on('change', function(){
		var desde = $('#bd-desde').val();
		var hasta = $('#bd-hasta').val();
		var url = '../php/busca_producto_fecha.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'desde='+desde+'&hasta='+hasta,
		success: function(datos){
			$('#agrega-registros').html(datos);
		}
	});
	return false;
	});


	$('#bd-hasta').on('change', function(){
		var desde = $('#bd-desde').val();
		var hasta = $('#bd-hasta').val();
		var url = '../php/busca_producto_fecha.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'desde='+desde+'&hasta='+hasta,
		success: function(datos){
			$('#agrega-registros').html(datos);
		}
	});
	return false;
	});


$('#nuevo-puesto').on('click',function(){
		$('#formulario')[0].reset();
		$('#pro').val('Registro'); //Asigna el valor a la etiquete "Proceso"
		$('#edi').hide();
		$('#reg').show();
		$('#registra-puesto').modal({
			show:true,
			backdrop:'static'
		});
	});

	$('#bs-puesto').on('keyup',function(){
		var dato = $('#bs-puesto').val();
		var url = '../php/Puestos/busca_puesto.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'dato='+dato,
		success: function(datos){
			$('#agrega-puesto').html(datos);
		}
	});
	//return false;
	});


	$('#nuevo-gerencia').on('click',function(){
		$('#formulario')[0].reset();
		$('#pro').val('Registro'); //Asigna el valor a la etiquete "Proceso"
		$('#edi').hide();
		$('#reg').show();
		$('#registra-gerencia').modal({
			show:true,
			backdrop:'static'
		});
	});

	$('#bs-gerencia').on('keyup',function(){
		var dato = $('#bs-gerencia').val();
		var url = '../php/Deptos/busca_gerencia.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'dato='+dato,
		success: function(datos){
			$('#agrega-registros').html(datos);
		}
	});
	//return false;
	});


	$('#nuevo-depto').on('click',function(){
		$( "#id_gerencia" ).load("../php/Deptos/cargar_gerencias.php");
		$('#formulario')[0].reset();
		$('#pro').val('Registro'); //Asigna el valor a la etiquete "Proceso"
		$('#edi').hide();
		$('#reg').show();
		$('#registra-depto').modal({
			show:true,
			backdrop:'static'
		});
	});


	$('#bs-depto').on('keyup',function(){
		var dato = $('#bs-depto').val();
		var url = '../php/Deptos/busca_deptos.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'dato='+dato,
		success: function(datos){
			$('#agrega-registros').html(datos);
		}
	});
	//return false;
	});

	$('#menu_gral').on('click',function(){
		// Para redireccionar al menu principal
		location.href = 'vistas/../menu.php';
	});

	$('#salir').on('click',function(){
		// Para redireccionar al menu principal
		location.href = '../php/Login/logout.php';
	});

$('#nuevo-usuario').on('click',function(){
		// Cargar los dos combobox de la página "Departamentos" y "Puestos"
		$('#id_puesto').load("../php/Usuarios/cargar_puesto.php");
		$('#id_departamento').load("../php/Usuarios/cargar_depto.php");
		$('#formulario')[0].reset();
		$('#pro').val('Registro'); //Asigna el valor a la etiquete "Proceso"
		$('#edi').hide();
		$('#reg').show();
		document.getElementById("usuario_univ").focus();
		$('#registra-usuario').modal({
			show:true,
			backdrop:'static'
		});
	});

	$('#bs-usuario').on('keyup',function(){
		var dato = $('#bs-usuario').val();
		var url = '../php/Usuarios/busca_usuario.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'dato='+dato,
		success: function(datos){
			$('#agrega-registros').html(datos);
		}
	});
	//return false;
	});


// Seccion de Capturas de Marcas
	$('#nueva-marca').on('click',function(){
		$('#formulario')[0].reset();
		$('#pro').val('Registro'); //Asigna el valor a la etiquete "Proceso"
		$('#edi').hide();
		$('#reg').show();
		$('#registra-marcas').modal({
			show:true,
			backdrop:'static'
		});
	});

	$('#bs-marca').on('keyup',function(){
		var dato = $('#bs-marca').val();
		var url = '../php/Inventarios/marcas/buscar_marcas.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'dato='+dato,
		success: function(datos){
			$('#agrega-marcas').html(datos);
		}
	});
	//return false;
	});

// Seccion de Capturas de Modelos
	$('#nuevo-modelo').on('click',function(){
		$('#formulario')[0].reset();
		//$("#procesador").attr("Disabled","Disabled");
		//document.getElementById('procesador').disabled=true;
		//document.getElementById('velocidad').disabled=true;
		//document.getElementById('memoria').disabled=true;
		//document.getElementById('disco_duro').disabled=true;
		//$("#procesador").hide();
		$('#pro').val('Registro'); //Asigna el valor a la etiquete "Proceso"
		$('#edi').hide();
		$('#reg').show();
		$('#registra-modelo').modal({
			show:true,
			backdrop:'static'
		});
	});

	$('#bs-modelo').on('keyup',function(){
		var dato = $('#bs-modelo').val();
		var url = '../php/Inventarios/Modelos/buscar_modelo.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'dato='+dato,
		success: function(datos){
			$('#agrega-modelos').html(datos);
		}
	});
	//return false;
	});

	// Determina si el Checkbox esta "Seleccionado" o "Deseleccionado"
	$('#especif').on( 'change', function() {
    if( $(this).is(':checked') )
		 {
			 //$("#procesador").attr('Disabled',"");
				//$('#procesador').disabled = false;
				//document.getElementById('procesador').disabled=true;
				document.getElementById('procesador').disabled=false;
				document.getElementById('velocidad').disabled=false;
				document.getElementById('memoria').disabled=false;
				document.getElementById('disco_duro').disabled=false;
				//$("#procesador").show();

				//return false;

        //alert("El checkbox con valor " + $(this).val() + " ha sido seleccionado");
    	}
		 else
		  {
				//$("#procesador").hide();
				//$("#procesador").attr("Disabled","Disabled");
				//$('#procesador').disabled = true;
				document.getElementById('procesador').disabled=true;
				document.getElementById('velocidad').disabled=true;
				document.getElementById('memoria').disabled=true;
				document.getElementById('disco_duro').disabled=true;

				$('#procesador').val(null);
				$('#velocidad').val(null);
				$('#memoria').val(null);
				$('#disco_duro').val(null);

					// Hacer algo si el checkbox ha sido deseleccionado
						//$('#procesador').hide();
					// alert("El checkbox con valor " + $(this).val() + " ha sido deseleccionado");
    	}
			//return false;
});


// Seccion de Capturas de Partes de Computadora
	$('#nueva-partecomp').on('click',function(){
		$('#formulario')[0].reset();
		$('#pro').val('Registro'); //Asigna el valor a la etiquete "Proceso"
		$('#edi').hide();
		$('#reg').show();
		$('#registra-partecomp').modal({
			show:true,
			backdrop:'static'
		});
	});

	$('#bs-partecomp').on('keyup',function(){
		var dato = $('#bs-partecomp').val();
		var url = '../php/Inventarios/PartesComp/buscar_partescomp.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'dato='+dato,
		success: function(datos){
			$('#agrega-partescomp').html(datos);
		}
	});
	//return false;
	});

// Seccion de Capturas Especificaciones Gabiente
	$('#nueva-especif').on('click',function(){
		$('#formulario')[0].reset();
		$('#pro').val('Registro'); //Asigna el valor a la etiquete "Proceso"
		$('#edi').hide();
		$('#reg').show();
		$('#registra-especif').modal({
			show:true,
			backdrop:'static'
		});
	});

	$('#bs-especif').on('keyup',function(){
		var dato = $('#bs-especif').val();
		var url = '../php/Inventarios/PartesComp/buscar_especif.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'dato='+dato,
		success: function(datos){
			$('#agrega-especif').html(datos);
		}
	});
	//return false;
	});

// Seccion de Capturas Componentes De Computadora
	$('#nuevo-componente').on('click',function(){
		$('#id_usuario').load("../php/Inventarios/Componentes/cargar_usuario.php");
		$('#id_componente').load("../php/Inventarios/Componentes/cargar_componente.php");
		$('#id_marca').load("../php/Inventarios/Componentes/cargar_marca.php");
		$('#id_modelo').load("../php/Inventarios/Componentes/cargar_modelo.php");
		//$('#id_especif').load("../php/Inventarios/Componentes/cargar_especif.php");
		$('#formulario')[0].reset();
		$('#pro').val('Registro'); //Asigna el valor a la etiquete "Proceso"
		$('#edi').hide();
		$('#reg').show();
		$('#registra-componente').modal({
			show:true,
			backdrop:'static'
		});
	});

	$('#bs-componente').on('keyup',function(){
		var dato = $('#bs-componente').val();
		var url = '../php/Inventarios/Componentes/buscar_componente.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'dato='+dato,
		success: function(datos){
			$('#agrega-componente').html(datos);
		}
	});
	//return false;
	});


// Seccion de busquedas de componentes generica.

$('#bs-componente').on('keyup',function(){
		var dato = $('#bs-componente').val();
		var url = '../php/Busquedas/busca_componente.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'dato='+dato,
		success: function(datos){
			$('#agrega-registros').html(datos);
		}
	});
	//return false;
	});

// Agregar otros etiquetas

});


// Seccion para el manejo de la pantalla de Login
function confirmar()
{
	// Obteniendo los valores de las etiquetas.
	var usuario = $('#usuario').val();
	var password = $('#password').val();
	$.ajax({
		url:'../php/login/validar.php',
		type:'POST',
		data:'usuario='+usuario+'&password='+password+'&boton=ingresar'
	}).done(function(resp){
		if (resp == -1)
		{
			$('#error').show();
		}
		else
		{
			location.href = '../vistas/menu.php'
		}

	});

}

function cerrar()
{
	$.ajax({
		url:'../php/login/validar.php',
		type:'POST',
		data:"boton=cerrar"
	}).done(function(resp){
		location.href = '../vistas/index_login.php'
	});
}

// Termina la seccion del manejo de la pantalla de Login



// Se utiliza para seleccionar en el ComboBox el ID grabado en la base de datos.
// Se pasa como parametro el combo y el valor del ID de la Base De Datos.
function selectInCombo(combo,val)
{
	var cantidad = combo.length;
	for (i=0;i<cantidad; i++)
	{
		if (combo[i].value==val)
		{
			combo[i].selected = true;
			break;
		}
	}
}


function agregaPuesto(){
	var url = '../php/Puestos/capturas_puesto.php';
	$.ajax({
		type:'POST',
		url:url,
		data:$('#formulario').serialize(), // mandan todos los valores de las etiquetas que se idendifican con "name"
		success: function(registro){
			if ($('#pro').val() == 'Registro')
			{
				$('#formulario')[0].reset();
				$('#pro').val('Registro');
				$('#mensaje').addClass('bien').html('Registro completado con exito').show(200).delay(2500).hide(200);
				// .addClass('bien') = Es el valor de la seccion del CSS correspondiente a "bien"
				$('#agrega-puesto').html(registro); // Desplega el valor retornado de "success", lo que arrojo "capturas_depstos.php"
				return false;
			}
			else
			{
				$('#pro').val('Edicion');
				$('#mensaje').addClass('bien').html('Edicion completada con exito').show(200).delay(2500).hide(200);
				$('#agrega-puesto').html(registro);
				return false;
			}
		}
	});
	return false;
}

function editarPuesto(id){
	$('#formulario')[0].reset();
		var url = '../php/Puestos/edita_puesto.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(valores){
				var datos = eval(valores); // Obtiene los valores retornados por "edita_depto.php"
				$('#reg').hide(); // Se oculta el boton "#reg".
				$('#edi').show();
				$('#pro').val('Edicion');
				$('#id_puesto').val(datos[0]);		//Asignando los valores a las etiquetas del formulario.
				$('#nombre').val(datos[1]);
				$('#registra-puesto').modal({
					show:true,
					backdrop:'static'
				});
			return false;
		}
	});
	return false;
}

function eliminarPuesto(id)
{
	var url = '../php/Puestos/elimina_puesto.php';
	var pregunta = confirm('¿Esta seguro de eliminar este Puesto ?');
	if(pregunta==true)
	{
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(registro){
			$('#agrega-puesto').html(registro);
			return false;
			}
		});
	return false;
	}
	else
	{
		return false;
	}
}


// *********** Sección de Gerencia.

function agregaGerencia(){
	var url = '../php/Gerencias/capturas_gerencia.php';
	$.ajax({
		type:'POST',
		url:url,
		data:$('#formulario').serialize(), // mandan todos los valores de las etiquetas que se idendifican con "name"
		success: function(registro){
			if ($('#pro').val() == 'Registro')
			{
				$('#formulario')[0].reset();
				$('#pro').val('Registro');
				$('#mensaje').addClass('bien').html('Registro completado con exito').show(200).delay(2500).hide(200);
				// .addClass('bien') = Es el valor de la seccion del CSS correspondiente a "bien"
				$('#agrega-gerencia').html(registro); // Desplega el valor retornado de "success", lo que arrojo "capturas_depstos.php"
				return false;
			}
			else
			{
				$('#pro').val('Edicion');
				$('#mensaje').addClass('bien').html('Edicion completada con exito').show(200).delay(2500).hide(200);
				$('#agrega-gerencia').html(registro);
				return false;
			}
		}
	});
	return false;
}



function eliminarGerencia(id)
{
	var url = '../php/Gerencias/elimina_gerencia.php';
	var pregunta = confirm('¿Esta seguro de eliminar esta Gerencia ?');
	if(pregunta==true)
	{
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(registro){
			$('#agrega-gerencia').html(registro);
			return false;
			}
		});
	return false;
	}
	else
	{
		return false;
	}
}

function editarGerencia(id){
	$('#formulario')[0].reset();
		var url = '../php/Gerencias/edita_gerencia.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(valores){
				var datos = eval(valores); // Obtiene los valores retornados por "edita_depto.php"
				$('#reg').hide(); // Se oculta el boton "#reg".
				$('#edi').show();
				$('#pro').val('Edicion');
				$('#id_gerencia').val(datos[0]);		//Asignando los valores a las etiquetas del formulario.
				$('#nombre').val(datos[1]);
				$('#registra-gerencia').modal({
					show:true,
					backdrop:'static'
				});
			//return false;
		}
	});
	//return false;
}

// Manejando los registros De Los Departamentos.
function agregaRegistro(){
	var url = '../php/Deptos/capturas_deptos.php';
	$.ajax({
		type:'POST',
		url:url,
		data:$('#formulario').serialize(), // mandan todos los valores de las etiquetas que se idendifican con "name"
		success: function(registro){
			if ($('#pro').val() == 'Registro')
			{
				$('#formulario')[0].reset();
				$('#pro').val('Registro');
				$('#mensaje').addClass('bien').html('Registro completado con exito').show(200).delay(2500).hide(200);
				// .addClass('bien') = Es el valor de la seccion del CSS correspondiente a "bien"
				$('#agrega-registros').html(registro); // Desplega el valor retornado de "success", lo que arrojo "capturas_depstos.php"
				return false;
			}
			else
			{
				$('#mensaje').addClass('bien').html('Edicion completada con exito').show(200).delay(2500).hide(200);
				$('#agrega-registros').html(registro);
				$
				return false;
			}
		}
	});
	return false;
}

function eliminarDepto(id)
{
	var url = '../php/Deptos/elimina_depto.php';
	var pregunta = confirm('¿Esta seguro de eliminar este Producto?');
	if(pregunta==true)
	{
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(registro){
			$('#agrega-registros').html(registro);
			return false;
			}
		});
	return false;
	}
	else
	{
		return false;
	}
}


function editarDepto(id){
	$('#id_gerencia').load("../php/Deptos/cargar_gerencias.php");
	$('#formulario')[0].reset();
	var url = '../php/Deptos/edita_depto.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(valores){
				var datos = eval(valores); // Obtiene los valores retornados por "edita_depto.php"
				$('#reg').hide(); // Se oculta el boton "#reg".
				$('#edi').show();
				$('#pro').val('Edicion');
				$('#id_depto').val(datos[0]);		//Asignando los valores a las etiquetas del formulario.
				$('#nombre').val(datos[1]);
				$('#horario').val(datos[2]);
				$('#ubicacion').val(datos[3]);
				$('#id_gerencia').val(datos[4]);
				selectInCombo(document.forms['formulario'].id_gerencia,datos[4]);
				$('#registra-depto').modal({
					show:true,
					backdrop:'static'
				});
			//return false;
		}
	});
	//return false;
}


	function cargarPuesto()
	{

		if (window.XMLHttpRequest)
		{
			xmlhttp3 = new XMLHttpRequest();
		}
		else
		{
			xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp3.onreadystatechange=function()
		{

			//if (xmlhttp3.readystate==4 or  xmlhttp3.status==200)
			if (xmlhttp3.status==200)
			{
				document.getElementById("id_puesto").innerHTML=xmlhttp3.responseText;

			}
		}
		xmlhttp3.open("GET","../php/Usuarios/cargar_puesto.php",true);
		xmlhttp3.send();

		return false;

	}

function agregaUsuario(){
	var url = '../php/Usuarios/capturas_usuario.php';
	$.ajax({
		type:'POST',
		url:url,
		data:$('#formulario').serialize(), // mandan todos los valores de las etiquetas que se idendifican con "name"
		success: function(registro){
			if ($('#pro').val() == 'Registro')
			{
				$('#formulario')[0].reset();
				$('#pro').val('Registro');
				$('#mensaje').addClass('bien').html('Registro completado con exito').show(200).delay(2500).hide(200);
				// .addClass('bien') = Es el valor de la seccion del CSS correspondiente a "bien"
				$('#agrega-registros').html(registro); // Desplega el valor retornado de "success", lo que arrojo "capturas_depstos.php"
				return false;
			}
			else
			{
				$('#mensaje').addClass('bien').html('Edicion completada con exito').show(200).delay(2500).hide(200);
				$('#agrega-registros').html(registro);
				$
				return false;
			}
		}
	});
	return false;
}

function eliminarUsuario(id)
{
	var url = '../php/Usuarios/elimina_usuario.php';
	var pregunta = confirm('¿Esta seguro de eliminar este Usuario ?');
	if(pregunta==true)
	{
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(registro){
			$('#agrega-registros').html(registro);
			//return false;
			}
		});
	//return false;
	}
	else
	{
		//return false;
	}
}

function editarUsuario(id){
	$('#formulario')[0].reset();
	$('#id_puesto').load("../php/Usuarios/cargar_puesto.php");
	$('#id_departamento').load("../php/Usuarios/cargar_depto.php");

	var url = '../php/Usuarios/edita_usuario.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(valores){
				var datos = eval(valores); // Obtiene los valores retornados por "edita_depto.php"
				$('#reg').hide(); // Se oculta el boton "#reg".
				$('#edi').show();
				$('#pro').val('Edicion');
				$('#id_usuario').val(datos[0]);		//Asignando los valores a las etiquetas del formulario.
				$('#usuario_univ').val(datos[1]);
				$('#num_usuario').val(datos[2]);
				$('#nombre').val(datos[3]);
				$('#num_tel').val(datos[4]);
				$('#num_ext').val(datos[5]);
				$('#correo_elect').val(datos[6]);
				$('#comentario').val(datos[7]);
				$('#id_puesto').val(datos[8]);
				$('#id_departamento').val(datos[9]);
				selectInCombo(document.forms['formulario'].id_puesto,datos[8]);
				selectInCombo(document.forms['formulario'].id_departamento,datos[9]);
				$('#registra-usuario').modal({
					show:true,
					backdrop:'static'
				});
			//return false;
		}
	});
	//return false;
}

// ******************************************************************************************************************
// **** MANEJANDO LOS REGISTROS / EDICION DE MARCA . ****************************************************************
// ******************************************************************************************************************
function agregaMarca(){
	var url = '../php/Inventarios/Marcas/capturas_marcas.php';
	$.ajax({
		type:'POST',
		url:url,
		data:$('#formulario').serialize(), // mandan todos los valores de las etiquetas que se idendifican con "name"
		success: function(registro){
			if ($('#pro').val() == 'Registro')
			{
				$('#formulario')[0].reset();
				$('#pro').val('Registro');
				$('#mensaje').addClass('bien').html('Registro completado con exito').show(200).delay(2500).hide(200);
				// .addClass('bien') = Es el valor de la seccion del CSS correspondiente a "bien"
				$('#agrega-marcas').html(registro); // Desplega el valor retornado de "success", lo que arrojo "capturas_depstos.php"
				return false;
			}
			else
			{
				$('#pro').val('Edicion');
				$('#mensaje').addClass('bien').html('Edicion completada con exito').show(200).delay(2500).hide(200);
				$('#agrega-marcas').html(registro);
				return false;
			}
		}
	});
	return false;
}

function editarMarcas(id){
	$('#formulario')[0].reset();
		var url = '../php/Inventarios/Marcas/edita_marca.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(valores){
				var datos = eval(valores); // Obtiene los valores retornados por "edita_depto.php"
				$('#reg').hide(); // Se oculta el boton "#reg".
				$('#edi').show();
				$('#pro').val('Edicion');
				$('#id_marcas').val(datos[0]);		//Asignando los valores a las etiquetas del formulario.
				$('#nombre_marcas').val(datos[1]);
				$('#registra-marcas').modal({
					show:true,
					backdrop:'static'
				});
			//return false;
		}
	});
	//return false;
}

function eliminarMarcas(id)
{
	var url = '../php/Inventarios/Marcas/elimina_marca.php';
	var pregunta = confirm('¿Esta seguro de eliminar esta Marca ?');
	if(pregunta==true)
	{
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(registro){
			$('#agrega-marcas').html(registro);
			return false;
			}
		});
	}
	else
	{
		return false;
	}
}

// *********************************************************************************************************
// **** MANEJANDO LOS REGISTROS / EDICION DE MODELOS . **************************************************************
function agregaModelo(){
	var url = '../php/Inventarios/Modelos/capturas_modelos.php';
	$.ajax({
		type:'POST',
		url:url,
		data:$('#formulario').serialize(), // mandan todos los valores de las etiquetas que se idendifican con "name"
		success: function(registro){
			if ($('#pro').val() == 'Registro')
			{
				$('#formulario')[0].reset();
				$('#pro').val('Registro');
				$('#mensaje').addClass('bien').html('Registro completado con exito').show(200).delay(2500).hide(200);
				// .addClass('bien') = Es el valor de la seccion del CSS correspondiente a "bien"
				$('#agrega-modelos').html(registro); // Desplega el valor retornado de "success", lo que arrojo "capturas_modelos.php"
				return false;
			}
			else
			{
				$('#pro').val('Edicion');
				$('#mensaje').addClass('bien').html('Edicion completada con exito').show(200).delay(2500).hide(200);
				$('#agrega-modelos').html(registro);
				return false;
			}
		}
	});
	return false;
}

function editarModelo(id){
	$('#formulario')[0].reset();
		var url = '../php/Inventarios/Modelos/edita_modelo.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(valores){
				var datos = eval(valores); // Obtiene los valores retornados por "edita_depto.php"
				$('#reg').hide(); // Se oculta el boton "#reg".
				$('#edi').show();
				$('#pro').val('Edicion');
				$('#id_modelo').val(datos[0]);		//Asignando los valores a las etiquetas del formulario.
				$('#nombre_modelo').val(datos[1]);
				$('#procesador').val(datos[2]);
				$('#velocidad').val(datos[3]);
				$('#memoria').val(datos[4]);
				$('#disco_duro').val(datos[5]);
				$('#registra-modelo').modal({
					show:true,
					backdrop:'static'
				});
			//return false;
		}
	});
	//return false;
}

function eliminarModelo(id)
{
	var url = '../php/Inventarios/Modelos/elimina_modelo.php';
	var pregunta = confirm('¿Esta seguro de eliminar este Modelo ?');
	if(pregunta==true)
	{
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(registro){
			$('#agrega-modelos').html(registro);
			return false;
			}
		});
	}
	else
	{
		return false;
	}
}

// *********************************************************************************************************
// **** MANEJANDO LOS REGISTROS / EDICION DE PARTES COMPUTADORA. **************************************************************
function agregaParteComp(){
	var url = '../php/Inventarios/PartesComp/capturas_partescomp.php';
	$.ajax({
		type:'POST',
		url:url,
		data:$('#formulario').serialize(), // mandan todos los valores de las etiquetas que se idendifican con "name"
		success: function(registro){
			if ($('#pro').val() == 'Registro')
			{
				$('#formulario')[0].reset();
				$('#pro').val('Registro');
				$('#mensaje').addClass('bien').html('Registro completado con exito').show(200).delay(2500).hide(200);
				// .addClass('bien') = Es el valor de la seccion del CSS correspondiente a "bien"
				$('#agrega-partescomp').html(registro); // Desplega el valor retornado de "success", lo que arrojo "capturas_depstos.php"
				return false;
			}
			else
			{
				$('#pro').val('Edicion');
				$('#mensaje').addClass('bien').html('Edicion completada con exito').show(200).delay(2500).hide(200);
				$('#agrega-partescomp').html(registro);
				return false;
			}
		}
	});
	return false;
}

function editarParteComp(id){
	$('#formulario')[0].reset();
		var url = '../php/Inventarios/PartesComp/edita_partescomp.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(valores){
				var datos = eval(valores); // Obtiene los valores retornados por "edita_depto.php"
				$('#reg').hide(); // Se oculta el boton "#reg".
				$('#edi').show();
				$('#pro').val('Edicion');
				$('#id_partecomp').val(datos[0]);		//Asignando los valores a las etiquetas del formulario.
				$('#nombre_partecomp').val(datos[1]);
				$('#registra-partecomp').modal({
					show:true,
					backdrop:'static'
				});
			//return false;
		}
	});
	//return false;
}

function eliminarParteComp(id)
{
	var url = '../php/Inventarios/PartesComp/elimina_partescomp.php';
	var pregunta = confirm('¿Esta seguro de eliminar este Modelo ?');
	if(pregunta==true)
	{
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(registro){
			$('#agrega-partescomp').html(registro);
			return false;
			}
		});
	}
	else
	{
		return false;
	}
}

// *********************************************************************************************************
// **** MANEJANDO LAS ESPECIFICACIONES GABINETE  REGISTROS / EDICION. ***********************************************************************************************************
function agregaEspecif(){
	var url = '../php/Inventarios/Especif_cpu/capturas_especif.php';
	$.ajax({
		type:'POST',
		url:url,
		data:$('#formulario').serialize(), // mandan todos los valores de las etiquetas que se idendifican con "name"
		success: function(registro){
			if ($('#pro').val() == 'Registro')
			{
				$('#formulario')[0].reset();
				$('#pro').val('Registro');
				$('#mensaje').addClass('bien').html('Registro completado con exito').show(200).delay(2500).hide(200);
				// .addClass('bien') = Es el valor de la seccion del CSS correspondiente a "bien"
				$('#agrega-especif').html(registro); // Desplega el valor retornado de "success", lo que arrojo "capturas_depstos.php"
				return false;
			}
			else
			{
				$('#pro').val('Edicion');
				$('#mensaje').addClass('bien').html('Edicion completada con exito').show(200).delay(2500).hide(200);
				$('#agrega-especif').html(registro);
				return false;
			}
		}
	});
	return false;
}

function editarEspecif(id){
	$('#formulario')[0].reset();
		var url = '../php/Inventarios/Especif_cpu/edita_especif.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(valores){
				var datos = eval(valores); // Obtiene los valores retornados por "edita_especif.php"
				$('#reg').hide(); // Se oculta el boton "#reg".
				$('#edi').show();
				$('#pro').val('Edicion');
				$('#id_especif').val(datos[0]);		//Asignando los valores a las etiquetas del formulario.
				$('#nombre_proc').val(datos[1]);
				$('#velocidad').val(datos[2]);
				$('#capac_memoria').val(datos[3]);
				$('#disco_duro').val(datos[4]);
				$('#registra-especif').modal({
					show:true,
					backdrop:'static'
				});
			//return false;
		}
	});
	//return false;
}

function eliminarEspecif(id)
{
	var url = '../php/Inventarios/Especif_cpu/elimina_especif.php';
	var pregunta = confirm('¿Esta Seguro De Eliminar Esta Especificacion ?');
	if(pregunta==true)
	{
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(registro){
			$('#agrega-especif').html(registro);
			return false;
			}
		});
	}
	else
	{
		return false;
	}
}

// *********************************************************************************************************
// **** MANEJANDO LOS REGISTROS O MODIFICACIONES DE LOS COMPONENTES ***********************************************************************************************************
function agregaComponente(){
	var url = '../php/Inventarios/Componentes/capturas_componentes.php';
	$.ajax({
		type:'POST',
		url:url,
		data:$('#formulario').serialize(), // mandan todos los valores de las etiquetas que se idendifican con "name"
		success: function(registro){
			if ($('#pro').val() == 'Registro')
			{
				$('#formulario')[0].reset();
				$('#pro').val('Registro');
				$('#mensaje').addClass('bien').html('Registro completado con exito').show(200).delay(2500).hide(200);
				// .addClass('bien') = Es el valor de la seccion del CSS correspondiente a "bien"
				$('#agrega-componente').html(registro); // Desplega el valor retornado de "success", lo que arrojo "capturas_depstos.php"
				return false;
			}
			else
			{
				$('#pro').val('Edicion');
				$('#mensaje').addClass('bien').html('Edicion completada con exito').show(200).delay(2500).hide(200);
				$('#agrega-componente').html(registro);
				return false;
			}
		}
	});
	return false;
}
/*
	*/


function editarComponente(id){
	$('#formulario')[0].reset();
	$('#id_usuario').load("../php/Inventarios/Componentes/cargar_usuario.php");
	$('#id_componente').load("../php/Inventarios/Componentes/cargar_componente.php");
	$('#id_marca').load("../php/Inventarios/Componentes/cargar_marca.php");
	$('#id_modelo').load("../php//Inventarios/Componentes/cargar_modelo.php");

		var url = '../php/Inventarios/Componentes/edita_componente.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success:function(valores){
				var datos = eval(valores); // Obtiene los valores retornados por "edita_Componente.php"
				$('#reg').hide(); // Se oculta el boton "#reg".
				$('#edi').show();
				$('#pro').val('Edicion');
				$('#id_componente_comp').val(datos[0]);		//Asignando los valores a las etiquetas del formulario.
				$('#nomenclatura').val(datos[1]);
				$('#ip').val(datos[2]);
				$('#serial').val(datos[3]);
				$('#inventario').val(datos[4]);
				$('#posicion').val(datos[5]);
				$('#id_usuario').val(datos[6]);
				$('#id_componente').val(datos[7]);
				$('#id_marca').val(datos[8]);
				$('#id_modelo').val(datos[9]);
				selectInCombo(document.forms['formulario'].id_usuario,datos[6]);
				selectInCombo(document.forms['formulario'].id_componente,datos[7]);
				selectInCombo(document.forms['formulario'].id_marca,datos[8]);
				selectInCombo(document.forms['formulario'].id_modelo,datos[9]);

				$('#registra-componente').modal({
					show:true,
					backdrop:'static'
				});
			//return false;
		}
	});
	//return false;
}

function eliminarComponente(id)
{
	var url = '../php/Inventarios/Componentes/elimina_componente.php';
	var pregunta = confirm('¿Esta Seguro De Eliminar Este Componente ?');
	if(pregunta==true)
	{
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(registro){
			$('#agrega-componente').html(registro);
			return false;
			}
		});
	}
	else
	{
		return false;
	}
}

// Obteniendo el Departamento "CAC"
	function obtener_cac()
	{
		if (window.XMLHttpRequest)
		{
			xmlhttp3 = new XMLHttpRequest();
		}
		else
		{
			xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
		}

		xmlhttp3.onreadystatechange=function()
		{

			//if (xmlhttp3.readystate==4 or  xmlhttp3.status==200)

			if (xmlhttp3.status==200)
			{
				document.getElementById("obtener_cac").innerHTML=xmlhttp3.responseText;
			}
		}
		xmlhttp3.open("GET","obtener_cac.php",true);
		xmlhttp3.send();

		return false;

	}

// Obteniendo el componente computadora
	function obtener_partecomp()
	{
		if (window.XMLHttpRequest)
		{
			xmlhttp3 = new XMLHttpRequest();
		}
		else
		{
			xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
		}

		xmlhttp3.onreadystatechange=function()
		{

			//if (xmlhttp3.readystate==4 or  xmlhttp3.status==200)

			if (xmlhttp3.status==200)
			{
				document.getElementById("obtener_partecomp").innerHTML=xmlhttp3.responseText;
			}
		}
		xmlhttp3.open("GET","obtener_partecomp.php",true);
		xmlhttp3.send();

		return false;

	}
