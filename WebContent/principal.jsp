<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RoomAway: Las mejores reservas en Escape Rooms</title>

<!-- LINKS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet" href="mis estilos/estilos.css">
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">

</head>
<body class="full-screen-preview">
	<!-- CABECERA. BARRA DE NAVEGACION-->
	<div class="my-header">
		<nav
			class="navbar sticky-top navbar-expand-lg navbar-dark bg-secondary">
			<img class="img-logo" alt="" src="img/logo.png"
				style="height: 50px; width: 50px"> <a class="navbar-brand"
				href="#">RoomAway</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
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
				<li><button class="btn btn-danger btn-lg" id="todas">
						<b>Todas</b>
					</button></li>
				<li><button class="btn btn-secondary btn-lg" id="facil">
						<b>Fácil</b>
					</button></li>
				<li><button class="btn btn-secondary btn-lg" id="medio">
						<b>Medio</b>
					</button></li>
				<li><button class="btn btn-secondary btn-lg" id="dificil">
						<b>Difícil</b>
					</button></li>
			</ul>
		</div>
		<br> <br> <br>
		<!--  LISTADO DE ROOMS -->
		<div class="container" style="text-align: inherit; padding: 0">
			<a href=""><img src="img/room1.jpg" 
				class="figure-img img-fluid rounded easy"
				style="height: 300px; width: 340px"></a> <a href=""><img
				src="img/room2.jpg" class="figure-img img-fluid rounded hard"
				style="height: 300px; width: 340px"> </a> <a href=""><img
				src="img/room3.jpg" class="figure-img img-fluid rounded medium"
				style="height: 300px; width: 340px"> </a> <a href=""><img
				src="img/room4.jpg" class="figure-img img-fluid rounded medium"
				style="height: 300px; width: 340px"> </a> <a href=""><img
				src="img/room5.jpg" class="figure-img img-fluid rounded hard"
				style="height: 300px; width: 340px"> </a> <a href=""><img
				src="img/room6.jpg" class="figure-img img-fluid rounded easy"
				style="height: 300px; width: 340px"> </a>
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
	
	document.getElementById("todas").addEventListener("click", function () {
		 document.getElementsByClassName("easy").style = "display: inline";
		 document.getElementsByClassName("medium").style = "display: inline";
		 document.getElementsByClassName("hard").style = "display: inline";
				
	});
	
	document.getElementById("facil").addEventListener("click", function () {
		 document.getElementsByClassName("easy").style = "display: inline";
		 document.getElementsByClassName("medium").style = "display: none";
		 document.getElementsByClassName("hard").style = "display: none";
				
	});
	
	document.getElementById("medio").addEventListener("click", function () {
		 document.getElementsByClassName("easy").style = "display: none";
		 document.getElementsByClassName("medium").style = "display: inline";
		 document.getElementsByClassName("hard").style = "display: none";
				
	});
	
	document.getElementById("dificil").addEventListener("click", function () {
		 document.getElementsByClassName("easy").style = "display: none";
		 document.getElementsByClassName("medium").style = "display: none";
		 document.getElementsByClassName("hard").style = "display: inline";
				
	});
		
	</script>

</body>
</html>