<?php
  session_start();
  if (isset($_SESSION['usuario']))
  {
      header('Location:welcom.php');
  }
  else
  {
?>
<!DOCTYPE html>
<html lang='es'>
  <head>
    <meta charset="UTF-8">
    <title>INICIO DE SESION</title>
    <link rel = "stylesheet" href ="estilos.css">
  </head>
<body>
  <div class="contenedor">
    <h1>LOGIN MYSQL y PHP</h1>
    <h2>INICIO DE SESION</h2>
    <div id="resultado"></div>
    <div id="formulario">
      <form method="POST" action="return false" onsubmit = "return false">
        <p><input type="text" value='' id='user' name ='user' placeholder="TU USUARIO"></p>
        <p><input type="text" value='' id='pass' name ='pass' placeholder="***********"></p>
        <p><button onclick="Validar(document.getElementById('user').value,document.getElementById('pass').value);">ENTRAR</button></p>

      </form>

    </div>

  </div>

</body>

</html>
<?php
  }
?>
