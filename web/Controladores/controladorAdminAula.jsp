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
    //**************************** Ver cuadrante *****************************//
    //************************************************************************//
    /**
     * Este botón nos lleva a ver el cuadrante del usuario que ha iniciado
     * sesión.
     */
    if (request.getParameter("verCuadrante") != null) {

    }
    
    //************************************************************************//
    //*************************** Gestionar aulas ****************************//
    //************************************************************************//
    /**
     * Este botón nos lleva al CRUD de gestión de aulas.
     */
    if (request.getParameter("gestAulas1") != null) {
        ConexionEstatica.nueva();
        ListaAulas lisAulas = ConexionEstatica.obtenerAulas();
        session.setAttribute("listaAulas", lisAulas);
        ConexionEstatica.cerrarBD();
        response.sendRedirect("../Vistas/AdminAula/crudAulas.jsp");
    }
    
    //************************************************************************//
    //********************** Gestionar franjas horarias **********************//
    //************************************************************************//
    /**
     * Este botón nos lleva al CRUD de gestión de franjas horarias.
     */
    if (request.getParameter("gestFranjas1") != null) {
        ConexionEstatica.nueva();
        ListaFranjas lisFranjas = ConexionEstatica.obtenerFranjas();
        session.setAttribute("listaFranjas", lisFranjas);
        ConexionEstatica.cerrarBD();
        response.sendRedirect("../Vistas/AdminAula/crudFranjas.jsp");
    }
    
    //************************************************************************//
    //************************************************************************//
    //************************************************************************//
    //***************** Controlador de administrador de aula *****************//
    //************************************************************************//
    //************************************************************************//
    //************************************************************************//
%>
