<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.SQLException" %>
<%@ page import="com.examen2rafa.ConexionBaseDatos" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar Paciente</title>
</head>
<body>
    <%
        String cedula = request.getParameter("cedula");
        String nombre = request.getParameter("nombre");
        String edad = request.getParameter("edad");
        String contacto = request.getParameter("contacto");
        String residencia = request.getParameter("residencia");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = ConexionBaseDatos.obtenerConexion();

            String query = "INSERT INTO pacientes (cedula, nombre, edad, contacto, residencia) VALUES (?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, cedula);
            stmt.setString(2, nombre);
            stmt.setInt(3, Integer.parseInt(edad));
            stmt.setString(4, contacto);
            stmt.setString(5, residencia);

            int rows = stmt.executeUpdate();

            if (rows > 0) {
                out.println("<script>alert('Paciente agregado exitosamente');</script>");
                out.println("<script>window.location='mantenimiento.jsp';</script>");
            } else {
                out.println("<script>alert('Error al agregar paciente');</script>");
                out.println("<script>window.location='mantenimiento.jsp';</script>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
</body>
</html>
