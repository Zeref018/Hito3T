<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Formulario de Solocrossfit</title>
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
		form {
			width: 400px;
			margin: 0 auto;
			background-color: #fff;
			padding: 20px;
			border-radius: 5px;
			box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
		}
		label {
			display: block;
			margin-bottom: 5px;
		}
		input,
		select {
			width: 100%;
			padding: 10px;
			margin-bottom: 10px;
			border: 1px solid #ccc;
			border-radius: 3px;
			box-sizing: border-box;
		}
		input[type="submit"] {
			background-color: #555;
			color: #fff;
			border: none;
			cursor: pointer;
		}
		input[type="submit"]:hover {
			background-color: #333;
		}
	</style>
	<script>
		window.addEventListener('DOMContentLoaded', (event) => {
			const nivelSelect = document.getElementById('nivel');
			const competicionesInput = document.getElementById('competiciones');

			nivelSelect.addEventListener('change', () => {
				if (nivelSelect.value === 'beginner') {
					competicionesInput.disabled = true;
					competicionesInput.style.display = "none";
				} else {
					competicionesInput.disabled = false;
					competicionesInput.style.display = "block";
				}
			});
		});
	</script>
</head>
<body>
	<header>
		<h1>Registro de Solocrossfit</h1>
	</header>
	<nav>
		<ul>
			<li><a href="add-cliente.jsp">Registrararse</a></li>
			<li><a href="select-cliente.jsp">Login</a></li>
		</ul>
	</nav>
	<form method="post" action="add">
		<label for="nombre">Nombre de Usuario:</label>
		<input type="text" id="nombre" name="nombre" required>
		<br>
		<label for="nivel">Nivel:</label>
		<select id="nivel" name="nivel">
			<option value="beginner">
			Beginner (2 sesiones por semana) - $25</option>
<option value="intermediate">Intermediate (3 sesiones por semana) - $30</option>
<option value="elite">Elite (5 sesiones por semana) - $35</option>
</select>
<br>
<label for="private-sessions">Número de Sesiones Privadas por hora:</label>
<input type="number" id="private-sessions" name="private-sessions" min="0" max="20">
<br>
<label for="competiciones">Número de Competiciones:</label>
<input type="number" id="competiciones" name="competiciones" min="0" max="10" disabled>
<br>
<label for="peso">Peso en kg:</label>
<select id="peso" name="peso">
<option value="Flyweight">66 - 72 KG</option>
<option value="Lightweight">73 - 80 KG</option>
<option value="Light-Middleweight">81 - 89 KG</option>
<option value="Middleweight">90 - 99 KG</option>
<option value="Light-Heavyweight">100 KG</option>
<option value="Heavyweight">100+ KG</option>
</select>
<br>
<input type="submit" value="Enviar">
</form>

</body>
</html>
