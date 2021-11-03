<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import='java.text.SimpleDateFormat' %>
<%@ page import='java.text.DateFormat' %>
<%@ page import='java.util.Date' %>
<%@ page import='java.util.ArrayList' %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ventas || Tienda Generica</title>
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
                <h1 class="m-0 text-center">Ventas</h1>
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
	                      <br><h4 class="m-0 text-center">Informacion Cliente</h4><br>
                      </div>
	                      <div class="col-md-4">
		                      <label>Cedula cliente</label>
		                      <div class="btn-group col-md-12">
		                      	<input type="text" class="form-control" id="cedula_cliente" name="cedula_cliente" value="">
		                      	<button type="button" class="btn btn-success" onclick="buscar_nom_cli()"><i class="far fa-check-circle"></i></button>
		                      </div>
	                      </div>
	                      <div class="col-md-4">
		                      <label for="nombre_cliente">Nombre cliente</label>
		                      <input type="text" class="form-control" id="nombre_cliente" name="nombre_cliente" value="" disabled>
	                      </div>
	                      <div class="col-md-4">
		                      <label for="consecutivo">Consecutivo</label>
		                      <input type="text" class="form-control" id="consecutivo" name="consecutivo" value="" disabled>
	                      </div>
	                      <div class="col-md-12">
		                      <br><h4 class="m-0 text-center">Informacion Producto</h4><br>
	                      </div>
	                      <div class="col-md-3">
		                      <label for="consecutivo">Codigo producto</label>
		                      <div class="btn-group col-md-12">
		                      	<input type="text" class="form-control" id="cod_producto" name="cod_producto" value="">
		                      	<button type="button" onclick="buscar_nom_pro('totaliva')" class="btn btn-success"><i class="far fa-check-circle"></i></button>
		                      </div>
	                      </div>
	                      
	                      <div class="col-md-3">
	                      	  <input type="hidden" id="numdoc" value="">
		                      <label for="consecutivo">Nombre</label>
		                      <input type="text" class="form-control" id="nom_producto" name="nom_producto" value="" disabled>
	                      </div>
	                      <div class="col-md-1">
		                      <label for="consecutivo">Cantidad</label>
		                      <input type="text" class="form-control" id="cantidad" name="cantidad">
	                      </div>
	                      <div class="col-md-2">
		                      <label for="consecutivo">Valor Unitario</label>
		                      <input type="text" class="form-control" id="valor_unitario" name="valor_unitario" value="$" disabled>
	                      </div>
	                       <div class="col-md-1">
		                      <label for="consecutivo">IVA</label>
		                      <input type="text" class="form-control" id="iva" name="iva" value="%" disabled>
	                      </div>
	                      <div class="col-md-2">
		                      <label for="consecutivo">Valor Total</label>
		                      <div class="btn-group col-md-12">
		                       <input type="text" class="form-control" id="valor_total" name="valor_total" value="" disabled>
		                      <button class="btn btn-success"><i class="far fa-plus-square"></i></button>
	                      </div>
	                      </div>
                      
                      <div class="col-md-12">
	                      <br><h4 class="m-0 text-center">Lista de productos</h4><br>
                      </div>
                      <div class="col-12 my-2">
                      	<table id="example" class="table display table-striped table-bordered compact" style="width:100%">
					        <thead class="text-capitalize ">
					            <tr style="background: #3F6791; color: #fff;">
					                <th class="text-center">#</th>
					                <th class="text-center">CODIGO PRODUCTO</th>
					                <th class="text-center">NOMBRE PRODUCTO</th>
					                <th class="text-center">CANTIDAD</th>
					                <th class="text-center">IVA</th>
					                <th class="text-center">VALOR UNIDAD</th>
					                <th class="text-center">TOTAL</th>
					            </tr>
					        </thead>
					        <tbody>
								            <tr>
								                <td style="text-align: center;">1</td>
								                <td style="text-align: center;">1001</td>
								                <td style="text-align: center;">Queso doble crema 500gr</td>
								                <td style="text-align: center;">2</td>
								                <td style="text-align: center;">475</td>
								                <td style="text-align: center;">2500</td>
								                <td style="text-align: center;">2975</td>
								            </tr>
					        </tbody>
						</table>
                      </div>
                      <div class="col-6">
                      	<img class="img-fluid" src="${pageContext.request.contextPath}/img/logo.png" alt="Logo_tienda" height="250" width="500">
                      </div>
                          <div class="col-6">
			                  <p class="m-0">Monto de venta - <%= new SimpleDateFormat("yyyy/MM/dd").format(new Date())%></p>

			                  <div class="table-responsive">
			                    <table class="table">
			                      <tr>
			                        <th style="width:50%">Total venta:</th>
			                        <td id="totalsubtotal">$ </td>
			                      </tr>
			                      <tr>
			                        <th>Total IVA:</th>
			                        <td id="totaliva">$ </td>
			                      </tr>
			                     <tr>
			                        <th>Total a Pagar:</th>
			                        <td id="totalpagar">$ </td>
			                      </tr>
			                    </table>
			                  </div>
                			</div>
                			<div class="col-12">
			                   <button class="btn btn-success float-right" ">Confirmar</button>
			                   <button class="btn btn-danger float-right">Cancelar Venta</button>
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
	</div>
	<%@ include file="../template/footer.jsp"%>
</div>
	<%@ include file="../template/script.jsp"%>
</body>
</html>
