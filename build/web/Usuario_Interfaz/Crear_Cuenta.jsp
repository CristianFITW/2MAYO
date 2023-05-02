<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Crear Cuenta</title>
  <link rel="stylesheet" href="Crear_Cuenta_1.css">
</head>
<body>
<nav>
  <div class="container">
    <div class="logo">
      <a href="Menú.jsp">
        <div>
            <img src="img/Logo_nombre.png" alt="Logo de la empresa">
        </div>
      </a>
    </div>
    <ul class="menu">
      <li><a href="Menú.jsp">Inicio</a></li>
      <li><a href="Carrito_De_Compra.jsp">Carrito de compras</a></li>
      <li>
        <a>Productos</a>
        <div class="sub-menu">
          <ul>
            <li><a>Sillas</a></li>
            <li><a>Mesas</a></li>
            <li><a>Carpas</a></li>
          </ul>
        </div>
      </li>
      <li>
        <a>Usuario</a>
        <div class="sub-menu">
          <ul>
            <li><a href="Inicio_De_Sesión.jsp">Iniciar Sesión</a></li>
            <li><a href="Usuario.jsp">Usuario</a></li>
            <li><a href="../Administrador_Interfaz/Menú_Admin.jsp">Web Master</a></li>
            <li><a href="">Cerrar Sesión</a></li>
          </ul>
        </div>
      </li>
    </ul>
  </div>
</nav>
<form method="post" action="procesarFormulario.jsp" enctype="multipart/form-data">
    <center><h1>¡Crea Tu Cuenta!</h1></center>
    <label for="nombre">Nombre Completo:</label>
    <input type="text" name="nombre" id="nombre" required><br>
    
    <label for="RFC">RFC:</label>
    <input type="text" name="nombre" id="RFC" required><br>

    <label for="edad">Año De Nacimiento:</label>
    <input type="date" name="edad" id="edad" required><br><br>

    <label for="email">Correo electrónico:</label>
    <input type="email" name="email" id="email" required><br><br>

    <label for="password">Contraseña:</label>
    <input type="password" name="password" id="password" required><br><br>

    <label for="calle">Dirección (Calle, Número Exterior, Colonia, Delegación):</label>
    <input type="text" name="calle" id="calle" required><br><br>

    <label for="numContacto">Número De Contacto:</label>
    <input type="text" name="numContacto" id="numContacto" required><br><br>

  <input type="submit" value="Registrarse">
</form>
<div class="menu-bar">
  <ul>
      <li><a href="https://www.facebook.com/profile.php?id=100091771882929"><img src="img/4202110facebooklogosocialsocialmedia-115707_115594.png">Facebook</a></li>
      <li><a href="https://www.instagram.com/softuxinc/"><img src="img/iconfinder-social-media-applications-3instagram-4102579_113804.png">Instagram</a></li>
      <li><a href="https://github.com/SOFTUXb"><img src="img/github-logo_icon-icons.com_73546.png">GitHub</a></li>
      <li><a href="SoftUX.html"><img src="img/SoftUXpag.jpg">SoftUX</a></li>
  </ul>
</div>
</body>
</html>
