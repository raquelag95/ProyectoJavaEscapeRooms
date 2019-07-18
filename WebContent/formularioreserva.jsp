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

<link href="https://fonts.googleapis.com/css?family=Raleway:400,700"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="css/formulario1.css" />
<link type="text/css" rel="stylesheet" href="css/formulario2.css" />
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>

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

								<<<<<<< HEAD
								<div class="col-md-4">
									<div class="form-group">
										<input class="form-control" type="date" required> <span
											class="form-label" style="color: graytext">Seleccione
											fecha</span>
									</div>
								</div>


								<div class="col-md-3">
									<div class="form-group">
										<div class="form-control"
											style="color: graytext; padding-top: 10px; height: 120px; text-align: center">
											<b>SELECCIONE HORA</b>
											<p></p>
											<input type="radio" name="hora"> <span
												style="color: graytext; padding-right: 15px"> 10:00 </span>

											<input type="radio" name="hora"> <span
												style="color: graytext"> 11:00 </span> <br> <br> <input
												type="radio" name="hora"> <span
												style="color: graytext; padding-right: 15px"> 12:00 </span>

											<input type="radio" name="hora"> <span
												style="color: graytext"> 13:00 </span>
										</div>


									</div>
								</div>

							</div>
							<br>
							<div class="row">
								<div class="col-md-2">
									<div class="form-group">
										<input class="form-control reservar" type="submit"
											value="Reservar"> <span class="form-label">Reservar</span>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<!-- <input class="form-control cancelar" type="button" value="Cancelar"> -->
										<!-- <span class="form-label">Cancelar</span> -->
										<a href="principal.jsp" class="form-control cancelar"
											style="padding-top: 19px">Cancelar</a>
									</div>
								</div>
							</div>
						</form>

						<form action="" method="post" id="consultarDisponibilidad">
							<div class="row">
								<div class="col-md-3"
									style="margin-left: 720px; margin-bottom: 20%; position: absolute">
									<div class="form-group">
										<input class="form-control cancelar" type="submit"
											value="Consultar disponibilidad"> <span
											class="form-label">Disponibilidad</span>
									</div>
								</div>
							</div>
							<br> <br>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	
	
	
					e.preventDefault();
					e.stopPropagation();

					var objDispon = new Object();

					objDispon.sala = document.getElementById("sala").value;
					objDispon.fecha = document.getElementById("fecha").value;

					console.log("soy el objeto normal " + objDispon);

					var objDisponJSON = JSON.stringify(objDispon);
					console.log("soy el objeso JSON " + objDisponJSON);

					var http = new XMLHttpRequest();

					http.onreadystatechange = function() {
						if (this.readyState === 4 && this.status === 200) {
							var arrayRespuesta = JSON.parse(this.responseText);
							console.log(arrayRespuesta);
						}
					};

					http.open("POST", "ConsultarDispon", true);
					http.setRequestHeader("Content-type",
							"application/x-www-form-urlencoded");
					http.send("objDisponJSON="+objDisponJSON);

				});

		
	</script>

</body>

</html>