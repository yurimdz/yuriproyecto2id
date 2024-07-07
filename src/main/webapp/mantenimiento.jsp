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
        .container input, .container select, .container textarea {
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
        <%
            String action = request.getParameter("action");
            String cedula = request.getParameter("cedula");
            String nombre = request.getParameter("nombre");
            String edad = request.getParameter("edad");
            String contacto = request.getParameter("contacto");
            String residencia = request.getParameter("residencia");

            Connection conn = null;
            PreparedStatement ps = null;

            if ("save".equals(action)) {
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_pacientes", "root", "filadelfia26");
                    String sql = "INSERT INTO pacientes (cedula, nombre, edad, contacto, residencia) VALUES (?, ?, ?, ?, ?)";
                    ps = conn.prepareStatement(sql);
                    ps.setString(1, cedula);
                    ps.setString(2, nombre);
                    ps.setInt(3, Integer.parseInt(edad));
                    ps.setString(4, contacto);
                    ps.setString(5, residencia);
                    int rowsInserted = ps.executeUpdate();
                    if (rowsInserted > 0) {
                        out.println("<script>alert('Paciente guardado exitosamente');</script>");
                    } else {
                        out.println("<script>alert('No se pudo guardar el paciente');</script>");
                    }
                } catch (ClassNotFoundException e) {
                    out.println("<script>alert('Error: No se encontró el driver JDBC');</script>");
                    e.printStackTrace();
                } catch (SQLException e) {
                    out.println("<script>alert('Error de SQL: " + e.getMessage() + "');</script>");
                    e.printStackTrace();
                } finally {
                    try {
                        if (ps != null) ps.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        %>
        <form action="mantenimiento.jsp" method="post">
          
