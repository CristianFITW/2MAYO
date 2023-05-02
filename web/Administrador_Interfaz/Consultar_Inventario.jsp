<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Menú Principal</title>
  <link rel="stylesheet" href="css/Menu_Diseño_General.css">
  <link rel="stylesheet" href="css/Consulta_Inventario.css">
</head>
<body>
<nav>
  <div class="container">
    <div class="logo">
        <a href="Menú_Admin.jsp">
        <div>
            <img src="../Usuario_Interfaz/img/Logo_nombre.png" alt="Logo de la empresa">
        </div>
      </a>
    </div>
    <ul class="menu">
        <div class="item"><a href="Anadir_Producto.jsp"><span>Añadir Producto</span><div class="tooltip">Añade nuevos productos a tu inventario, desde el nombre del producto hasta su descripción.</div></a></div>
        <div class="item"><a href="Eliminar_Producto.jsp"><span>Eliminar Producto</span><div class="tooltip">Elimina productos de tu inventario.</div></a></div>
        <div class="item"><a href="Pedidos.jsp"><span>Pedidos</span><div class="tooltip">Consulta los pedidos realizados por los usuarios.</div></a></div>
        <div class="item"><a href="Historial_De_Pedidos.jsp"><span>Historial De Pedidos</span><div class="tooltip">Consulta todos los pedidos realizados anteriormente.</div></a></div>
      <li>
        <a>Consultar</a>
        <div class="sub-menu">
          <ul>
              <div class="item"><a href="Consultar_Inventario.jsp"><span>Consultar Inventario</span><div class="tooltip">Consulte todos los productos disponibles en su inventario, incluyendo estadisticas de cada uno.</div></a></div>
              <div class="item"><a href="Modificar_Producto.jsp"><span>Modificar Producto</span><div class="tooltip">Modifique el nombre, precio, descripción o imagen del producto.</div></a></div>
          </ul>
        </div>
      </li>
    </ul>
  </div>
</nav>

<div class="table-container">    
    <table>
      <thead>
        <tr>
          <th>ID Producto</th>
          <th>Nombre</th>
          <th>Unidades Disponibles</th>
          <th>Precio</th>
          <th>Costo Producción</th>
          <th>Costo Venta x30u</th>
          <th>Unidades Rentadas</th>
          <th>Unidades Totales</th>
          <th>Unidades A Rentar Para Recuperar Costos</th>
          <th>Unidades Totales Rentadas</th>
          <th>Ganancias Para Recuperar Costos</th>
          <th>Ganancias sobre 0$</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td contenteditable="false">001</td>
          <td contenteditable="false">Producto 1</td>
          <td contenteditable="false">50</td>
          <td contenteditable="false">$20</td>
          <td contenteditable="false">$10</td>
          <td contenteditable="false">$15</td>
          <td contenteditable="false">10</td>
          <td contenteditable="false">60</td>
          <td contenteditable="false">30</td>
          <td contenteditable="false">40</td>
          <td contenteditable="false">$300</td>
          <td contenteditable="false">$500</td>
        </tr>
        <tr>
          <td contenteditable="false">002</td>
          <td contenteditable="false">Producto 2</td>
          <td contenteditable="false">30</td>
          <td contenteditable="false">$25</td>
          <td contenteditable="false">$15</td>
          <td contenteditable="false">$20</td>
          <td contenteditable="false">5</td>
          <td contenteditable="false">35</td>
          <td contenteditable="false">20</td>
          <td contenteditable="false">25</td>
          <td contenteditable="false">$375</td>
          <td contenteditable="false">$250</td>
        </tr>
        <tr>
          <td contenteditable="false">003</td>
          <td contenteditable="false">Producto 3</td>
          <td contenteditable="false">20</td>
          <td contenteditable="false">$30</td>
          <td contenteditable="false">$20</td>
          <td contenteditable="false">$25</td>
          <td contenteditable="false">15</td>
          <td contenteditable="false">35</td>
          <td contenteditable="false">10</td>
          <td contenteditable="false">25</td>
          <td contenteditable="false">$375</td>
          <td contenteditable="false">$250</td>
        </tr>
      </tbody>
    </table>
</div>
    
<div class="button-container">
  <button id="modificar">Modificar inventario</button>
  <button id="guardar-cambios" style="display: none;">Guardar cambios</button>
</div>


<script>    
const modificarBtn = document.getElementById('modificar');
modificarBtn.addEventListener('click', () => {
  const tdElements = document.querySelectorAll('tbody tr td:nth-child(n+2):nth-child(-n+6)');
  tdElements.forEach(td => td.setAttribute('contenteditable', 'true'));
  modificarBtn.style.display = 'none';
  document.getElementById('guardar-cambios').style.display = 'inline-block';
});
</script>
<script>    
const guardarCambiosBtn = document.getElementById('guardar-cambios');
guardarCambiosBtn.addEventListener('click', () => {
  const tdElements = document.querySelectorAll('tbody tr td:nth-child(n+2):nth-child(-n+6)');
  tdElements.forEach(td => td.setAttribute('contenteditable', 'false'));
  guardarCambiosBtn.style.display = 'none';
  document.getElementById('modificar').style.display = 'inline-block';
  alert("¡Se Ha Modificado El Inventario Con Exito!");
});

</script> 
    
<div class="menu-bar">
  <ul>
      <li><a href="https://www.facebook.com/profile.php?id=100091771882929"><img src="../Usuario_Interfaz/img/4202110facebooklogosocialsocialmedia-115707_115594.png">Facebook</a></li>
      <li><a href="https://www.instagram.com/softuxinc/"><img src="../Usuario_Interfaz/img/iconfinder-social-media-applications-3instagram-4102579_113804.png">Instagram</a></li>
      <li><a href="https://github.com/SOFTUXb"><img src="../Usuario_Interfaz/img/github-logo_icon-icons.com_73546.png">GitHub</a></li>
      <li><a href="../Usuario_Interfaz/SoftUX.html"><img src="../Usuario_Interfaz/img/SoftUXpag.jpg">SoftUX</a></li>
  </ul>
</div>
</body>
</html>
