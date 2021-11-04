<nav class="main-header navbar navbar-expand navbar-white navbar-light">
	<!-- Left navbar links -->
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
			href="#" role="button"><i class="fas fa-bars"></i></a></li>
	</ul>
	<ul class="navbar-nav ml-auto">
		<!-- usuario cerrar sesion-->
		<li class="nav-item dropdown"><a class="nav-link"
			data-toggle="dropdown" href="#"> <i class="far fa-user"></i></a>
			<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
				<a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <div class="media-body">
                 <h3 class="dropdown-item-title info">
                 <img src="${pageContext.request.contextPath}/images/user.png" alt="Imagen Usuario" class="img-size-50 mr-3 img-circle">
                  <b>Nombre Usuario</b>
                  <span class="text-center d-block" style="font-size:13px; width:112%; color:#869099;">
                  emailusuario@gmail.com
                 </span>
                </h3>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <a class="dropdown-item">
          <form action="" method="post">
            <!-- Message Start -->
            <div class="media">
              <div class="media-body">
                <h3 class="dropdown-item-title text-center">
                <input style="background:none; border:none;" type="submit"  name= "accion" value="Cerrar sesion"> <i class="fas fa-sign-out-alt"></i>
                </h3>
              </div>
            </div>
           </form>
            <!-- Message End -->
          </a>
			</div>
		</li>
	</ul>
</nav>
<!-- /.navbar -->