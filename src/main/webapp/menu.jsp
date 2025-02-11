<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Citas para Personas con Diabetes</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://www.pixelstalk.net/wp-content/uploads/2016/06/Images-Light-Blue-Wallpaper-HD.jpg');
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            height: 100vh;
        }
        .navbar {
            background-color: rgba(0, 123, 255, 0.9);
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .navbar .logo {
            font-size: 24px;
            font-weight: bold;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            font-size: 16px;
            transition: color 0.3s ease;
        }
        .navbar a:hover {
            color: #ffcc00;
        }
        .content {
            padding: 20px;
            text-align: center;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .content h1 {
            color: #333;
            font-size: 36px;
            margin-bottom: 20px;
        }
        .content p {
            color: #555;
            font-size: 18px;
            max-width: 600px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="logo">Sistema de Citas</div>
        <div>
            <a href="informacion.jsp">Información</a>
            <a href="contacto.jsp">Contacto</a>
            <a href="mantenimiento.jsp">Mantenimiento</a>
            <a href="videos.jsp">Videos</a>
            <a href="creditos.jsp">Derechos de Autor</a>
            <a href="index.jsp">Cerrar Sesión</a>
        </div>
    </div>
    <div class="content">
        <h1>Bienvenido al Sistema de Citas para Personas con Diabetes</h1>
        <p>Seleccione una opción del menú para continuar.</p>
    </div>
</body>
</html>
