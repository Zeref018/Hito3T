<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Formulario de Solocrossfit</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }
    header {
      background-color: #333;
      color: #fff;
      padding: 20px;
      text-align: center;
    }
    nav {
      background-color: #f4f4f4;
      padding: 10px;
      text-align: center;
    }
    nav ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
    }
    nav li {
      display: inline-block;
      margin: 0 5px;
    }
    nav a {
      text-decoration: none;
      color: #333;
      padding: 5px 10px;
    }
    nav a:hover {
      background-color: #333;
      color: #fff;
    }
    h1 {
      text-align: center;
      margin-top: 30px;
    }
    form {
      max-width: 300px;
      margin: 0 auto;
      text-align: center;
    }
    label {
      display: block;
      margin-bottom: 10px;
    }
    input[type="text"] {
      width: 100%;
      padding: 5px;
      margin-bottom: 10px;
    }
    input[type="submit"] {
      background-color: #333;
      color: #fff;
      padding: 10px 20px;
      border: none;
      cursor: pointer;
    }
    input[type="submit"]:hover {
      background-color: #666;
    }
  </style>
</head>
<body>
  <header>
    <h1>Login de Solocrossfit</h1>
  </header>
  <nav>
    <ul>
      <li><a href="add-cliente.jsp">Registrararse</a></li>
      <li><a href="select-cliente.jsp">Login</a></li>
    </ul>
  </nav>
  <form method="post" action="selectCliente">
    <label for="nombre">Nombre de Usuario:</label>
    <input type="text" id="nombre" name="nombre" required>
    <input type="submit" value="Enviar">
  </form>
</body>
</html>
