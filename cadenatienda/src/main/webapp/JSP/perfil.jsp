<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Perfil || Tienda Generica</title>
<%@ include file="../template/head.jsp"%>
</head>
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<%
	if(session.getAttribute("nombre") == null && session.getAttribute("usuario") == null){
%>
<script>
		Swal.fire({
			  title: 'Espera!',
			  text: "Intentas ingresar al sitio sin haber iniciado sesion",
			  icon: 'warning',
			  showCancelButton: false,
			  confirmButtonColor: '#3085d6',
			  confirmButtonText: 'Entiendo'
			}).then((result) => {
				location.href = "http://localhost:6450/login/JSP/login.jsp";
			})
			</script>
		<%
	}else{
	%>
<div class="wrapper">
      <!-- Preloader -->
      <div class="preloader flex-column justify-content-center align-items-center">
        <img class="animation__wobble" src="${pageContext.request.contextPath}/img/logo-carro.png" alt="Logo_GanaGana" height="60" width="60">
      </div>
<%@ include file="../template/menu-horizontal.jsp"%>
<%@ include file="../template/menu-vertical.jsp"%>

 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6 col-lg-12">
              <h1 class="m-0 text-center">Perfil</h1>
           </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">

            <!-- Profile Image -->
            <div class="card card-primary card-outline">
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle"
                       src="../img/perfil.jpeg"
                       alt="User profile picture">
                </div>

                <h3 class="profile-username text-center">Juan Esteban Gomez Hernandez</h3>

                <p class="text-muted text-center">Tecnologo en 	Analisis y Desarrollo de Sistemas de Informacion - ADSI <br>CC - 1000273466</p>

                <ul class="list-group list-group-unbordered mb-3">
                <li class="list-group-item">
                    <b><i class="fas fa-phone-alt mr-1"></i> Celular</b>
                    <a class="float-right">+57 321 993 8227</a>
                  </li>
                  <li class="list-group-item">
                    <b><i class="fas fa-hospital mr-1"></i> Fecha y Lugar de Nacimiento</b>
	                <p class="text-muted">
	                  09 de Enero del 2003 - Bogota D.C
	                </p>
                  </li>
                   <li class="list-group-item">
                    <b><i class="far fa-lg fa-envelope mr-1"></i> Correo Electronico</b> 
                    <a class="float-right">eh127337@gmail.com</a>
                  </li>
                  <li class="list-group-item">
                    <b><i class="fab fa-lg fa-linkedin-in mr-1"></i> Perfil Linkedin</b>
                    <a class="float-right">www.linkedin.com/in/esteban-hernandez-26bb9b1a6</a>
                  </li>
                  <li class="list-group-item">
                    <b><i class="fas fa-book mr-1"></i> Educacion</b>
	                <p class="text-muted">
	                  Tecnologo en Analisis y Desarrollo de Sistemas de Informacion - SENA <br>
	                  Mision tic 2022 - Universidad El Bosque
	                </p>
                  </li>
                  <li class="list-group-item">
                    <b><i class="fas fa-map-marker-alt mr-1"></i> Ciudad/Departamento de Residencia</b>
	                <p class="text-muted">
	                  Soacha - Cundinamarca
	                </p>
                  </li>
                  <li class="list-group-item">
                    <b><i class="fas fa-pencil-alt mr-1"></i> Habilidades</b>
	                <p class="text-muted">
	                  La lógica de programación, HTML5, CSS3, JavaScript, PHP, MySQL, Java y JavaServer Pages (JSP).
	                </p>
                  </li>
                </ul>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
</div>
<%} %>
<%@ include file="../template/script.jsp"%>
</body>
</html>
