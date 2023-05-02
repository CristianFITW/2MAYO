<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Menú Principal</title>
  <link rel="stylesheet" href="css/Menu_Diseño_General.css">
  <link rel="stylesheet" href="css/Modificar_Producto.css">
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
    
<div class="container_AA">
  <center><h1>Editar Producto</h1></center>
  <form id="form-container">
    <div class="form-column">
      <label for="idCompra" class="tooltip_A">ID De Compra<span class="tooltiptext">ID por el cuál puede buscar un producto en especifico</span></label>
      <input type="text" id="idCompra" name="idCompra">

      <label for="nombreProducto" class="tooltip_A" disabled>Nombre De Producto<span class="tooltiptext">Ingrese el nombre del producto que el usuario visualizará</span></label>
      <input type="text" id="nombreProducto" name="nombreProducto" disabled>

      <label for="precioCompra" class="tooltip_A" disabled>Precio De Compra<span class="tooltiptext">Costo para el distribuidor, incluyendo impuestos, envío y materias primas</span></label>
      <input type="number" id="precioCompra" name="precioCompra" min="0" max="5000" step="50" disabled>

      <label for="precioVenta" class="tooltip_A" disabled>Precio De Venta<span class="tooltiptext">Precio de venta al usuario</span></label>
      <input type="number" id="precioVenta" name="precioVenta" min="0" max="5000" step="50" disabled>
    </div>

    <div class="form-column">
      <label for="cantidad" class="tooltip_A" disabled>Cantidad<span class="tooltiptext">Cantidad de productos a agregar al inventario</span></label>
      <input type="number" id="cantidad" name="cantidad" min="0" max="100" step="5" disabled>

      <label for="message" class="tooltip_A" disabled>Descripción<span class="tooltiptext">Descripción que tendrá el producto</span></label>
      <textarea id="message" name="message" rows="4" disabled></textarea>

      <div class="form-button-container">
        <button type="button" onclick="buscarProducto()">Buscar</button>
        <button type="button" onclick="guardarCambios()">Guardar cambios</button>
      </div>
    </div>
  </form>
</div>

<script>
  // Variables para almacenar la información de los productos
  var producto1 = {
    id: "001",
    nombre: "Producto 1",
    precioCompra: 100,
    precioVenta: 200,
    cantidad: 10,
    descripcion: "Descripción del producto 1"
  };

  var producto2 = {
    id: "002",
    nombre: "Producto 2",
    precioCompra: 50,
    precioVenta: 100,
    cantidad: 20,
    descripcion: "Descripción del producto 2"
  };

  // Función para buscar un producto por su ID
  function buscarProducto() {
    var idCompra = document.getElementById("idCompra").value;

    // Buscar el producto en la lista de productos
    var productoEncontrado = null;
    if (idCompra === producto1.id) {

productoEncontrado = producto1;
} else if (idCompra === producto2.id) {
productoEncontrado = producto2;
}

// Si se encontró el producto, llenar los campos con su información
if (productoEncontrado !== null) {
  document.getElementById("nombreProducto").value = productoEncontrado.nombre;
  document.getElementById("precioCompra").value = productoEncontrado.precioCompra;
  document.getElementById("precioVenta").value = productoEncontrado.precioVenta;
  document.getElementById("cantidad").value = productoEncontrado.cantidad;
  document.getElementById("message").value = productoEncontrado.descripcion;

  // Habilitar los campos para edición
  document.getElementById("nombreProducto").disabled = false;
  document.getElementById("precioCompra").disabled = false;
  document.getElementById("precioVenta").disabled = false;
  document.getElementById("cantidad").disabled = false;
  document.getElementById("message").disabled = false;
} else {
  alert("Producto no encontrado");
}
}

// Función para guardar los cambios realizados en el producto
function guardarCambios() {
// Limpiar los campos
document.getElementById("idCompra").value = "";
document.getElementById("nombreProducto").value = "";
document.getElementById("precioCompra").value = "";
document.getElementById("precioVenta").value = "";
document.getElementById("cantidad").value = "";
document.getElementById("message").value = "";
alert("Producto guardado con exito");

// Deshabilitar los campos
document.getElementById("nombreProducto").disabled = true;
document.getElementById("precioCompra").disabled = true;
document.getElementById("precioVenta").disabled = true;
document.getElementById("cantidad").disabled = true;
document.getElementById("message").disabled = true;
}
function buscarProducto() {
  var idCompra = document.getElementById("idCompra").value;

  // Buscar el producto en la lista de productos
  var productoEncontrado = null;
  if (idCompra === producto1.id) {
    productoEncontrado = producto1;
  } else if (idCompra === producto2.id) {
    productoEncontrado = producto2;
  }

  if (productoEncontrado) {
    // Si se encontró el producto, llenar los campos del formulario
    document.getElementById("nombreProducto").value = productoEncontrado.nombre;
    document.getElementById("precioCompra").value = productoEncontrado.precioCompra;
    document.getElementById("precioVenta").value = productoEncontrado.precioVenta;
    document.getElementById("cantidad").value = productoEncontrado.cantidad;
    document.getElementById("message").value = productoEncontrado.descripcion;

    // Deshabilitar los campos y el botón "Buscar"
    document.getElementById("nombreProducto").disabled = false;
    document.getElementById("precioCompra").disabled = false;
    document.getElementById("precioVenta").disabled = false;
    document.getElementById("cantidad").disabled = false;
    document.getElementById("message").disabled = false;
    document.getElementById("form-container").querySelectorAll("button")[0].disabled = true;
  }
}

function guardarCambios() {
  // Limpiar los campos del formulario
  document.getElementById("idCompra").value = "";
  document.getElementById("nombreProducto").value = "";
  document.getElementById("precioCompra").value = "";
  document.getElementById("precioVenta").value = "";
  document.getElementById("cantidad").value = "";
  document.getElementById("message").value = "";
  alert("¡Se Ha Modificado El Producto Con Exito!");

  // Habilitar los campos y el botón "Buscar"
  document.getElementById("nombreProducto").disabled = true;
  document.getElementById("precioCompra").disabled = true;
  document.getElementById("precioVenta").disabled = true;
  document.getElementById("cantidad").disabled = true;
  document.getElementById("message").disabled = true;
  document.getElementById("form-container").querySelectorAll("button")[0].disabled = false;
}

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
