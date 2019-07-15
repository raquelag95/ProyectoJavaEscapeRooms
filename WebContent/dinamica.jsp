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
					<li class="nav-item active"><a class="nav-link" href="#">Inicio
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Team</a></li>

				</ul>
				<button class="btn btn-danger reservar" type="submit">
					<b>Reservar sala</b>
				</button>
			</div>
		</nav>
		<img alt="" src="img dinamica/room1.expandida.jpg">
	</div>
	<!-- 	CUERPO	 -->
	<div class="container-fluid-cuerpo"
		style="background-image: url('img/laberinto3.jpg');">
		<br> <br> <br> <br>
		<!-- 	DIFICULTAD | TIEMPO | JUGADORES -->
		<div class="row">
			<div class="col">
			
			</div>

		</div>
		<br> <br> <br>
		<!--  DESCRIPCION | RESERVAR -->

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