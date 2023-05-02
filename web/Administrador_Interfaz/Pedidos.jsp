<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Menú Principal</title>
  <link rel="stylesheet" href="css/Menu_Diseño_General.css">
  <link rel="stylesheet" href="css/Pedidos_Consulta_Admin.css">
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
<!-- Plantilla del contenedor -->
<template id="container-template">
  <div class="container_AAA" style="display:inline-block; margin-bottom: 20px">
    <div class="bb-container">
      <h3><span class="pedido-number"></span></h3>
      <form>
        <label for="name">Nombre:</label>
        <input type="text" id="name" name="name" disabled>
        <br>
        <label for="address">Dirección:</label>
        <input type="text" id="address" name="address" disabled>
        <br>
        <label for="RFC">RFC</label>
        <input type="text" id="address" name="RFC" disabled>
        <br>
        <label for="phone">Número de contacto:</label>
        <input type="tel" id="phone" name="phone" disabled>
        <br>
        <label for="date">Fecha</label>
        <input type="number" id="date" name="date" disabled>
        <br>
        <table disabled>
          <thead>
            <tr>
              <th>ID de producto</th>
              <th>Cantidad</th>
              <th>Precio total</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><input type="text" name="product-id" disabled></td>
              <td><input type="number" name="quantity" disabled></td>
              <td><input type="number" name="total-price" disabled></td>
            </tr>
          </tbody>
        </table>
      </form>
    </div>
  </div>
</template>

<div id="container-wrapper">
  <button id="add-container-btn">Agregar contenedor</button>
</div>

<script>
  // Obtenemos la plantilla del contenedor
  const containerTemplate = document.querySelector('#container-template');

  // Obtenemos el contenedor que va a contener todos los contenedores
  const containerWrapper = document.querySelector('#container-wrapper');

  // Obtenemos el botón para agregar contenedores
  const addContainerBtn = document.querySelector('#add-container-btn');

  // Variable para llevar la cuenta del número de pedidos
  let pedidoCount = 1;

  // Función para clonar la plantilla del contenedor
  function cloneContainerTemplate() {
    // Clonamos la plantilla
    const newContainer = containerTemplate.content.cloneNode(true);

    // Quitamos la clase de la plantilla clonada y la mostramos
    newContainer.querySelector('.container_AAA').style.display = 'inline-block';

    // Actualizamos el número de pedido
    const pedidoNumber = newContainer.querySelector('.pedido-number');
    pedidoNumber.textContent = `Pedido ${pedidoCount}`;

    // Insertamos el nuevo contenedor antes del botón de agregar
    containerWrapper.insertBefore(newContainer, addContainerBtn);

    // Incrementamos el número de pedido
    pedidoCount++;
  }

  // Agregamos el evento click al botón para agregar contenedores
  addContainerBtn.addEventListener('click', () => {
    cloneContainerTemplate();
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
