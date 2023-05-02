<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Menú Principal</title>
  <link rel="stylesheet" href="css/Menu_Diseño_General.css">
  <link rel="stylesheet" href="css/Historial_Pedidos.css">
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
    
<div class="search-container">
  <div class="search-options">
    <button id="search-by-client" class="search-option-btn">Buscar por RFC Del Cliente</button>
    <button id="search-by-address" class="search-option-btn">Buscar por Dirección</button>
    <button id="search-by-contact-number" class="search-option-btn">Buscar por número de contacto</button>
    <button id="search-by-date" class="search-option-btn">Buscar por fecha</button>
  </div>
  <div class="search-input-container">
    <input type="text" id="search-input" placeholder="Ingrese su búsqueda...">
    <button id="search-button" disabled>Buscar</button>
  </div>
</div>

<script>
  const searchByClientButton = document.getElementById('search-by-client');
  const searchByAddressButton = document.getElementById('search-by-address');
  const searchByContactNumberButton = document.getElementById('search-by-contact-number');
  const searchByDateButton = document.getElementById('search-by-date');
  const searchInput = document.getElementById('search-input');
  const searchButton = document.getElementById('search-button');

  searchByClientButton.addEventListener('click', function() {
    enableSearchInput();
    searchInput.placeholder = "Ingrese el RFC del cliente...";
    searchInput.type = "text";
    searchInput.removeEventListener('input', validateNumericInput);
  });

  searchByAddressButton.addEventListener('click', function() {
    enableSearchInput();
    searchInput.placeholder = "Ingrese la dirección...";
    searchInput.type = "text";
    searchInput.removeEventListener('input', validateNumericInput);
  });

  searchByContactNumberButton.addEventListener('click', function() {
    enableSearchInput();
    searchInput.placeholder = "Ingrese el número de contacto...";
    searchInput.type = "tel";
    searchInput.addEventListener('input', validateNumericInput);
  });
  
  searchByDateButton.addEventListener('click', function() {
    enableSearchInput();
    searchInput.placeholder = "Ingrese la fecha del pedido...";
    searchInput.type = "date";
    searchInput.removeEventListener('input', validateNumericInput);
  });  

  searchButton.addEventListener('click', function() {
    const searchText = searchInput.value;
    // Aquí puedes hacer la búsqueda con el texto ingresado
    console.log(`Realizando búsqueda con: ${searchText}`);
  });

  function enableSearchInput() {
    searchInput.disabled = false;
    searchButton.disabled = false;
    searchInput.value = "";
  }

  function validateNumericInput() {
    const searchValue = searchInput.value;
    const numericRegex = /^\d+$/;
    if (!numericRegex.test(searchValue)) {
      searchInput.value = searchValue.replace(/\D/g, '');
    }
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
