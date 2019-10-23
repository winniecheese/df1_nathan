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
        String codClave = Codificar.codifica(passw);
        ConexionEstatica.nueva();
        Usuario u = ConexionEstatica.existeUsuario(email, codClave);
        ConexionEstatica.cerrarBD();
        if (u != null) {
            int n = u.getRol();
            session.setAttribute("userLogin", u);
            session.setAttribute("rol", n);
            if (n == 1) {
                ConexionEstatica.nueva();
                ListaAulas lisAulas = ConexionEstatica.obtenerAulas();
                ListaFranjas lisFranjas = ConexionEstatica.obtenerFranjas();
                ConexionEstatica.cerrarBD();
                session.setAttribute("listaAulas", lisAulas);
                session.setAttribute("listaFranjas", lisFranjas);
                response.sendRedirect("../Vistas/panelReservas.jsp");
            }
            if (n == 2) {
                response.sendRedirect("../Vistas/rol2.jsp");
            }
            if (n == 3) {
                response.sendRedirect("../Vistas/rol3.jsp");
            }
        } else {
            response.sendRedirect("../index.jsp");
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
    if (request.getParameter("volverAula") != null) {
        response.sendRedirect("../Vistas/rol2.jsp");
    }

    //************************************************************************//
    if (request.getParameter("volverGen") != null) {
        response.sendRedirect("../Vistas/rol3.jsp");
    }

    //************************************************************************//
    if (request.getParameter("aceptarRegistro") != null) {
        int n = 3;
        String email = request.getParameter("email");
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String passw = request.getParameter("password1");
        if (passw.equals(request.getParameter("password2"))) {
            String codClave = Codificar.codifica(passw);
            ConexionEstatica.nueva();
            ConexionEstatica.Insertar_Usuario(n, nombre, apellidos, email, codClave);
            ConexionEstatica.cerrarBD();
        }
        response.sendRedirect("../Vistas/registro.jsp");
    }

    //************************************************************************//
    if (request.getParameter("aceptarRol") != null) {
        if (request.getParameter("seleRol").equals("prof")) {
            response.sendRedirect("../Vistas/panelReservas.jsp");
        }
        if (request.getParameter("seleRol").equals("adminAula")) {
            response.sendRedirect("../Vistas/menuAdminAula.jsp");
        }
        if (request.getParameter("seleRol").equals("adminGen")) {
            response.sendRedirect("../Vistas/menuAdminGeneral.jsp");
        }
    }
%>