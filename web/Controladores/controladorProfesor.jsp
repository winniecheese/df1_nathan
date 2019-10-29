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
        String codAula = request.getParameter("seleAula");
        int codFranja = Integer.parseInt(request.getParameter("codFranja"));
        Usuario u = (Usuario) session.getAttribute("userLogin");
        int codUser = u.getCod_user();
        String dia = (String) request.getParameter("fecha");
        ConexionEstatica.nueva();
        ConexionEstatica.Insertar_Reserva(codAula, codFranja, codUser, dia);
        ListaReservas lisReservas = ConexionEstatica.obtenerReservas(codUser);
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
    //************************************************************************//
    //************************************************************************//
    //*********************** Controlador de profesor ************************//
    //************************************************************************//
    //************************************************************************//
    //************************************************************************//
%>

