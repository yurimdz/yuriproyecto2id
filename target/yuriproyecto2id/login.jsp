<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<% 
String entrada_usuario = request.getParameter("username");
String entrada_contrasena = request.getParameter("password");

String URL = "jdbc:mysql://localhost:3306/sistema_pacientes?useUnicode=true&characterEncoding=utf8";
String nombreUsuario = "root";
String nombreClave = "filadelfia26";

Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(URL, nombreUsuario, nombreClave);

        String sql = "SELECT * FROM usuarios WHERE login = ? AND clave = ?";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, entrada_usuario);
        stmt.setString(2, entrada_contrasena);
        rs = stmt.executeQuery();

        if (rs.next()) {
            response.sendRedirect("menu.jsp");
        } else {
            out.println("<div style='color: #D8000C; background-color: #FFBABA; border: 1px solid #D8000C; padding: 10px; margin-top: 20px; text-align: center; font-family: Arial, sans-serif; border-radius: 5px;'>Usuario o contraseña incorrectos</div>");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
