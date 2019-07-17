<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="modelo.Modelo"%>
<%@ page import="modelo.Salas"%>

<%
	Modelo modelo = new Modelo();

	Integer id = (Integer) request.getAttribute("id");

	for (Salas sala : modelo.getListaSalas()) {
		if (sala.getId() == id) {
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RoomAway:<%=sala.getNombre()%></title>

<!-- BOOTSTRAP TEMPLATES -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- ESTILOS CSS -->
<link rel="stylesheet" href="css/principal.css">
<link rel="stylesheet" href="css/dinamica.css">
<!-- FAVICON -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<!-- ICONOS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body class="full-screen-preview">
	<!-- CABECERA. BARRA DE NAVEGACION-->
	<div class="my-header">
		<nav
			class="navbar sticky-top navbar-expand-lg navbar-dark bg-secondary">
			<img class="img-logo" alt="" src="img/logo.png"
				style="height: 50px; width: 50px"> <a class="navbar-brand"
				href="#">RoomAway</a>
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="principal.jsp">Inicio <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Team</a></li>

				</ul>
				<button class="btn btn-danger reservar"
					onclick="window.location.href='formularioreserva.jsp'">
					<b>Reservar sala</b>
				</button>
			</div>
		</nav>

		<h4 class="mensaje">
			<b><%=sala.getNombre()%></b>
		</h4>
		<img alt="" src="img dinamica/<%=sala.getImagen()%>">
	</div>
	<!-- 	CUERPO	 -->
	<div class="container-fluid-cuerpo"
		style="background-image: url('img/laberinto3.jpg');">
		<br> <br> <br> <br>
		<!-- 	DIFICULTAD | TIEMPO | JUGADORES -->
		<div class="row info">
			<div class="elemento dificultad">
						

				<h4 class="desc elemental"><%=sala.getDificultad()%></h4>
			</div>
			<div class="elemento jugadores">
				<div>
					<span class="glyphicon glyphicon-user"></span> <span
						class="glyphicon glyphicon-user"></span> <span class="personas">2
						- 5</span>
				</div>
				<h4 class="desc elemental">JUGADORES</h4>
			</div>
			<div class="elemento duracion">
				<span class="glyphicon glyphicon-time"></span> <span class="time">60</span>
				<h4 class="desc elemental">MINUTOS</h4>
			</div>
			<div class="elemento precio">
				<span class="glyphicon glyphicon-credit-card"></span><span
					class="prize"><%=sala.getPrecio()%></span>
				<h4 class="desc elemental">EUR</h4>
			</div>
		</div>
		<br> <br> <br>
		<!--  DESCRIPCION | RESERVAR -->
		<div class="row descripcion">
			<div class="col-8">
				<p class="parrafada"><%=sala.getDescripcion()%></p>
			</div>
			<div class="col">
				<button class="btn btn-danger reservar2">Reservar sala</button>
			</div>
		</div>
		<br> <br> <br> <br> <br> <br> <br>
	</div>
	<!-- 		FOOTER   -->
	<div class="container-fluid-footer"
		style="background-image: url('img/pie.jpg');">
		<img class="logo-footer" alt="" src="img/logo.png">
		<p class="texto-footer">
			© RoomAway 2019. Todos los derechos reservados <br> Diseño por <a
				class="desarrolladoras" href="#">Clara y Raquel</a>
		</p>
	</div>
	<%
			}
		}
	%>
	
</body>
</html>