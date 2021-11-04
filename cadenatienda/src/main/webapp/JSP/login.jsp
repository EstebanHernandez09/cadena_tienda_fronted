<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html  lang="es">
<head>
<meta charset="ISO-8859-1">
<title>Inicio de sesion || Tienda Generica</title>
<%@ include file="../template/head.jsp"%>
</head>
<body class="hold-transition login-page">
<div class="login-logo">
    <a href="dashboard.php"><img src="${pageContext.request.contextPath}/images/logo.png" alt="logo_tradicional" class="img-fluid"></a>
  </div>
	<div class="login-box">
  <!-- /.login-logo -->
  <div class="card card-outline card-primary">
    <div class="card-body">
      <p class="login-box-msg">Regístrese para iniciar su sesión</p>
      <form action="" method="post">
        <div class="input-group mb-3">
          <input type="text" name="nombre_usuario" class="form-control" placeholder="Nombre de usuario">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" id="contrasena" name="contrasena" class="form-control" placeholder="Contraseña">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember" onclick="ver_contra(this)">
              <label for="remember">
                Ver contraseña
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-12">
         	 <input type="submit" onclick="usuario();" class="btn btn-primary btn-block" name="accion" value="Ingresar">
          </div>
          <!-- /.col -->
        </div>
      </form><br>
      <p class="mb-1 text-center">
        <a href="forgot-password.html">¿olvide mi contraseña?</a>
      </p>
      <p class="mb-0 text-center">
        <a href="register.html">Crear una cuenta</a>
      </p>
    </div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>
<!-- /.login-box -->
<%@ include file="../template/script.jsp"%>
</body>
</html>