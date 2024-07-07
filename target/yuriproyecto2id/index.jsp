<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Login</title>
    <style>
        body {
            font-family: 'Roboto', Times, serif, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image: url('https://th.bing.com/th/id/R.42783c5c7c01a8ccafc9224b8a121680?rik=cxotn1WvHMuHsg&riu=http%3a%2f%2fwww.pixelstalk.net%2fwp-content%2fuploads%2f2016%2f06%2fImages-Light-Blue-Wallpaper-HD.jpg&ehk=ivBrlRDUHwNNbNO7X6m3WvttWIHoh0WZVT%2bDPIxOgU8%3d&risl=&pid=ImgRaw&r=0');
            background-size: cover;
            background-position: center;
        }
        .login-container {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            border-radius: 5px;
            width: 320px;
            text-align: center;
        }
        .login-container h2 {
            margin-top: 0;
            color: #333;
        }
        .login-container img {
            margin-bottom: 20px;
        }
        .login-container input {
            width: calc(100% - 40px);
            padding: 10px;
            margin: 10px 20px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .login-container button {
            width: calc(100% - 40px);
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            margin: 10px 20px;
        }
        .login-container button:hover {
            background-color: #0056b3;
        }
        .login-container .footer {
            background-color: #007bff;
            color: #fff;
            padding: 10px;
            border-radius: 0 0 5px 5px;
            margin: -20px -20px 0 -20px;
        }
    </style>
    <script>
        function validarCredenciales(event) {
            event.preventDefault();
            const username = document.querySelector('input[name="username"]').value;
            const password = document.querySelector('input[name="password"]').value;
            if (username === 'yuri' && password === '1234') {
                window.location.href = 'menu.jsp';
            } else {
                alert('Usuario o contraseña incorrectos');
            }
        }
    </script>
</head>
<body>
    <div class="login-container">
        <img src="https://download.logo.wine/logo/Microsoft_account/Microsoft_account-Logo.wine.png" alt="Logo" width="200">
        <h2>Iniciar Sesión</h2>
        <form action="login.jsp">
            <input type="text" placeholder="Usuario" name="username" required>
            <input type="password" placeholder="Contraseña" name="password" required>
            <button type="submit">Ingresar</button>
        </form>
    </div>
</body>
</html>
