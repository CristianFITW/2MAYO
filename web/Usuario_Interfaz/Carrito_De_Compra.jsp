<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Carrito De Compra</title>
  <link rel="stylesheet" href="Carrito.css">
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
<div class="cart-container">
  <center><h1>Carrito De Compras</h1></center>
  <div class="cart-items">
    <div class="cart-item">
        <img src="img/sillaN.png" alt="Producto 1">
      <div class="cart-item-details">
        <h3>Silla Color Negra</h3>
        <p>Cantidad: 30</p>
        <p>Precio: $700</p>
      </div>
      <button class="remove-button">Quitar</button>
    </div>
    <div class="cart-item">
        <img src="img/sums.jpg" alt="Producto 2">
      <div class="cart-item-details">
        <h3>Inflable AmonUs</h3>
        <p>Cantidad: 1</p>
        <p>Precio: $400.00</p>
      </div>
      <button class="remove-button">Quitar</button>
    </div>
  </div>
  <div class="cart-total">
    <p>Subtotal: $50.00</p>
    <p>IVA (16%): $8.00</p>
    <p>Total: $58.00</p>
  </div>
  <button class="buy-button">Comprar Todo</button>
</div>


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
