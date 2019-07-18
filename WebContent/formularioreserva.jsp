<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="modelo.Modelo"%>
<%@ page import="modelo.Salas"%>
<%
	Modelo modelo = new Modelo();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Raleway:400,700"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="css/formulario1.css" />
<link type="text/css" rel="stylesheet" href="css/formulario2.css" />
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>

<title>Reservar</title>
</head>

<body>
<div class="full-screen-preview">
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
					<li class="nav-item"><a class="nav-link" href="team.jsp">Team</a></li>

				</ul>
			</div>
		</nav>
	</div>
	</div>

	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
						<div class="form-header">
							<h1>Realiza tu reserva</h1>
						</div>

						<form action="ReservarSala" method="post">
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<span class="form-label">Nombre</span> <input
											class="form-control" type="text"
											placeholder="Introduzca su nombre" id="nombre" name="nombre">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<span class="form-label">Primer apellido</span> <input
											class="form-control" type="text"
											placeholder="Introduzca su primer apellido" id="apellido1"
											name="apellido1">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<span class="form-label">Segundo apellido</span> <input
											class="form-control" type="text"
											placeholder="Introduzca su segundo apellido" id="apellido2"
											name="apellido2">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<input class="form-control" type="email"
											placeholder="Introduzca su email" id="email" name="email">
										<span class="form-label">Email</span>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<input class="form-control" type="tel"
											placeholder="Introduzca su telefono" id="telefono"
											name="telefono"> <span class="form-label">Telefono</span>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<select class="form-control" required id="njug"
											name="nJugadores">
											<option value="" selected hidden>Numero de jugadores</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select> <span class="select-arrow"></span> <span class="form-label">Jugadores</span>
									</div>
								</div>
							</div>


							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<select class="form-control" required id="sala" name="nSala">
											<option value="" selected hidden>Sala</option>
											<%
												for (Salas s : modelo.getListaSalas()) {
											%>
											<option value="<%=s.getId()%>"><%=s.getNombre()%></option>
											<%
												}
											%>
										</select> <span class="select-arrow"></span> <span class="form-label">Sala</span>
									</div>
								</div>

					
								<div class="col-md-4">
									<div class="form-group">
										<input class="form-control" type="date" required id="fecha"> <span
											class="form-label">Seleccione fecha</span>
									</div>
								</div>

								<div style="color:red; margin-left:450px; font-weight:bold; display:none"id="error">Seleccione sala y fecha</div>
								
								<div class="col-md-3" id="horasAll" style="display:none">
									<div class="form-group">
										<div class="form-control"
											style="color: #ffa700; padding-top: 10px; height: 120px; text-align: center">
											<b>SELECCIONE HORA</b>
											<p></p>
											<input type="radio" name="idHorario" id="Hora10"> <span
												style="color: graytext; padding-right: 15px"> 10:00 </span>

											<input type="radio" name="idHorario" id="Hora11"> <span
												style="color: graytext"> 11:00 </span> <br> <br> <input
												type="radio" name="idHorario" id="Hora12"> <span
												style="color: graytext; padding-right: 15px"> 12:00 </span>

											<input type="radio" name="idHorario" id="Hora13"> <span
												style="color: graytext"> 13:00 </span>
										</div>


									</div>
								</div>

							</div>
							<div class="row">
								<div class="col-md-2">
									<div class="form-group">
										<input class="form-control reservar" style="display:none; margin-left:800px; position: absolute" id="reservar" type="submit"
											value="Reservar"> <span class="form-label">RESERVAR</span>
									</div>
								</div>
								
							</div>
						</form>

						<div class="row">
						<form action="" method="post" id="consultarDisponibilidad">
								<div class="col-md-3"
									style="margin-left: 390px; position: absolute">
									<div class="form-group">
										<input class="form-control cancelar" type="submit"
											value="Consultar disponibilidad"> <span
											class="form-label">Disponibilidad </span>
									</div>
								</div>
								</form>
								
									<div class="col-md-2">
									<div class="form-group">
										<a href="principal.jsp" class="form-control cancelar"
											style="padding-top: 19px; margin-left: 800px">Cancelar</a>
									</div>
								</div>
							</div>
							<br> <br>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<img class="fondo" alt="" src="img/principal.cabecera2.jpg">
	

	<script type="text/javascript">
	document.getElementById("consultarDisponibilidad").addEventListener ("click", function(e) {
					e.preventDefault();
					e.stopPropagation();

					var objDispon = new Object();

					objDispon.sala = document.getElementById("sala").value;
					objDispon.fecha = document.getElementById("fecha").value;

					var objDisponJSON = JSON.stringify(objDispon);
	
					var http = new XMLHttpRequest();

					http.onreadystatechange = function() {
						if (this.readyState === 4 && this.status === 200) {
							var horarios = JSON.parse(this.responseText);
							for (var i=0; i<horarios.length; i++) {
								var idHora = "Hora" + horarios[i].diaHoraInicio.time.hour;
								var radioHora = document.getElementById(idHora);
								radioHora.value = horarios[i].id;
								radioHora.disabled = !horarios[i].disponibilidad;
							}
							
							if (horarios.length > 0) {
								document.getElementById("horasAll").style="display:inline";
								document.getElementById("reservar").style="display:inline; margin-left:800px";
								document.getElementById("error").style="display:none";
							}
						}
					};

					document.getElementById("horasAll").style="display:none";
					document.getElementById("reservar").style="display:none";
					document.getElementById("error").style="display:inline; color:red; margin-left:450px; font-weight:bold";
					
					
					http.open("POST", "ConsultarDisp", true);
					http.setRequestHeader("Content-type",
							"application/x-www-form-urlencoded");
					http.send("objDisponJSON="+objDisponJSON);

				});

		
	</script>

</body>

</html>