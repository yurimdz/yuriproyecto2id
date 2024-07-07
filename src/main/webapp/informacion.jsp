<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Información sobre la Diabetes</title>
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
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            border-radius: 5px;
            width: 90%;
            max-width: 800px;
            text-align: left;
            box-sizing: border-box;
            max-height: 90vh;
            overflow-y: auto;
        }
        .container h2 {
            margin-top: 0;
            color: #333;
        }
        .container p {
            color: #333;
            margin: 10px 0;
        }
        .container ul {
            margin: 10px 0;
            padding-left: 20px;
        }
        .container ul li {
            margin-bottom: 10px;
        }
        .container button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        .container button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Información sobre la Diabetes</h2>
        
        <h3>¿Qué es la Diabetes?</h3>
        <p>La diabetes es una enfermedad crónica que se caracteriza por niveles altos de glucosa (azúcar) en la sangre. Esto puede deberse a una producción insuficiente de insulina o a una resistencia del cuerpo a la insulina.</p>
        
        <h3>¿Cómo prevenir la Diabetes?</h3>
        <ul>
            <li>Mantén un peso saludable mediante una dieta equilibrada y ejercicio regular.</li>
            <li>Realiza actividad física de manera regular, al menos 30 minutos al día.</li>
            <li>Evita el consumo excesivo de azúcares y grasas.</li>
            <li>Controla regularmente tu presión arterial y niveles de glucosa.</li>
            <li>No fumes y limita el consumo de alcohol.</li>
        </ul>
        
        <h3>¿Cómo cuidarse si tienes Diabetes?</h3>
        <ul>
            <li>Sigue las indicaciones de tu médico y toma tus medicamentos según lo recetado.</li>
            <li>Controla regularmente tus niveles de glucosa en sangre.</li>
            <li>Mantén una dieta equilibrada y saludable, rica en frutas, verduras y granos enteros.</li>
            <li>Realiza ejercicio regularmente para mantener un peso saludable y controlar tus niveles de glucosa.</li>
            <li>Asiste a todas tus citas médicas y realiza los exámenes recomendados.</li>
            <li>Cuida tus pies, mantén una buena higiene y revisa cualquier herida o cambio en la piel.</li>
        </ul>
        
        <button onclick="window.print()">Imprimir Información</button>
    </div>
</body>
</html>
