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
<link rel="stylesheet" href="css/team.css">
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
				href="principal.jsp">RoomAway</a>
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="principal.jsp">Inicio <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="team.jsp">Team</a></li>
				</ul>
				<button class="btn btn-danger reservar"
					onclick="window.location.href='formularioreserva.jsp'">
					<b>Reservar sala</b>
				</button>
			</div>
		</nav>
		<h3 class="mensaje">¿NOS CONOCES?</h3>
		<h5
			style="position: absolute; font-family: fantasy; font-size: 200%; color: white; margin-left: 550px; margin-top: 200px; text-align: center; letter-spacing: 2px; color: #E3D6D6">
			PROGRAMADORAS <br> WEB
		</h5>
		<br> <br> <br>
		<div>
			<img alt="" src="img/pie.jpg" style="height: 1500px">
			<div class="container-fluid" style="height: 700px; width: 100%">
				<div class="row"
					style="text-align: center; height: 300px; width: 100%">
					<div class="col-md-5 clara" style="text-align: inherit;">
						<div class="container linkedin"
							style="height: 100px; width: 100px">
							<a href="http://www.linkedin.com/in/clara-sanchez-sobrino"
								target="blank"> <img title="Abrir linkedin de Clara"
								src="img/linkedin.png"
								style="height: 50%; width: auto; position: static;"></a>
						</div>
						<img alt="" src="img/clara.jpg" class="claraFoto"
							style="max-width: 40%; height: auto; border-radius: 70%; box-shadow: 10px 10px 50px #201D1D; margin-rigth: 100px">
					</div>
					<div class="col-md-5 raquel"
						style="text-align: center; width: 100%">
						<div class="container linkedin"
							style="height: 100px; width: 100px">
							<a href="http://www.linkedin.com/in/raquel-agar" target="blank">
								<img title="Abrir linkedin de Raquel" src="img/linkedin.png"
								style="height: 50%; width: auto; position: static;">
							</a>
						</div>
						<img alt="" src="img/raquel.JPG" class="raquelFoto"
							style="max-width: 40%; height: auto; border-radius: 70%; box-shadow: 10px 10px 50px #201D1D;">
					</div>
				</div>
				<div class="row"
					style="text-align: center; height: 90px; width: 100%">
					<div class="col-md-5 clara"
						style="text-align: center; width: 50px; height: 60px;">
						<h3
							style="display: inline; color: white; margin-left: 200px; font-family: monospace;">Clara
							Sánchez Sobrino</h3>
						<h4
							style="color: white; margin-left: 200px; font-family: monospace; color: #E3D6D6">Graduada
							en Psicología</h4>
						<div class="container correo"
							style="height: 100px; width: 200px; margin-left: 60px">
							<h5
								style="color: white; margin-left: 180px; font-family: sans-serif; font-style: italic; color: #E3D6D6; transition: transform .2s;">clara.sanchez.sobrino@gmail.com</h5>
						</div>
					</div>
					<div class="col-md-5 raquel"
						style="text-align: center; width: 50px; height: 60px;">
						<h3
							style="display: inline; color: white; margin-left: 200px; font-family: monospace;">Raquel
							Asensio García</h3>
						<h4
							style="color: white; margin-left: 200px; font-family: monospace; color: #E3D6D6">Graduada
							en Ingeniería Química</h4>
						<div class="container correo"
							style="height: 100px; width: 200px; margin-left: 60px">
							<h5
								style="color: white; margin-left: 200px; font-family: sans-serif; font-style: italic; color: #E3D6D6; transition: transform .2s;">raquelasensiog@gmail.com</h5>
						</div>
					</div>
				</div>
				<br>
				<div class="row"
					style="text-align: center; height: 250px; width: 100%">
					<div class="container text" style="width: 600px; height: 200px; margin-top: 50px; background-color: rgba(0, 0, 0, 0.5);">
						<p
							style="font-size: 140%; color: white; text-align: justify; margin: 15px; font-family: monospace;">
							Viniendo de ramas absolutamente distintas a la informática, somos
							dos profesionales que han descubierto su pasión por este mundo y
							que intentan abrirse paso en él. Trabajando juntas hemos
							desarrollado esta página web con la idea de reflejar la
							versatilidad que poseemos.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- 	CUERPO	 -->
	<div class="container-fluid-cuerpo"
		style="background-image: url('img/laberinto3.jpg');">
		<div class="container" style="text-align: inherit; padding: 0">
			<br>
			<h3 class="mensaje"
				style="color: #494545; font-size: 400%; letter-spacing: 2px;">¿A
				QUÉ ESPERAS PARA CONOCERNOS?</h3>
		</div>
		<br> <br> <br> <br> <br>
	</div>
	<!-- 		FOOTER   -->
	<div class="container-fluid-footer"
		style="background-image: url('img/pie.jpg');">
		<img class="logo-footer" alt="" src="img/logo.png">
		<p class="texto-footer">
			© RoomAway 2019. Todos los derechos reservados <br> Diseño por <a
				class="desarrolladoras" href="team.jsp" title="Ir a 'team'">Clara
				y Raquel</a>
		</p>
	</div>

</body>
</html>