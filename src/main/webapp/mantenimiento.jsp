<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mantenimiento de Pacientes</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image: url('https://www.pixelstalk.net/wp-content/uploads/2016/06/Images-Light-Blue-Wallpaper-HD.jpg');
            background-size: cover;
            background-position: center;
            overflow: auto;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            border-radius: 5px;
            width: 90%;
            max-width: 600px;
            text-align: left;
            box-sizing: border-box;
            max-height: 90vh;
            overflow-y: auto;
        }
        .container h2 {
            margin-top: 0;
            color: #333;
        }
        .container label {
            display: block;
            margin: 10px 0 5px;
            color: #333;
        }
        .container input, .container textarea {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 5px 0 10px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .container button {
            width: calc(25% - 10px);
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            margin: 10px 5px;
            box-sizing: border-box;
        }
        .container button:hover {
            background-color: #0056b3;
        }
        .button-group {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Mantenimiento de Pacientes</h2>
        <form action="manejoPacientes.jsp" method="post">
            <label for="cedula">Cédula:</label>
            <input type="text" id="cedula" name="cedula" required>
            
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required>
            
            <label for="edad">Edad:</label>
            <input type="number" id="edad" name="edad" required>
            
            <label for="contacto">Contacto:</label>
            <input type="text" id="contacto" name="contacto" required>
            
            <label for="residencia">Residencia:</label>
            <textarea id="residencia" name="residencia" rows="3" required></textarea>
            
            <div class="button-group">
                <button type="submit" name="action" value="Agregar">Guardar</button>
                <button type="submit" name="action" value="Editar">Editar</button>
                <button type="submit" name="action" value="Eliminar">Eliminar</button>
                <button type="button" onclick="window.location.href='mantenimiento.jsp'">Cancelar</button>
            </div>
        </form>
    </div>
</body>
</html>
