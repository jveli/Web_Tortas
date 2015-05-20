<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="/struts-jquery-tags" prefix="sj" %>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>


<script type="text/javascript">
		$.subscribe('rowselectProducto', function(event,data) {
			document.getElementById("idSeleccion").value= event.originalEvent.id;
				 
			 var grid = event.originalEvent.grid; 
			 var sel_id = grid.jqGrid('getGridParam', 'selrow'); 
			
			 document.getElementById("idMantNombre").value = grid.jqGrid('getCell', sel_id, 'nombre');
		 	 document.getElementById("idMantPrecio").value = grid.jqGrid('getCell', sel_id, 'precio');
				 //Esto no llama la imagen
				 //document.getElementById("idMantImagen").value = grid.jqGrid('getCell', sel_id, 'Imagen');
				 //
			 document.getElementById("idMantEstado").value = grid.jqGrid('getCell', sel_id, 'estado');
	 		 document.getElementById("idMantDescripcion").value = grid.jqGrid('getCell', sel_id, 'descripcion');
	 		 document.getElementById("idTipoProducto").value = grid.jqGrid('getCell', sel_id, 'idTipoProducto');
			 document.getElementById("idCategoriaProducto").value = grid.jqGrid('getCell', sel_id, 'idCategoriaProducto');
 			 document.getElementById("idSubCategoriaProducto").value = grid.jqGrid('getCell', sel_id, 'idSubCategoriaProducto');
				 
		document.getElementById("idMantUsuario").value = grid.jqGrid('getCell', sel_id, 'idUsuario');
		}); 

		function actualizarProducto(){
				document.getElementById("idForm").action = 'actualizaProducto';
				return true;
		}  
		function eliminaProducto(){
			document.getElementById("idForm").action = 'eliminaProducto';
			return true;
		}  
		function registrarProducto(){
				document.getElementById("idForm").action = 'registraProducto';
				return true;
		} 
		function listaProducto(){
			document.getElementById("idForm").action = 'listaProducto';
			return true;
		} 
</script> 
<div>
	<h3 class="section-title">Mantenimiento de Producto</h3>
</div>

<div class="row">
	<div class="col-xs-12">
			<s:form id="idForm" enctype="multipart/form-data" method="post" cssClass="form-horizontal"> 
			 		<s:hidden id="idSeleccion" name="idSeleccion"/>				 		
			 		<div class="form-group">	
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Nombre</label>
						<div class="col-sm-9">
							<input type="text"  id="idMantNombre" placeholder="Nombre Producto" class="col-xs-10 col-sm-5" name="producto.nombre">
						</div>
					</div>		
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Precio</label>				
						<div class="col-sm-9">
							<input type="text" id="idMantPrecio"  placeholder="Precio" class="col-xs-10 col-sm-5"  name="producto.precio" >
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Estado</label>
						<div class="col-sm-9">
							<input type="text" id="idMantEstado" placeholder="Estado" class="col-xs-10 col-sm-5" value="1" name="producto.estado" >
						</div>
					</div>	
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Descripcion</label>
						<div class="col-sm-9">
							<textarea class="input-xlarge" name="producto.descripcion" id="idMantDescripcion"></textarea>
						</div>
					</div>		
					<div class="space-4"></div>
					<div class="form-group">	
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Tipo</label>
						<div class="col-sm-9">
							<div class="clearfix">
							<s:url id="jsonTipoProducto"  action="cargaDinamicoTipoProducto"/> 
								<sj:select  href="%{jsonTipoProducto}"  
											id="idTipoProducto" 
											name="producto.tipo.idTipoProducto"
									 		list="lstTipo" 
									 		listKey="idTipoProducto"
								 		    listValue="descripcion"  
								 		    headerKey="-1"   
											headerValue="[ Seleccione ]" />	
							</div>
						</div>
					</div>		
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Categoria</label>
						<div class="col-sm-9">
							<div class="clearfix">
								<s:url id="jsonCategoriaProducto" action="cargaDinamicoCategoriaProducto"/> 
									<sj:select  href="%{jsonCategoriaProducto}"  
												id="idCategoriaProducto" 
												name="producto.categoria.idCategoriaProducto"
										 		list="lstCategoria" 
										 		listKey="idCategoriaProducto"
									 		    listValue="descripcion"  
									 		    headerKey="-1"   
												headerValue="[ Seleccione ]"
												onChangeTopics="carga1" />	
							</div>
						</div>
					</div>		
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1">SubCategoria</label>
						<div class="col-sm-9">
							<div class="clearfix">
								<s:url id="jsonSubCategoriaProducto" action="cargaDinamicoSubCategoriaProducto"/> 
									<sj:select  href="%{jsonSubCategoriaProducto}"  
												id="idSubCategoriaProducto" 
												name="producto.subcategoria.idSubCategoriaProducto"
										 		list="lstSubCategoria" 
										 		listKey="idSubCategoriaProducto"
									 		    listValue="descripcion"  
									 		    headerKey="-1"   
												headerValue="[ Seleccione ]"
												reloadTopics="carga1" />
							</div>
						</div>
					</div>
					<div class="space-4"></div>	
					<div class="form-group">			
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Imagen</label>
						<div class="col-sm-9">
							<s:file id="idMantImagen"  name="producto.Imagen" accept="text/txt" />	
						</div>
					</div>		
					<label id="idMantLabelUsuario">Usuario</label>
					<s:textfield  id="idMantUsuario"  name="producto.idUsuario"  />		
			</s:form>
			<div class="space-4"></div>	
			<div class="form-group" align="center">	
				<div class="col-sm-9">
					<sj:submit cssClass="btn btn-primary" id="idFormAgregarPro"  value="Registrar" button="true" targets="idDivManProResultado"  formIds="idForm" onclick="javascript:registrarProducto();"/>
					<sj:submit cssClass="btn btn-primary" id="idFormActualizarPro"  value="Actualizar" button="true"  targets="idDivManProResultado" formIds="idForm" onclick="javascript:actualizarProducto();"/>
					<sj:submit cssClass="btn btn-primary" id="idFormEliminarPro"  value="Eliminar" button="true" targets="idDivManProResultado"  formIds="idForm" onclick="javascript:eliminaProducto();"/>
					<sj:submit cssClass="btn btn-primary" id="idFormSalirPro"  value="Listar" button="true" targets="idDivManProResultado"  formIds="idForm" onclick="javascript:listaProducto();"/>
				</div>
			</div>
	</div>
</div>
<div id="idDivManProResultado" align="center"></div>	





