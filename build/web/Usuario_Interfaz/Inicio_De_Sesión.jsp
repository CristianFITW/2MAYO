<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Iniciar Sesión</title>
  <link rel="stylesheet" href="Inicio_Sesion.css">
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
<div class="container_A">
  <div class="login-wrap">
    <div class="login-form">
      <h2>Iniciar sesión</h2>
      <form>
        <div class="input-group">
          <label for="username">Nombre de usuario</label>
          <input type="text" id="username" name="username" required>
        </div>
        <div class="input-group">
          <label for="password">Contraseña</label>
          <input type="password" id="password" name="password" required>
        </div>
        <button type="submit" class="btn">Iniciar sesión</button>
      </form>
        <div class="register-link">
            <p>¿No tienes una cuenta? <a href="Crear_Cuenta.jsp">Crear cuenta</a></p>
        </div>
    </div>
    <div class="login-img">
        <img id="login-img" src="img_Sesión/image61.jpg">
    </div>
  </div>

</div>
<script>
    var imagenes = [];
    for (var i = 1; i <= 60; i++) {
        var rutaImagen = "img_Sesión/image" + i + ".jpg";
        imagenes.push(rutaImagen);
    }
    
    var indice = 0;
    
    setInterval(function() {
        var loginImg = document.getElementById("login-img");
        loginImg.src = imagenes[indice];
        indice++;
        if (indice == imagenes.length) {
            indice = 0;
        }
    }, 3000);
</script>
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
