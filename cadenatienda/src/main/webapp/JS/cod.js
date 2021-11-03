/**
 * 
 */
function validarExt(){
	var fileinput = document.getElementById("archivo");
        var fileRuta = fileinput.value;
        var extension = /(.csv)$/i;
        if(!extension.exec(fileRuta)){ 
          Swal.fire({
            title: "Espera",
            text: "Recuerda que solo se pueden enviar archivos con extension .csv",
            icon: "warning",
            showConfirmButton: true
          });  
          fileinput.value = '';
          return false;
        }
}

function cargarArchivo(elemento){
			fileinput1.value = '';
			var file = elemento.files[0];
			var objHidden = document.formulario.nombre;
			objHidden.value = file.name;
			document.formulario.action = "CargarArchivo";
			document.formulario.submit();
			//alert("se proceso");
}


function ver_contra(checkbox){
	
 var password = document.getElementById("contrasena");

  if (checkbox.checked){
    password.type = "text";
  } else {
    password.type = "password";
    
  }
}

function elim_usuario(btn){
	var id = btn.id;
	id = parseInt(id);
    	Swal.fire({
              html: '¿Estas seguro de eliminar este usuario?',
              text: "Tenga en cuenta que esta accion es irreversible!",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Si, Eliminar!',
              cancelButtonText: 'Cancelar'
            }).then((result) => {
              if (result.isConfirmed) {
      			location.href = "http://localhost:6450/login/UsuariosServlet?accion=Eliminar&id="+id;
              }
            })
    
  }
function mostrar_usuario(btn){
	var id = btn.id;
	id = parseInt(id);
	//alert(id);
	location.href = "http://localhost:6450/login/UsuariosServlet?accion=Traer&id="+id;
}
function modal(){
	$('#modal_editar_usuarios').modal('show');
}
function buscarUsuario(){
	var id = document.getElementById("num_buscar_usu").value;
	id = parseInt(id);
	if($("#num_buscar_usu").val().length < 1){
		Swal.fire({
				  title: 'Espera!',
				  text: "Debe digitar almenos un numero para empezar la busqueda del usuario",
				  icon: 'warning',
				  showCancelButton: false,
				  confirmButtonColor: '#3085d6',
				  confirmButtonText: 'Entiendo'
				})
	}else{
	//alert(id);
		location.href = "http://localhost:6450/login/UsuariosServlet?accion=buscar&id="+id;
	}
}

//-------clientes---------------

function elim_cliente(btn){
	var id = btn.id;
	id = parseInt(id);
    	Swal.fire({
              html: '¿Estas seguro de eliminar este cliente?',
              text: "Tenga en cuenta que esta accion es irreversible!",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Si, Eliminar!',
              cancelButtonText: 'Cancelar'
            }).then((result) => {
              if (result.isConfirmed) {
      			location.href = "http://localhost:6450/login/ClientesServlet?accion=Eliminar&id="+id;
              }
            })
    
  }

function mostrar_cliente(btn){
	var id = btn.id;
	id = parseInt(id);
	//alert(id);
	location.href = "http://localhost:6450/login/ClientesServlet?accion=Traer&id="+id;
}

function modal_clientes(){
	$('#modal_editar_clientes').modal('show');
}
function buscarCliente(){
	var id = document.getElementById("num_buscar_cli").value;
	id = parseInt(id);
	if($("#num_buscar_cli").val().length < 1){
		Swal.fire({
				  title: 'Espera!',
				  text: "Debe digitar almenos un numero para empezar la busqueda del cliente",
				  icon: 'warning',
				  showCancelButton: false,
				  confirmButtonColor: '#3085d6',
				  confirmButtonText: 'Entiendo'
				})
	}else{
	//alert(id);
		location.href = "http://localhost:6450/login/ClientesServlet?accion=buscar&id="+id;
	}
}

//-------proveedores---------------

function elim_proveedor(btn){
	var id = btn.id;
	id = parseInt(id);
    	Swal.fire({
              html: '¿Estas seguro de eliminar este proveedor?',
              text: "Tenga en cuenta que esta accion es irreversible!",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Si, Eliminar!',
              cancelButtonText: 'Cancelar'
            }).then((result) => {
              if (result.isConfirmed) {
      			location.href = "http://localhost:6450/login/ProveedoresServlet?accion=Eliminar&id="+id;
              }
            })
    
  }

function mostrar_proveedor(btn){
	var id = btn.id;
	id = parseInt(id);
	//alert(id);
	location.href = "http://localhost:6450/login/ProveedoresServlet?accion=Traer&id="+id;
}

function modal_proveedores(){
	$('#modal_editar_proveedores').modal('show');
}
function buscarProveedor(){
	var id = document.getElementById("nit_bus_pro").value;
	id = parseInt(id);
	if($("#nit_bus_pro").val().length < 1){
		Swal.fire({
				  title: 'Espera!',
				  text: "Debe digitar almenos un numero para empezar la busqueda del proveedor",
				  icon: 'warning',
				  showCancelButton: false,
				  confirmButtonColor: '#3085d6',
				  confirmButtonText: 'Entiendo'
				})
	}else{
	//alert(id);
		location.href = "http://localhost:6450/login/ProveedoresServlet?accion=buscar&id="+id;
	}
}



//---------- ventas---------
function buscar_nom_cli(){
	var id = document.getElementById("cedula_cliente").value;
	id = parseInt(id);
	var num = document.getElementById("consecutivo").value;
	num = parseInt(num);
	if($("#cedula_cliente").val().length < 1){
		Swal.fire({
		  title: 'Espera!',
		  text: "Debe digitar almenos un numero para empezar la busqueda del cliente",
		  icon: 'warning',
		  showCancelButton: false,
		  confirmButtonColor: '#3085d6',
		  confirmButtonText: 'Entiendo'
		})
	}else{
		//alert(id);
		location.href = "http://localhost:6450/login/VentasServlet?accion=Traer&cedula_cliente="+id+"&num="+num;
	}
}

function buscar_nom_pro(totaliva){
	var id = document.getElementById("cod_producto").value;
	id = parseInt(id);
	var nombre = document.getElementById("nombre_cliente").value;
	var cedula = document.getElementById("cedula_cliente").value;
	var iva = document.getElementById("totaliva").innerHTML;
	iva = iva.substr(2);
	var total = document.getElementById("totalpagar").innerHTML;
	total = total.substr(2);
	var subtotal = document.getElementById("totalsubtotal").innerHTML;
	subtotal = subtotal.substr(2);
	cedula = parseInt(cedula);
	var num = document.getElementById("consecutivo").value;
	num = parseInt(num);
	if($("#cod_producto").val().length < 1){
		Swal.fire({
		  title: 'Espera!',
		  text: "Debe digitar almenos un numero para empezar la busqueda del producto",
		  icon: 'warning',
		  showCancelButton: false,
		  confirmButtonColor: '#3085d6',
		  confirmButtonText: 'Entiendo'
		})
	}else{
		//alert(id);
		location.href = "http://localhost:6450/login/VentasServlet?accion=Traerp&cod_producto="+id+"&nombre_cliente="+nombre+"&cedula_cliente="+cedula+"&total="+total+"&subtotal="+subtotal+"&iva="+iva+"&num="+num;
	}
}

function valorTotalProducto(){
	var val_unitario = document.getElementById("valor_unitario").value;
	val_unitario = val_unitario.substr(1);
	val_unitario = parseInt(val_unitario);
	var iva = document.getElementById("iva").value;
	iva = iva.substr(0,2);
	iva = "0."+iva;
	iva = parseFloat(iva);
	var cantidad = document.getElementById("cantidad").value;
	cantidad = parseInt(cantidad);
	var resultado =	((val_unitario*iva)+val_unitario)*cantidad;
	//alert(resultado);
	if(isNaN(resultado) || resultado == null){
		document.getElementById("valor_total").value = "$ "+0;
	}else{
		document.getElementById("valor_total").value = "$ "+resultado;
	}
	
}

function agregar_producto(){
	var nombre = document.getElementById("nombre_cliente").value;
	var cedula = document.getElementById("cedula_cliente").value;
	var cod_producto = document.getElementById("cod_producto").value;
	var nom_producto = document.getElementById("nom_producto").value;
	var valor_unitario = document.getElementById("valor_unitario").value;
	var cantidad = document.getElementById("cantidad").value;
	var iva = document.getElementById("iva").value;
	var num = document.getElementById("consecutivo").value;
	num = parseInt(num);
	valor_unitario = valor_unitario.substr(2);
	iva = iva.substr(0,2);
	valor_unitario = parseInt(valor_unitario);
	cedula = parseInt(cedula);
	if(nombre == "" || cedula == "" || cod_producto == "" || nom_producto == "" || valor_unitario == "" || cantidad == "" || cod_producto == ""){
		Swal.fire({
		  title: 'Espera!',
		  text: "No se debe dejar ningun campo vacio",
		  icon: 'warning',
		  showCancelButton: false,
		  confirmButtonColor: '#3085d6',
		  confirmButtonText: 'Entiendo'
		})
	}else{
		location.href = "http://localhost:6450/login/VentasServlet?accion=add&nombre_cliente="+nombre+"&cedula_cliente="+cedula+"&cod_producto="+cod_producto+"&nom_producto="+nom_producto+"&valor_unitario="+valor_unitario+"&cantidad="+cantidad+"&iva="+iva+"&num="+num;
	}	
}
/*
$(document).ready(function(){
	if(document.getElementById("consecutivo").value == "null"){
		location.href = "http://localhost:6450/login/VentasServlet?accion=factura";
	}
});
*/
function ingresarVenta(){
	var cedula = document.getElementById("cedula_cliente").value;
	var numdoc = document.getElementById("numdoc").value;
	var num = document.getElementById("consecutivo").value;
	var iva = document.getElementById("totaliva").innerHTML;
	iva = iva.substr(2);
	var total = document.getElementById("totalpagar").innerHTML;
	total = total.substr(2);
	var subtotal = document.getElementById("totalsubtotal").innerHTML;
	subtotal = subtotal.substr(2);
	if($("#cedula_cliente").val().length < 1 || $("#numdoc").val().length < 1 || $("#consecutivo").val().length < 1){
		Swal.fire({
		  title: 'Espera!',
		  text: "Ningun campo debe estar vacio",
		  icon: 'warning',
		  showCancelButton: false,
		  confirmButtonColor: '#3085d6',
		  confirmButtonText: 'Entiendo'
		})
	}else{
	 location.href = "http://localhost:6450/login/VentasServlet?accion=ingreso&cedula_cliente="+cedula+"&num="+num+"&numdoc="+numdoc+"&subtotal="+subtotal+"&iva="+iva+"&total="+total;
	}
	
}

//---------------------productos-------------
function elim_producto(btn){
	var id = btn.id;
	id = parseInt(id);
    	Swal.fire({
              html: '¿Estas seguro de eliminar este producto?',
              text: "Tenga en cuenta que esta accion es irreversible!",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Si, Eliminar!',
              cancelButtonText: 'Cancelar'
            }).then((result) => {
              if (result.isConfirmed) {
      			location.href = "http://localhost:6450/login/ProductosServlet?accion=Eliminar&id="+id;
              }
            })
    
  }
function mostrar_producto(btn){
	var id = btn.id;
	id = parseInt(id);
	//alert(id);
	location.href = "http://localhost:6450/login/ProductosServlet?accion=Traer&id="+id;
}
function modal_producto(){
	$('#modal_editar_producto').modal('show');
}
function buscarProducto(){
	var id = document.getElementById("num_buscar_pro").value;
	id = parseInt(id);
	if($("#num_buscar_pro").val().length < 1){
		Swal.fire({
				  title: 'Espera!',
				  text: "Debe digitar almenos un numero para empezar la busqueda del producto",
				  icon: 'warning',
				  showCancelButton: false,
				  confirmButtonColor: '#3085d6',
				  confirmButtonText: 'Entiendo'
				})
	}else{
	//alert(id);
		location.href = "http://localhost:6450/login/ProductosServlet?accion=buscar&id="+id;
	}
}
