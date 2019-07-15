<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="stylesheet" -->
<!-- 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" -->
<!-- 	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" -->
<!-- 	crossorigin="anonymous"> -->
	
<link href="https://fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="css/formulario1.css" />
<link type="text/css" rel="stylesheet" href="css/formulario2.css" />

<title>Reservar</title>
</head>

<body>
<div id="booking" class="section">
<div class="section-center">
<div class="container">
<div class="row">
<div class="booking-form">
<div class="form-header">
<h1>Realiza tu reserva</h1>
</div>

<form>
<div class="row">
<div class="col-md-4">
<div class="form-group">
<span class="form-label">Nombre</span>
<input class="form-control" type="text" placeholder="Introduzca su nombre">
</div>
</div>
<div class="col-md-4">
<div class="form-group">
<span class="form-label">Primer apellido</span>
<input class="form-control" type="text" placeholder="Introduzca su primer apellido">
</div>
</div>
<div class="col-md-4">
<div class="form-group">
<span class="form-label">Segundo apellido</span>
<input class="form-control" type="text" placeholder="Introduzca su segundo apellido">
</div>
</div>
</div>

<div class="row">
<div class="col-md-4">
<div class="form-group">
<input class="form-control" type="email" placeholder="Introduzca su email">
<span class="form-label">Email</span>
</div>
</div>
<div class="col-md-4">
<div class="form-group">
<input class="form-control" type="tel" placeholder="Introduzca su telefono">
<span class="form-label">Telefono</span>
</div>
</div>
<div class="col-md-4">
<div class="form-group">
<select class="form-control" required>
<option value="" selected hidden>Numero de jugadores</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
</select>
<span class="select-arrow"></span>
<span class="form-label">Jugadores</span>
</div>
</div>
</div>

<div class="row">
<div class="col-md-4">
<div class="form-group">
<select class="form-control" required>
<option value="" selected hidden>Sala</option>
<option>1</option>
<option>2</option>
<option>3</option>
</select>
<span class="select-arrow"></span>
<span class="form-label">Sala</span>
</div>
</div>

<div class="col-md-4">
<div class="form-group">
<input class="form-control" type="date" required>
<span class="form-label">Seleccione fecha y hora</span>
</div>
</div>
</div>

<div class="row">
<div class="col-md-2">
<div class="form-group">
<input class="form-control reservar" type="submit" value="Reservar">
<span class="form-label">Reservar</span>
</div>
</div>
<div class="col-md-2">
<div class="form-group">
<input class="form-control reservar" type="button" value="Cancelar">
<span class="form-label">Cancelar</span>
</div>
</div>
</div>

</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>