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
        String codAula = (String) session.getAttribute("aula");
        int codFranja = Integer.parseInt(request.getParameter("codFranja"));
        Usuario u = (Usuario) session.getAttribute("userLogin");
        int codUser = u.getCod_user();
        String dia = (String) session.getAttribute("dia");
        ConexionEstatica.nueva();
        ConexionEstatica.Insertar_Reserva(codAula, codFranja, codUser, dia);
        ListaReservas lisReservas = ConexionEstatica.obtenerReservas(codAula, dia);
        session.setAttribute("listaReservas", lisReservas);
        ConexionEstatica.cerrarBD();
        int n = (Integer) session.getAttribute("rol");
        if (n == 1) {
            response.sendRedirect("../Vistas/Profesor/panelReservasProfesor.jsp");
        }
        if (n == 2) {
            response.sendRedirect("../Vistas/AdminAula/panelReservasAdminAula.jsp");
        }
        if (n == 3) {
            response.sendRedirect("../Vistas/AdminGeneral/panelReservasAdminGeneral.jsp");
        }
    }
    
    //************************************************************************//
    //************************** Ver disponibilidad **************************//
    //************************************************************************//
    /**
     * Este botón sirve para ver la disponibilidad de un aula.
     */
    if (request.getParameter("verDisponibilidad") != null) {
        String aula = (String) request.getParameter("seleAula");
        session.setAttribute("aula", aula);
        String dia = (String) request.getParameter("fecha");
        session.setAttribute("dia", dia);
        ConexionEstatica.nueva();
        ListaFranjas lisFranjas = ConexionEstatica.obtenerFranjas();
        ListaReservas lisReservas = ConexionEstatica.obtenerReservas(aula, dia);
        session.setAttribute("listaFranjas", lisFranjas);
        session.setAttribute("listaReservas", lisReservas);
        ConexionEstatica.cerrarBD();
        response.sendRedirect("../Vistas/AdminGeneral/panelReservasAdminGeneral.jsp");
    }
    
    //************************************************************************//
    //************************************************************************//
    //************************************************************************//
    //*********************** Controlador de profesor ************************//
    //************************************************************************//
    //************************************************************************//
    //************************************************************************//
%>

