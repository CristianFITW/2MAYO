<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>A�adir Productos</title>
  <link rel="stylesheet" href="css/Menu_Dise�o_General.css">
  <link rel="stylesheet" href="css/Anadir_Producto.css">
</head>
<body>
<nav>
  <div class="container">
    <div class="logo">
        <a href="Men�_Admin.jsp">
        <div>
            <img src="../Usuario_Interfaz/img/Logo_nombre.png" alt="Logo de la empresa">
        </div>
      </a>
    </div>
    <ul class="menu">
        <div class="item"><a href="Anadir_Producto.jsp"><span>A�adir Producto</span><div class="tooltip">A�ade nuevos productos a tu inventario, desde el nombre del producto hasta su descripci�n.</div></a></div>
        <div class="item"><a href="Eliminar_Producto.jsp"><span>Eliminar Producto</span><div class="tooltip">Elimina productos de tu inventario.</div></a></div>
        <div class="item"><a href="Pedidos.jsp"><span>Pedidos</span><div class="tooltip">Consulta los pedidos realizados por los usuarios.</div></a></div>
        <div class="item"><a href="Historial_De_Pedidos.jsp"><span>Historial De Pedidos</span><div class="tooltip">Consulta todos los pedidos realizados anteriormente.</div></a></div>
      <li>
        <a>Consultar</a>
        <div class="sub-menu">
          <ul>
              <div class="item"><a href="Consultar_Inventario.jsp"><span>Consultar Inventario</span><div class="tooltip">Consulte todos los productos disponibles en su inventario, incluyendo estadisticas de cada uno.</div></a></div>
              <div class="item"><a href="Modificar_Producto.jsp"><span>Modificar Producto</span><div class="tooltip">Modifique el nombre, precio, descripci�n o imagen del producto.</div></a></div>
          </ul>
        </div>
      </li>
    </ul>
  </div>
</nav>
<div class="container_AA">
    <center><h1>A�adir Producto</h1></center>
    <form id="form-container">
        <div class="form-column">
          <label for="idCompra" class="tooltip_A">ID De Compra<span class="tooltiptext">ID por el cu�l puede buscar un producto en especifico</span></label>
          <input type="text" id="idCompra" name="idCompra">
          
          <label for="nombreProducto" class="tooltip_A">Nombre De Producto<span class="tooltiptext">Ingrese el nombre del producto que el usuario visualizar�</span></label>
          <input type="text" id="nombreProducto" name="nombreProducto">


          <label for="precioCompra" class="tooltip_A">Precio De Compra<span class="tooltiptext">Costo para el distribuidor, incluyendo impuestos, env�o y materias primas</span></label>
          <input type="number" id="precioCompra" name="precioCompra" min="0" max="5000" step="50">

          <label for="precioVenta" class="tooltip_A">Precio De Venta<span class="tooltiptext">Precio de venta al usuario</span></label>
          <input type="number" id="precioVenta" name="precioVenta" min="0" max="5000" step="50">
        </div>

        <div class="form-column">
          <label for="cantidad" class="tooltip_A">Cantidad<span class="tooltiptext">Cantidad de productos a agregar al inventario</span></label>
          <input type="number" id="cantidad" name="cantidad" min="0" max="100" step="5">
          
          <label for="message" class="tooltip_A">Descripci�n<span class="tooltiptext">Descripci�n que tendr� el producto</span></label>
          <textarea id="message" name="message" rows="4"></textarea>

          <div class="form-button-container">
            <button type="submit">A�adir</button>
          </div>
        </div>
    </form>
</div>
<script>
  const form = document.getElementById("form-container");

  form.addEventListener("submit", function(event) {
    event.preventDefault();

    // Obtener los valores de los inputs
    const idCompra = document.getElementById("idCompra").value;
    const nombreProducto = document.getElementById("nombreProducto").value;
    const precioCompra = document.getElementById("precioCompra").value;
    const precioVenta = document.getElementById("precioVenta").value;
    const cantidad = document.getElementById("cantidad").value;
    const message = document.getElementById("message").value;

    // Vaciar los inputs
    document.getElementById("idCompra").value = "";
    document.getElementById("nombreProducto").value = "";
    document.getElementById("precioCompra").value = "";
    document.getElementById("precioVenta").value = "";
    document.getElementById("cantidad").value = "";
    document.getElementById("message").value = "";

    // Mostrar una alerta indicando que se ha a�adido con �xito el producto
    alert("�Se Ha A�adido Con Exito El Producto!");

    // Hacer lo que sea necesario con los datos del producto
    // ...

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
