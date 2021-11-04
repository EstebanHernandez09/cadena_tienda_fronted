<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import='java.util.ArrayList' %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Productos || Tienda Generica</title>
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
							<h1 class="m-0 text-center">Administrador de productos</h1>
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
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group" id="mostrar_loading" style="display: none;"></div>
                        <div class="form-group" id="mostrar_usuarios">
                        	<div class="table-responsive">
							<div class="row">
								<div class="col-2">
									<button class="btn btn-outline-success" data-toggle="modal" data-target="#modal_agregar_producto">Agregar Producto</button>
								</div>
								<div class="col-6"></div>
								<div class="col-4 mb-3">
								  <div class="btn-group col-md-12">
                                    <input type="text" class="form-control" id="num_buscar_pro" name="num_buscar_pro" placeholder="Buscar por codigo de producto">
                                    <button type="button" class="btn btn-secondary" onclick="buscarProducto()"><i class="fas fa-search"></i></button>
                                  </div>
								</div>
							</div>
							
							<table id="tabla_usuarios" class="table display table-striped table-bordered compact" style="width:100%">
							        <thead class="text-capitalize ">
							            <tr style="background: #3F6791; color: #fff;">
							                <th class="text-center">CODIGO</th>
							                <th class="text-center">NOMBRE</th>
							                <th class="text-center">NIT PROVEEDOR</th>
							                <th class="text-center">PRECIO COMPRA</th>
							                <th class="text-center">IVA</th>
							                <th class="text-center">PRECIO VENTA</th>
							                <th class="text-center">ACCIONES</th>
							            </tr>
							        </thead>
							        <tbody>
								        	<tr>
								                <td style="text-align: center;">01</td>
								                <td style="text-align: center;">Tenis Reebok Hombre Moda Leather Ripple Trail</td>
								                <td style="text-align: center;">1122</td>
								                <td style="text-align: center;">200000</td>
								                <td style="text-align: center;">19</td>
								                <td style="text-align: center;">250000</td>
								                <td style="text-align: center;"><div class="row" style="margin:auto;"><button class="btn btn-outline-success" id="" data-toggle="modal" data-target="#modal_editar_producto"><i class="fas fa-edit"></i></button>
								                <button class="btn btn-outline-danger" id="" onclick="elim_producto(this);"> <i class="far fa-trash-alt"></i></button>
								                </div></td>
								            </tr>
							            <tfoot>
							                <tr style="background: #3F6791; color:#fff;">
							                    <th class="text-center">CODIGO</th>
							                <th class="text-center">NOMBRE</th>
							                <th class="text-center">NIT PROVEEDOR</th>
							                <th class="text-center">PRECIO COMPRA</th>
							                <th class="text-center">IVA</th>
							                <th class="text-center">PRECIO VENTA</th>
							                <th class="text-center">ACCIONES</th>
							                </tr>
							            </tfoot>
							        </tbody>
							    </table>
							</div>
                        </div>
                        <!-- Modal agregar usuario-->
                        <div class="modal fade" id="modal_agregar_producto" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                          <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content card card-outline card-primary">
                              <div class="modal-body card-body">
                                <div class="row card-header text-center">
                                <div class="col-11">
                                    <p class="h2"><span style="opacity:0;">ee</span>Agregar producto</p>
                                </div>
                                <div class="col-1">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>
                                </div>
                                <p class="login-box-msg">Registre un nuevo producto</p>
                                <form method="POST" action="">
                                  <div class="input-group mb-3">
                                    <input type="number" class="form-control" id="cod_producto" name="cod_producto" placeholder="Codigo de producto">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-barcode"></span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="input-group mb-3">
                                    <input type="text" class="form-control" id="nom_agre_pro" name="nom_agre_pro" placeholder="Nombre">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-file-signature"></span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="input-group mb-3">
                                    <input type="text" class="form-control" id="nit_agre_pro" name="nit_agre_pro" placeholder="Nit proveedor">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-address-card"></span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="input-group mb-3">
                                    <input type="text" class="form-control" id="iva_agre_pro" name="iva_agre_pro" placeholder="IVA de compra">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-percent"></span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="input-group mb-3">
                                    <input type="text" class="form-control" id="compra_agre_usu" name="compra_agre_usu" placeholder="Precio de compra">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="far fa-money-bill-alt"></span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="input-group mb-3">
                                    <input type="text" class="form-control" id="venta_agre_usu" name="venta_agre_usu" placeholder="Precio de venta">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-hand-holding-usd"></span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="row">
                                    <!-- /.col -->
                                    <div class="col-4 mb-0">
                                      <button type="button" class="btn btn-danger btn-block" data-dismiss="modal" >Cerrar</button>
                                    </div>
                                    <!-- /.col -->
                                    <div class="col-4 mb-0">
                                      <input type="submit" class="btn btn-primary btn-block" name="accion" value="Agregar">
                                    </div>
                                    <!-- /.col -->
                                  </div>
                                </form>
                              </div>
                              <!-- /.form-box -->
                            </div>
                            <!-- /.register-box -->
                          </div>
                        </div>
                        <!-- Modal editar usuario-->
                        <div class="modal fade" id="modal_editar_producto" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                          <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content card card-outline card-primary">
                              <div class="modal-body card-body">
                                <div class="row card-header text-center">
                                <div class="col-11">
                                    <p class="h2"><span style="opacity:0;">ee</span>Editar usuario</p>
                                </div>
                                <div class="col-1">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>
                                </div>
                                <p class="login-box-msg">Formulario de edicion de productos</p>
                                <form method="POST" action="">
                                <div class="input-group mb-3">
                                    <input type="number" class="form-control" id="cod_producto" name="cod_producto" placeholder="Codigo de producto" value="">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-barcode"></span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="input-group mb-3">
                                    <input type="text" class="form-control" id="nom_edit_pro" name="nom_edit_pro" placeholder="Nombre" value="">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-file-signature"></span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="input-group mb-3">
                                    <input type="text" class="form-control" id="nit_edit_pro" name="nit_edit_pro" placeholder="Nit proveedor" value="">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-address-card"></span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="input-group mb-3">
                                    <input type="text" class="form-control" id="iva_edit_pro" name="iva_edit_pro" placeholder="IVA de compra" value="">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-percent"></span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="input-group mb-3">
                                    <input type="text" class="form-control" id="compra_edit_usu" name="compra_edit_usu" placeholder="Precio de compra" value="">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="far fa-money-bill-alt"></span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="input-group mb-3">
                                    <input type="text" class="form-control" id="venta_edit_usu" name="venta_edit_usu" placeholder="Precio de venta" value="">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-hand-holding-usd"></span>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="row">
                                    <!-- /.col -->
                                    <div class="col-4 mb-0">
                                      <button type="button" class="btn btn-danger btn-block" data-dismiss="modal" >Cerrar</button>
                                    </div>
                                    <!-- /.col -->
                                    <div class="col-4 mb-0">
                                      <input type="submit" class="btn btn-primary btn-block" name="accion" value="Actualizar">
                                    </div>
                                    <!-- /.col -->
                                  </div>
                                </form>
                              </div>
                              <!-- /.form-box -->
                            </div>
                            <!-- /.register-box -->
                          </div>
                        </div>

                      </div>
                      <!-- /.col -->
                    </div>
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

			<section class="content">

				<div class="accordion" id="accordionExample">
					<div class="card">
						<div class="card-header" >
							<h2 class="mb-0">
								<button
									class="btn btn-link btn-block text-left collapsed card-title text-center"
									type="button" data-toggle="collapse" data-target="#collapseTwo"
									aria-expanded="false" aria-controls="collapseTwo">
									<strong> Panel de carga archivo .csv</strong>
									<div class="divider"></div>
								</button>
							</h2>
						</div>
						<div id="collapseTwo" class="collapse"
							aria-labelledby="headingTwo" data-parent="#accordionExample">
							<div class="card-body">
								<div class="row">
									<div class="col-12 text-center">
										<h5 for="archivo" class="form-label"
											font-size: 18px;">Seleccione el
											archivo en formato .csv</h5>
										<div class="divider">
											<br>
										</div>
										<img width="200px" height="200px" src="${pageContext.request.contextPath}/images/csv.png" alt="" class="img-size-10 mr-3">
										<div class="divider">
											<br>
										</div>
										
										<form method="post" name="formulario" enctype="multipart/form-data">
											<div class="row form-group">
													<input type="file" name="archivo" id="archivo" style="margin: auto;" accept=".csv" class="filestyle" data-buttonText="Seleccione archivo" data-buttonText="Seleccione archivo .csv" onchange="return validarExt()">
											</div>
												<input type="hidden" name="nombre" value="">
												<br>
												<div class="row">
													<div class="text-center" style="margin: auto;">
														<br>
														<input type="submit" value="Procesar" name="procesar" onclick="cargarArchivo(archivo)" class="btn btn-success aling-center">
													</div>
												</div>
										 </form>
								<br>

							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<%@ include file="../template/footer.jsp"%>
	<%@ include file="../template/script.jsp"%>
</body>
</html>
