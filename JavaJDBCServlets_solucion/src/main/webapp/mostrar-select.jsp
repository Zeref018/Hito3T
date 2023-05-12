<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Mostrar Cliente</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f7f7f7;
			margin: 0;
			padding: 0;
		}
		header {
			background-color: #333;
			color: #fff;
			padding: 10px;
			text-align: center;
		}
		nav {
			background-color: #555;
			padding: 10px;
		}
		nav ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
			display: flex;
			justify-content: center;
		}
		nav ul li {
			margin: 0 10px;
		}
		nav ul li a {
			color: #fff;
			text-decoration: none;
		}
		h1 {
			text-align: center;
			margin-top: 20px;
		}
		div {
			width: 400px;
			margin: 0 auto;
			background-color: #fff;
			padding: 20px;
			border-radius: 5px;
			box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
		}
		p {
			margin-bottom: 10px;
		}
	</style>
</head>
<body>
	<header>
		<h1>Datos del cliente</h1>
	</header>
	<nav>
		<ul>
			<li><a href="add-cliente.jsp">Registrararse</a></li>
			<li><a href="select-cliente.jsp">Login</a></li>
		</ul>
	</nav>
	<div>
		<%
		// Obtén los datos del request
		int sessions = (int) request.getAttribute("sessions");
		int competiciones = (int) request.getAttribute("competiciones");
		String nombre = (String) request.getAttribute("nombre");
		String nivel = (String) request.getAttribute("nivel");
		String peso = (String) request.getAttribute("peso");

		// Calcula el precio de las competiciones
		double precioCompeticiones = competiciones * 22.00;
		String precioCompeticionesConSimbolo = String.format("%.2f£", precioCompeticiones);
		double precioSessions = sessions * 9.50;
		String precioSessionsConSimbolo = String.format("%.2f£", precioSessions);

		// Calcula el precio dependiendo del nivel
		double precioNivel = 0.0;
		if (nivel.equals("beginner")) {
			precioNivel = 25.0;
		} else if (nivel.equals("intermediate")) {
			precioNivel = 30.0;
		} else if (nivel.equals("elite")) {
			precioNivel = 35.0;
		}

		// Calcula el precio total
		double precioTotal = precioCompeticiones + precioNivel + precioSessions;
		String precioTotalConSimbolo = String.format("%.2f£", precioTotal);
		%>
		<p>Nombre: <%= nombre %></p>
		<p>Nivel: <%= nivel %></p>
		<p>Categoría de peso: <%= peso %></p>
		<p>Sesiones: <%= sessions %></p>
		<p>Precio de las sesiones: <%= precioSessionsConSimbolo %></p>
		<p>Competiciones: <%= competiciones %></p>
		<p>Precio de las competiciones: <%= precioCompeticionesConSimbolo %></p>
		<p>Precio total: <%= precioTotalConSimbolo %></p>            
	</div>
</body>
</html>
		
