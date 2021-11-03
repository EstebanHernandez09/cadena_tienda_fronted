<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reportes || Tienda Generica</title>
<%@ include file="../template/head.jsp"%>
</head>
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">
      <!-- Preloader -->
      <div class="preloader flex-column justify-content-center align-items-center">
        <img class="animation__wobble" src="${pageContext.request.contextPath}/images/logo-carro.png" alt="Logo_tienda" height="60" width="60">
      </div>
	<%@ include file="../template/menu-horizontal.jsp"%>
	<%@ include file="../template/menu-vertical.jsp"%>
	<div class="content-wrapper">
				 <div class="content-header">
          <div class="container-fluid">
            <div class="row mb-2">
              <div class="col-sm-6 col-lg-12">
                <h1 class="m-0 text-center">Reportes</h1>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
          </div>
          <!-- /.container-fluid -->
        </div>
        <section class="content">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-12">
                <div class="card">
                  <div class="card-body">
                  <form action="${pageContext.request.contextPath}/ReportesServlet">
                    <div class="row">
                      <div class="col-md-12 text-center mb-3">
	                      <input type="submit" name="accion" class="btn btn-success" value="listado de Usuarios">
                      </div>
                      <div class="col-md-12 text-center mb-3">
                      	<input type="submit" name="accion" class="btn btn-success" value="listado de Clientes">
                      </div>
                      <div class="col-md-12 text-center mb-3">
                      	<input type="submit" name="accion" class="btn btn-success" value="Ventas por Cliente">
                      </div>
                      <!-- /.col -->
                    </div>
                    </form>
                    <!-- /.row -->
                  </div>
                  <!-- ./card-body-->
                </div>
                <!-- /.card -->
              </div>
              <!-- /.col -->
            </div>
          </div>
          <!--/. container-fluid -->
        </section>
	</div>
</div>
<%@ include file="../template/footer.jsp"%>
<%@ include file="../template/script.jsp"%>
</body>
</html>
