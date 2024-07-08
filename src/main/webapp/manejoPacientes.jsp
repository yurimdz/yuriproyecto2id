<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    String action = request.getParameter("action");
    String cedula = request.getParameter("cedula");
    String nombre = request.getParameter("nombre");
    String edad = request.getParameter("edad");
    String contacto = request.getParameter("contacto");
    String residencia = request.getParameter("residencia");

    String URL = "jdbc:mysql://localhost:3306/sistema_pacientes?useUnicode=true&characterEncoding=utf8";
    String usuarioDB = "root";
    String claveDB = "filadelfia26";

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(URL, usuarioDB, claveDB);

        if ("Agregar".equals(action)) {
            String sql = "INSERT INTO pacientes (cedula, nombre, edad, contacto, residencia) VALUES (?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cedula);
            stmt.setString(2, nombre);
            stmt.setInt(3, Integer.parseInt(edad));
            stmt.setString(4, contacto);
            stmt.setString(5, residencia);
            stmt.executeUpdate();
        } else if ("Editar".equals(action)) {
            String sql = "UPDATE pacientes SET nombre = ?, edad = ?, contacto = ?, residencia = ? WHERE cedula = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, nombre);
            stmt.setInt(2, Integer.parseInt(edad));
            stmt.setString(3, contacto);
            stmt.setString(4, residencia);
            stmt.setString(5, cedula);
            stmt.executeUpdate();
        } else if ("Eliminar".equals(action)) {
            String sql = "DELETE FROM pacientes WHERE cedula = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cedula);
            stmt.executeUpdate();
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }

    response.sendRedirect("mantenimiento.jsp");
%>
