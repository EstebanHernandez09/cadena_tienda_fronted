<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <span class="brand-link">
      <img src="${pageContext.request.contextPath}/img/logo-carro.png" alt="GanaGana Logo" class="brand-image" style="opacity: .8">
      <span class="brand-text font-weight-light">Tienda virtual</span>
    </span>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="${pageContext.request.contextPath}/img/user.png" class="img-circle elevation-1" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block"><%=request.getSession().getAttribute("usuario")%></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Tablero
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="http://localhost:6450/login/UsuariosServlet?accion=Listar" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Usuarios</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="http://localhost:6450/login/ClientesServlet?accion=Listar" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Clientes</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="http://localhost:6450/login/ProveedoresServlet?accion=Listar" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Proveedores</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="http://localhost:6450/login/ProductosServlet?accion=Listar" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Productos</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="http://localhost:6450/login/VentasServlet?accion=factura" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Ventas</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${pageContext.request.contextPath}/JSP/reportes.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Reportes</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>