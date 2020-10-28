<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Main</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
	<div class = "d-flex">
		<div class="card col-sm-4">
			<div class="card-body">
				<form action="controlador?menu=Empleado" method="POST">
					<div class="form-group">
						<label>Dni</label>
						<input type="text" value="${empleado.getDni()}" name="txtDni" class="form-control">
					</div>
					<div class="form-group">
						<label>Nombres</label>
						<input type="text" value="${empleado.getNom()}" name="txtDni" class="form-control">
					</div>
					<div class="form-group">
						<label>Telefono</label>
						<input type="text" value="${empleado.getTel()}" name="txtDni" class="form-control">
					</div>
					<div class="form-group">
						<label>Estado</label>
						<input type="text" value="${empleado.getEstado()}" name="txtDni" class="form-control">
					</div>
					<div class="form-group">
						<label>Usuario</label>
						<input type="text" value="${empleado.getUser()}" name="txtDni" class="form-control">
					</div>
					<input type="submit" name="accion" value="Agregar" class="btn btn-info">
					<input type="submit" name="accion" value="Actualizar" class="btn btn-info">
				</form>
			</div>
		</div>
		
		<div class="col-sm-8">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>DNI</th>
						<th>NOMBRES</th>
						<th>TELEFONO</th>
						<th>ESTADO</th>
						<th>USUARIO</th>
						<th>ACCIONES</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="em" items="${empleados}">
						<tr>
							<th>${em.getId()}</th>
							<th>${em.getDni()}</th>
							<th>${em.getNom()}</th>
							<th>${em.getTel()}</th>
							<th>${em.getEstado()}</th>
							<th>${em.getUsuario()}</th>
							<td>
								<a class="btn btn-warning" href="Controlador?menu=Empleado&accion=Editar&id=${em.getId()}">Editar</a>
								<a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Delete&id=${em.getId()}">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>