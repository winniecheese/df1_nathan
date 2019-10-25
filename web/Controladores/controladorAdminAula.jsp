<%-- 
    Document   : controladorAdminAula
    Created on : 25-oct-2019, 12:25:00
    Author     : Nathan
--%>

<%@page import="Modelo.*"%>
<%@page import="Auxiliar.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    //************************************************************************//
    //*********************** Volver a seleccionar rol ***********************//
    //************************************************************************//
    /**
     * Este botón nos hace volver al menú de selección de rol siempre que
     * dispongamos del rol número 2, que consiste en tener permisos de profesor
     * y de administrador de aula.
     */
    if (request.getParameter("volverAula") != null) {
        response.sendRedirect("../Vistas/rol2.jsp");
    }
%>
