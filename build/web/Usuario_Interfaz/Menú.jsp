<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Menú Principal</title>
  <link rel="stylesheet" href="Menu.css">
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
<div class="product-container">
  <div class="product">
      <img src="img/sums.jpg" alt="Producto 1">
    <h1>Inflable de AmongUs</h1>
    <div class="product-details">
      <p>Precio: $500</p>
      <p>Disponibilidad: En stock</p>
    </div>
    <p>Descripción: Inflable de sus para sentirse el impostor</p>
    <div class="product-buttons">
      <button class="buy-button" type="button" onclick="mostrarAdvertencia()">Añadir</button>
      <a href="Producto.jsp"><button class="view-button" type="button">Ver</button></a>
    </div>
  </div>
  <div class="product">
      <img src="img/sillitaaa.jpg" alt="Producto 2">
    <h1>Silla de plastico</h1>
    <div class="product-details">
      <p>Precio: $300</p>
      <p>Disponibilidad: Agotado</p>
    </div>
    <p>Descripción: Silla para sentarse, también sirve para sentrase y si reune varias puede acostarse</p>
    <div class="product-buttons">
      <button class="buy-button" type="button" onclick="mostrarAdvertencia()">Añadir</button>
      <a href="Producto.jsp"><button class="view-button" type="button">Ver</button></a>

    </div>
  </div>
  <div class="product">
      <img src="img/mesablanca.jpg" alt="Producto 3">
    <h1>Mesa de Color Blaca</h1>
    <div class="product-details">
      <p>Precio: $350</p>
      <p>Disponibilidad: En stock</p>
    </div>
    <p>Descripción: Mesa para poner cosas, como platos, comida o también puedes subir a la mesa un gato perreando</p>
    <div class="product-buttons">
      <button class="buy-button" type="button" onclick="mostrarAdvertencia()">Añadir</button>
      <a href="Producto.jsp"><button class="view-button" type="button">Ver</button></a>
    </div>
  </div>
  <div class="product">
      <img src="img/sillaN.png" alt="Producto 4">
    <h1>Silla Plegable</h1>
    <div class="product-details">
      <p>Precio: $350</p>
      <p>Disponibilidad: En stock</p>
    </div>
    <p>Descripción: Esta silla es perfecta para llevar contigo a cualquier lugar al aire libre, ya sea para un día de campo, un concierto al aire libre o simplemente para sentarse y disfrutar de la naturaleza. Fabricada con materiales duraderos y resistentes a la intemperie, es ligera y fácil de transportar. Además, su diseño plegable hace que sea fácil de almacenar y llevar a cualquier lugar.</p>
    <div class="product-buttons">
      <button class="buy-button" type="button" onclick="mostrarAdvertencia()">Añadir</button>
      <a href="Producto.jsp"><button class="view-button" type="button">Ver</button></a>
    </div>
  </div>
  <div class="product">
      <img src="img/sillab.jpg" alt="Producto 5">
    <h1>Silla De Diseño Contemporaneo</h1>
    <div class="product-details">
      <p>Precio: $350</p>
      <p>Disponibilidad: En stock</p>
    </div>
    <p>Descripción: Esta silla es una pieza elegante y moderna que combina funcionalidad y estilo. Fabricada con materiales de alta calidad, su diseño minimalista y estilizado se adapta a cualquier ambiente, desde oficinas hasta hogares. Sus líneas elegantes y curvas suaves hacen que sea una pieza imprescindible para aquellos que buscan un toque de sofisticación en su espacio.</p>
    <div class="product-buttons">
      <button class="buy-button" type="button" onclick="mostrarAdvertencia()">Añadir</button>
      <a href="Producto.jsp"><button class="view-button" type="button">Ver</button></a>
    </div>
  </div>
  <div class="product">
      <img src="img/sillabd.png" alt="Producto 6">
    <h1>Silla ergonomica</h1>
    <div class="product-details">
      <p>Precio: $350</p>
      <p>Disponibilidad: En stock</p>
    </div>
    <p>Descripción: Esta silla está diseñada para brindar un soporte óptimo al cuerpo mientras se está sentado durante largas horas. Cuenta con un respaldo ajustable, reposabrazos y un asiento acolchado que se adapta a la forma del cuerpo. Además, su diseño permite mantener una postura correcta y reducir la fatiga muscular.</p>
    <div class="product-buttons">
      <button class="buy-button" type="button" onclick="mostrarAdvertencia()">Añadir</button>
      <a href="Producto.jsp"><button class="view-button" type="button">Ver</button></a>
    </div>
  </div>
</div>

    
<script>
function mostrarAdvertencia() {
  alert("Se Ha Añadido Correctamente Al Carrito De Compras");
}
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
