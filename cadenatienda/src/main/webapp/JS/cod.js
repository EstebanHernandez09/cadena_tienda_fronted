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
function usuario(){
	Swal.fire({
	    title: "Excelente",
	    text: "los datos del usuario son correctos",
	    icon: "success",
	    showConfirmButton: true
	  });  
}

function ver_contra(checkbox){
	
 var password = document.getElementById("contrasena");

  if (checkbox.checked){
    password.type = "text";
  } else {
    password.type = "password";
    
  }
}

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
					Swal.fire({
			            title: "Excelente",
			            text: "El producto se ha eliminado correctamente",
			            icon: "success",
			            showConfirmButton: true
			          });  
              }
            })
    
  }