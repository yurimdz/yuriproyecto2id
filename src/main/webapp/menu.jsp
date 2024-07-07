<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menú Principal</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }
        .menu-container {
            width: 100%;
            background-color: #007bff;
            color: white;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .menu-container a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
        }
        .menu-content {
            margin: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="menu-container">
        <div>
            <a href="informacion.jsp">Información</a>
            <a href="contacto.jsp">Contacto</a>
            <a href="mantenimiento.jsp">Mantenimiento</a>
            <a href="videos.jsp">Videos</a>
            <a href="creditos.jsp">Derechos de Autor</a>
        </div>
        <div>
            <a href="index.jsp">Cerrar Sesión</a>
        </div>
    </div>
    <div class="menu-content">
        <h1>Bienvenido al Menú Principal</h1>
        <p>Seleccione una opción del menú para continuar.</p>
    </div>
</body>
</html>
