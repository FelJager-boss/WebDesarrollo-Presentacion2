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
	<div class="d-flex">
		<div class="col-sm-4">
			<div class="card">
				<form action="Controlador" method="POST">
					<div class="card-body">
							<div class="form-group">
								<label>Datos del Cliente</label>
							</div>
							<div class="form-group d-flex">
								<div class="col-sm-6 d-flex">
									<input type="text" name="codigocliente" class="form-control" placeholder="Codigo">
									<input type="submit" name="accion" class="btn btn-outline-info">
								</div>
								<div class="col-sm-6">
									<input type="text" name="nombrescliente" class="form-control col-sm-6">
								</div>
							</div>
							<div class="form-group"></div>
								<label>Datos Productos</label>
							<div class="form-group d-flex"></div>
								<div class="col-sm-6 d-flex">
										<input type="text" name="codigoproductos" class="form-control" placeholder="Codigo">
										<input type="submit" name="accion" class="btn btn-outline-info">
									</div>
									<div class="col-sm-6">
										<input type="text" name="nombresproducto" class="form-control col-sm-6">
								</div>
							<div class="form-group d-flex">
								<div class="col-sm-6 d-flex">
									<input type="text" name="precio" class="form-control" placeholder="Codigo">
								</div>
								<div class="col-sm-3">
									<input type="number" name="cant" class="btn btn-outline-info">
								</div>
								<div class="col-sm-3">
									<input type="text" name="stock" class="form-control col-sm-6">
								</div>
							</div>
							
							<div class="form-group">
								<input type="submit" name="accion" value="Agregar" class="btn btn-outline-info">
							</div>
						</div>
				</form>
			</div>
		</div>
		<div class="col-sm-7">
			<div>
				<input type="text" name="NroSerie" class="form-control">
			</div>
		</div>		
	</div>
	<script src="https:/s/code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>