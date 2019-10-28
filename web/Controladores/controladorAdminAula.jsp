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
    //********************** Modificar o eliminar aula ***********************//
    //************************************************************************//
    /**
     * Estos botones nos permiten modificar datos de las aulas o eliminarlas
     * desde el CRUD de aulas.
     */
    if (request.getParameter("botonCRUDaulas") != null) {
        if (request.getParameter("botonCRUDaulas").equals("Eliminar")) {
            ConexionEstatica.nueva();
            String codAula = request.getParameter("codAula");
            ConexionEstatica.Borrar_Aula(codAula);
            ListaAulas lisAulas = ConexionEstatica.obtenerAulas();
            session.setAttribute("listaAulas", lisAulas);
            ConexionEstatica.cerrarBD();
            response.sendRedirect("../Vistas/AdminAula/crudAulas.jsp");
        }
        if (request.getParameter("botonCRUDaulas").equals("Modificar")) {
            ConexionEstatica.nueva();
            int codAula = Integer.parseInt(request.getParameter("codAula"));
            String nombreAula = request.getParameter("nombreAula");
            ConexionEstatica.Update_Aula(codAula, nombreAula);
            ListaAulas lisAulas = ConexionEstatica.obtenerAulas();
            session.setAttribute("listaAulas", lisAulas);
            ConexionEstatica.cerrarBD();
            response.sendRedirect("../Vistas/AdminAula/crudAulas.jsp");
        }
    }

    //************************************************************************//
    //***************** Modificar o eliminar franja horaria ******************//
    //************************************************************************//
    /**
     * Estos botones nos permiten modificar datos de las franjas horarias o
     * eliminarlas desde el CRUD de franjas horarias.
     */
    //************************************************************************//
    //************************************************************************//
    //************************************************************************//
    //***************** Controlador de administrador de aula *****************//
    //************************************************************************//
    //************************************************************************//
    //************************************************************************//
%>
