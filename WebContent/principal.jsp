<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RoomAway: Los mejores Escape Rooms</title>

<!-- BOOTSTRAP TEMPLATES -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- ESTILOS CSS -->
<link rel="stylesheet" href="css/principal.css">
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
					<li class="nav-item active"><a class="nav-link" href="principal.jsp">Inicio
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Team</a></li>

				</ul>
				<button class="btn btn-danger reservar" onclick="window.location.href='formularioreserva.jsp'">
					<b>Reservar sala</b>
				</button>
			</div>
		</nav>
		<h3 class="mensaje">¿Te atreves a salir?</h3>
		<img alt="" src="img/principal.cabecera2.jpg">
	</div>
	<!-- 	CUERPO	 -->
	<div class="container-fluid-cuerpo"
		style="background-image: url('img/laberinto3.jpg');">
		<br> <br> <br> <br>
		<!-- 	FILTRO DE DIFICULTADES -->
		<div class="center-btn">
			<ul
				class="list-group list-unstyled list-group-horizontal justify-content-center">
				<li><button class="btn btn-danger btn-lg filtro" id="todas">
						<b>Todas</b>
					</button></li>
				<li><button class="btn btn-outline-secondary btn-lg filtro"
						id="facil">
						<b>Fácil</b>
					</button></li>
				<li><button class="btn btn-outline-secondary btn-lg filtro"
						id="medio">
						<b>Medio</b>
					</button></li>
				<li><button class="btn btn-outline-secondary btn-lg filtro"
						id="dificil">
						<b>Difícil</b>
					</button></li>
			</ul>
		</div>
		<br> <br> <br>
		<!--  LISTADO DE ROOMS -->
		<div class="container" style="text-align: inherit; padding: 0">
			<div class="grid-item easy" id="easy1">
				<a href=""><img src="img/room1.jpg" class="room rounded"></a>
				<div class="texto">
					<p class="text" style="text-align: left;">
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span class="glyphicon glyphicon-lock"></span> <span
							class="glyphicon glyphicon-lock"></span><br> <a href="#" class="rojo">Laboratorio</a>

					</p>
				</div>
			</div>
			<div class="grid-item hard" id="hard1">
				<a href=""><img src="img/room2.jpg" class="room rounded">
				</a>
				<div class="texto">
					<p class="text" style="text-align: left;">
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span><br>
						<a href="#" class="rojo">Haunted Hospital</a>
					</p>
				</div>
			</div>
			<div class="grid-item medium" id="medium1">
				<a href=""><img src="img/room3.jpg" class="room rounded"></a>
				<div class="texto">
					<p class="text" style="text-align: left;">
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span class="glyphicon glyphicon-lock"></span><br> <a href="#" class="rojo">El Búnker</a>
					</p>
				</div>
			</div>
			<div class="grid-item medium" id="medium2">
				<a href=""><img src="img/room4.jpg" class="room rounded"></a>
				<div class="texto">
					<p class="text" style="text-align: left;">
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span class="glyphicon glyphicon-lock"></span><br> <a href="#" class="rojo">El Dr.
						Nick</a>
					</p>
				</div>
			</div>
			<div class="grid-item hard" id="hard2">
				<a href=""><img src="img/room5.jpg" class="room rounded">
				</a>
				<div class="texto">
					<p class="text" style="text-align: left;">
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span><br>
						<a href="#" class="rojo">ZEO 101</a>
					</p>
				</div>
			</div>
			<div class="grid-item easy" id="easy2">
				<a href=""><img src="img/room6.jpg" class="room rounded">
				</a>
				<div class="texto">
					<p class="text" style="text-align: left;">
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span style="color: #D81C17" class="glyphicon glyphicon-lock"></span>
						<span class="glyphicon glyphicon-lock"></span> <span
							class="glyphicon glyphicon-lock"></span><br> <a href="#" class="rojo">Almacén
						soviético</a>
					</p>
				</div>
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
	<script type="text/javascript">
		document.getElementById("todas").addEventListener("click", function() {
			document.getElementById("easy1").style = "display: inline-block";
			document.getElementById("easy2").style = "display: inline-block";
			document.getElementById("medium1").style = "display: inline-block";
			document.getElementById("medium2").style = "display: inline-block";
			document.getElementById("hard1").style = "display: inline-block";
			document.getElementById("hard2").style = "display: inline-block";

		});

		document.getElementById("facil").addEventListener("click", function() {
			document.getElementById("easy1").style = "display: inline-block";
			document.getElementById("easy2").style = "display: inline-block";
			document.getElementById("medium1").style = "display: none";
			document.getElementById("medium2").style = "display: none";
			document.getElementById("hard1").style = "display: none";
			document.getElementById("hard2").style = "display: none";

		});

		document.getElementById("medio").addEventListener("click", function() {
			document.getElementById("easy1").style = "display: none";
			document.getElementById("easy2").style = "display: none";
			document.getElementById("medium1").style = "display: inline-block";
			document.getElementById("medium2").style = "display: inline-block";
			document.getElementById("hard1").style = "display: none";
			document.getElementById("hard2").style = "display: none";

		});

		document
				.getElementById("dificil")
				.addEventListener(
						"click",
						function() {
							document.getElementById("easy1").style = "display: none";
							document.getElementById("easy2").style = "display: none";
							document.getElementById("medium1").style = "display: none";
							document.getElementById("medium2").style = "display: none";
							document.getElementById("hard1").style = "display: inline-block";
							document.getElementById("hard2").style = "display: inline-block";

						});
	</script>

</body>
</html>