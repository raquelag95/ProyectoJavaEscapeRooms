<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="modelo.Modelo"%>
    <%@ page import="modelo.Reservas"%>
    <%
	Modelo modelo = new Modelo();
    Integer id = (Integer) request.getAttribute("id");
    for (Reservas res : modelo.getListaReservas()) {
    	if (res.getId() == id) {
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reserva confirmada</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="css/formulario1.css" />
<link type="text/css" rel="stylesheet" href="css/formulario2.css" />
<link rel="stylesheet" href="css/principal.css">
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">

</head>
<body class="full-screen-preview">
	<div class="my-header">
		<nav
			class="navbar sticky-top navbar-expand-lg navbar-dark bg-secondary">
			<img class="img-logo" alt="" src="img/logo.png"
				style="height: 50px; width: 50px"> <a class="navbar-brand"
				href="principal.jsp">RoomAway</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="principal.jsp">Inicio
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Team</a></li>

				</ul>
			</div>
		</nav>
		<img alt="" src="img/principal.cabecera2.jpg">
		<div id="booking" class="section">
		<div class="section-center2">
		<div class="container">
		<div class="row">
		<div class="booking-form">
		<br>
		<br>
		<br>
		<h1 class="confirmatitulo">¡SU RESERVA SE HA REALIZADO CORRECTAMENTE!</h1>
		<br>
		<h3 class="confirmatexto">Le hemos enviado un email de confirmación con los datos de la reserva a <%=res.getCorreo()%></h3>
		<br>
		<div>
		<h3 class="confirmatitulo2">¡Hasta pronto!</h3>
		
		<img class="img-logo" alt="" src="img/logo.png"
				style="height: 50px; width: 50px; position:inherit; margin-left: 47%;"> 
		</div>
		</div> 
		</div>
		</div>
		</div>
		</div>
	</div>
		<%
    	}
		}
	%>
	
</body>
</html>