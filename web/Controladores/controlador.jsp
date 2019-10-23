<%-- 
    Document   : controlador
    Created on : 18-oct-2019, 11:10:14
    Author     : Nathan
--%>

<%@page import="Modelo.*"%>
<%@page import="Auxiliar.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (request.getParameter("aceptarLogin") != null) {
        String email = request.getParameter("email");
        String passw = request.getParameter("password");
        ConexionEstatica.nueva();
        Usuario u = ConexionEstatica.existeUsuario(email, passw);
        ConexionEstatica.cerrarBD();
        if (u == null) {
            String mens = "Has fallao, campeón.";
            session.setAttribute("failLogin", mens);
            response.sendRedirect("../index.jsp");
        }
        if (u != null) {
            session.setAttribute("userLogin", u);
            if (u.ctosRoles() == 1) {
                response.sendRedirect("../Vistas/panelReservas.jsp");
            }
            if (u.ctosRoles() >= 2) {
                response.sendRedirect("../Vistas/rol.jsp");
            }
        }
    }

    //************************************************************************//
    if (request.getParameter("cerrarS") != null) {
        session.invalidate();
        response.sendRedirect("../index.jsp");
    }

    //************************************************************************//
    if (request.getParameter("volver") != null) {
        session.invalidate();
        response.sendRedirect("../index.jsp");
    }

    //************************************************************************//
    if (request.getParameter("aceptarRegistro") != null) {
        String email = request.getParameter("email");
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String passw = request.getParameter("password1");
        if (passw.equals(request.getParameter("password2"))) {
            ConexionEstatica.nueva();
            ConexionEstatica.Insertar_Usuario(email, nombre, apellidos, passw);
            ConexionEstatica.cerrarBD();
        }
        response.sendRedirect("../Vistas/registro.jsp");
    }

    //************************************************************************//
    if (request.getParameter("aceptarRol") != null) {
        if (request.getParameter("seleRol").equals("prof")) {
            response.sendRedirect("../Vistas/panelReservas.jsp");
        }
        if (request.getParameter("seleRol").equals("adminGen")) {
            response.sendRedirect("");
        }
        if (request.getParameter("seleRol").equals("adminAula")) {
            response.sendRedirect("");
        }
    }
%>