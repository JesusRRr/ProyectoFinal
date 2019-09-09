<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mi Cuenta</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark bg-light fixed-top"
		id="top">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"><img
				src="images/logo.png" width="50" alt="logo"> Centro de Salud</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav" id="main-menu">

					<li class="nav-item"><a href="#doctores" class="nav-link">Doctores</a>
					</li>
					<li class="nav-item"><a href="#nutriologos" class="nav-link">Nutriológos</a>
					</li>
					<li class="nav-item"><a href="#entrenadores" class="nav-link">Entrenadores</a>
					</li>
					<li class="nav-item"><a href="Bienvenido.jsp" class="nav-link">Bienvenido</a>
					</li>
				</ul>


			</div>

		</div>
	</nav>
	
	

	<div class="container-fluid bg-cuenta">
		<div class="row ">

			<div class="col-3 cuenta-general">
				
	
				
				<p>Tu cita es el dia:
				
					<%
						out.print(session.getAttribute("fecha").toString());
					%>
				</p>
				
			
				
			</div>
		</div>

	</div>

	<footer>
		<div class="container-fluid padding">
			<div class="row text-center">
				<div class="col-md-4">
					<hr class="light">
					<h5>Contacto</h5>
					<hr class="light">
					<p>Número de telefono: (331) 097 7580</p>
					<p>Email: aplicacion@salud.com</p>
					<p>Domicilio: Av. Adolfo López Mateos Sur 2077, Jardines Plaza
						del Sol, 44510 Guadalajara, Jal.</p>
				</div>
				<div class="col-md-4">
					<hr class="light">
					<h5>Horario</h5>
					<hr class="light">
					<p>Lunes a Viernes: 7:00 a 18:00 hrs</p>
					<p>Sábado: 8:00 a 15:00 hrs</p>
					<p>Domingo: Cerrado</p>
				</div>
				<div class="col-md-4">
					<hr class="light">
					<h5>Sucursales</h5>
					<hr class="light">
					<p>IJALTI: Av. Adolfo López Mateos Sur 2077, Jardines Plaza del
						Sol, 44510 Guadalajara, Jal.</p>
					<p>Ciudad Creativa Digital: Zona Centro, 44100 Guadalajara,
						Jal.</p>
				</div>
				<div class="col-12">
					<hr class="light">
					<h5>&copy; Generation</h5>
				</div>
			</div>
		</div>
	</footer>

</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
<script src="https://kit.fontawesome.com/1967fff348.js"></script>
</html>