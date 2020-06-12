<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>

<title>Elizabeth </title>
</head>
<body> 

 <div class="container">
 <h1>Crud de Alumno</h1>
		 <div class="col-md-23" >  
			  <form id="idFormElimina" action="eliminaAlumno">
			  		<input type="hidden" id="id_elimina" name="id">
			  </form>	
				
		       <form accept-charset="UTF-8"  action="listaAlumno" class="simple_form" id="defaultForm2"  method="get">
		       		<div class="row">
						<div class="col-md-3">	
							<div class="form-group">
							  	<label class="control-label" for="id_nonbre_filtro">NOMBRE</label>
							  	<input class="form-control" id="id_nonbre_filtro"  name="filtro" placeholder="Ingrese el nombre" type="text" maxlength="30"/>
							</div>
						</div>
					</div>			
					<div class="row">
						<div class="col-md-3">
							<button type="submit" class="btn btn-primary" id="validateBtnw1" >FILTRA</button><br>&nbsp;<br>
						</div>
						<div class="col-md-3">
							<button type="button" data-toggle='modal' onclick="registrar();"  class='btn btn-success' id="validateBtnw2" >REGISTRA</button><br>&nbsp;<br>
						</div>
					</div>
					<div class="row" > 
						<div class="col-md-12">
								<div class="content" >
						
									<table id="tableAlumno" class="table table-striped table-bordered" >
										<thead>
											<tr>
												<th>ID</th>
												<th>Nombre</th>
												<th>DNI</th>
												<th>Correo</th>
												<th>Fecha Nacimiento</th>
												<th>Actualiza </th>
												<th>Elimina </th>
											</tr>
										</thead>
										<tbody>
												     
												<c:forEach items="${alumnos}" var="x">
													<tr>
														<td>${x.idAlumno}</td>
														<td>${x.nombre}</td>
														<td>${x.dni}</td>
														<td>${x.correo}</td>
														<td><fmt:formatDate value="${x.fechaNacimiento}" pattern="yyyy-MM-dd"/> </td>
														<td>
															<button type='button' data-toggle='modal' onclick="editar('${x.idAlumno}','${x.nombre}','${x.dni}','${x.correo}','<fmt:formatDate value="${x.fechaNacimiento}" pattern="yyyy-MM-dd"/>');" class='btn btn-success' style='background-color:hsla(233, 100%, 100%, 0);'>
																<img src='images/edit.gif' width='auto' height='auto' />
															</button>
														</td>
														<td>
															<button type='button' data-toggle='modal' onclick="eliminar('${x.idAlumno}');">
																<img src='images/delete.gif' width='auto' height='auto' />
															</button>
														</td>
													</tr>
												</c:forEach>
										</tbody>
										</table>	
									
								</div>	
						</div>
					</div>
		 		</form>
		  </div>
  
  	 <div class="modal fade" id="idModalRegistra" >
			<div class="modal-dialog" style="width: 60%">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Registro de Alumno</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaAlumno" class="form-horizontal"     method="post">
				            <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos del Alumno</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_nombre">Nombre</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_dni">dni</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_dni" name="dni" placeholder="Ingrese dni" type="text" maxlength="10"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_correo">correo</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_correo" name="correo" placeholder="Ingrese correo" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>    
		                                   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_fechaNacimiento">fechaNacimiento</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_fechaNacimiento" name="fechaNacimiento" placeholder="Ingrese fechaNacimientocorreo" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>    
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="submit" class="btn btn-primary">REGISTRA ALUMNO</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        
		                    </div>
		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>
  
		 <div class="modal fade" id="idModalActualiza" >
			<div class="modal-dialog" style="width: 60%">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Alumno</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaAlumno" class="form-horizontal"     method="post">
							<div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos del Alumno</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_ID">ID</label>
		                                        <div class="col-lg-5">
		                                           <input class="form-control" id="id_ID" readonly="readonly" name="idAlumno" type="text" maxlength="8"/>
		                                        </div>
		                                     </div>
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_nombre">Nombre</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_dni">dni</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_dni" name="dni" placeholder="Ingrese el dni" type="text" maxlength="10"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_correo">correo</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_correo" name="correo" placeholder="Ingrese el correo" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>    
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_fechaNacimiento">fechaNacimiento</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_fechaNacimiento" name="fechaNacimiento" placeholder="Ingrese fechaNacimiento" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>    
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="submit" class="btn btn-primary">ACTUALIZA</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        
		                    </div>
		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>

</div>

<script type="text/javascript">
function eliminar(id){	
	$('input[id=id_elimina]').val(id);
	$('#idFormElimina').submit();
}

function registrar(){	
	$('#idModalRegistra').modal("show");
}

function editar(id,nombre,dni,correo,fechaNacimiento){	
	$('input[id=id_ID]').val(id);
	$('input[id=id_act_nombre]').val(nombre);
	$('input[id=id_act_dni]').val(dni);
	$('input[id=id_act_correo]').val(correo);
	$('select[id=id_act_fechaNacimiento]').val(fechaNacimiento);
	$('#idModalActualiza').modal("show");
}

$(document).ready(function() {
    $('#tableAlumno').DataTable();
} );
</script>

<script type="text/javascript">
	$('#id_form_registra').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	nombre: {
        		selector : '#id_reg_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 5 a 100 caracteres',
                    	min : 5,
                    	max : 100
                    }
                }
            },
        	fechaInicio: {
        		selector : '#id_reg_fechaInicio',
                validators: {
                    notEmpty: {
                        message: 'La fecha de inicio es un campo obligatorio'
                    },
                    date :{
                    	format: 'YYYY-MM-DD',
                    	message:'La fecha de inicio tiene formato YYYY-MM-DD',
                    }
                }
            },
        	fechaFin: {
        		selector : '#id_reg_fechaFin',
                validators: {
                    notEmpty: {
                        message: 'La fecha de fin es un campo obligatorio'
                    },
                    date :{
                    	format: 'YYYY-MM-DD',
                    	message:'La fecha de fin tiene formato YYYY-MM-DD',
                    }
                }
            },     
            estado: {
        		selector : '#id_reg_estado',
                validators: {
                    notEmpty: {
                        message: 'El estado es un campo obligatorio'
                    },
                }
            },                 
        }   
    });
</script>

<script type="text/javascript">
	$('#id_form_actualiza').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        }
	});
	
</script>
<script type="text/javascript">
	$('#id_form_actualiza').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        }
	});
	
</script>
  
</body>
</html> 