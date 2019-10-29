<%-- 
    Document   : controladorProfesor
    Created on : 25-oct-2019, 12:21:29
    Author     : Nathan
--%>

<%@page import="Modelo.*"%>
<%@page import="Auxiliar.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    //************************************************************************//
    //**************************** Reservar aula *****************************//
    //************************************************************************//
    /**
     * Al pulsar el botón Libre, se hace una reserva de aula, con su día y su
     * franja horaria, así como con el código del usuario que ha hecho la
     * reserva.
     */
    if (request.getParameter("libre") != null) {
        int codAula = Integer.parseInt(request.getParameter("seleAula"));
        int codFranja = Integer.parseInt(request.getParameter("codFranja"));
        Usuario u = (Usuario) session.getAttribute("userLogin");
        int codUser = Integer.parseInt(request.getParameter("seleAula"));
    }
    
    //************************************************************************//
    //************************************************************************//
    //************************************************************************//
    //*********************** Controlador de profesor ************************//
    //************************************************************************//
    //************************************************************************//
    //************************************************************************//
%>

