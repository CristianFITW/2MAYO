<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Usuario</title>
  <link rel="stylesheet" href="Usuario_1.css">
</head>
<body>
<nav>
  <div class="container_A">
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
  <div id="form-container">
    <center><h1>Usuario</h1></center>
    <label for="Nom">Nombre Completo:</label>
    <input type="text" id="Nom" value="James Duncan Halpert" disabled>
    <label for="RFC">RFC:</label>
    <input type="text" id="RFC" value="Y12B32H23" disabled><br>
    <label for="ADN">Año De Nacimiento:</label>
    <input type="date" id="ADN" value="" disabled>
    <label for="CE">Correo Electronico:</label>
    <input type="email" id="CE" value="JimHalpert@gmail.com" disabled>
    <label for="Contra">Contraseña:</label>
    <input type="password" id="Contra" value="Pam" disabled>
    <label for="Street">Dirección (Calle, Número Exterior, Colonia, Delegación):</label>
    <input type="text" id="Street" value="Dunder Mifflin" disabled>
    <label for="numContacto">Número De Contacto:</label>
    <input type="text" id="numContacto" value="2637647323" disabled>
    <button id="cambiarDatos">Modificar datos</button>
    <button id="guardarCambios">Guardar cambios</button>
  </div>

  <style>
    #form-container img {
      border: 1px solid #ddd;
    }
  </style>

<script>
const cambiarDatosBtn = document.getElementById('cambiarDatos');
const guardarCambiosBtn = document.getElementById('guardarCambios');
const Nom = document.getElementById('Nom');
const RFC = document.getElementById('RFC');
const ADN = document.getElementById('ADN');
const CE = document.getElementById('CE');
const Contra = document.getElementById('Contra');
const Street = document.getElementById('Street');
const numContacto = document.getElementById('numContacto');

cambiarDatosBtn.addEventListener('click', () => {
  Nom.disabled = false;
  RFC.disabled = false;
  ADN.disabled = false;
  CE.disabled = false;
  Contra.disabled = false;
  Street.disabled = false;
  numContacto.disabled = false;
  cambiarDatosBtn.style.display = 'none';
  guardarCambiosBtn.style.display = 'inline-block';
});

guardarCambiosBtn.addEventListener('click', () => {
  Nom.disabled = true;
  RFC.disabled = true;
  ADN.disabled = true;
  CE.disabled = true;
  Contra.disabled = true;
  Street.disabled = true;
  numContacto.disabled = true;
  cambiarDatosBtn.style.display = 'inline-block';
  guardarCambiosBtn.style.display = 'none';
});

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
