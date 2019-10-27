<%-- 
    Document   : controladorAdminGeneral
    Created on : 25-oct-2019, 12:25:27
    Author     : Nathan
--%>

<%@page import="Modelo.*"%>
<%@page import="Auxiliar.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    //************************************************************************//
    //************************** Gestionar usuarios **************************//
    //************************************************************************//
    /**
     * Este botón nos lleva al CRUD de gestión de usuarios.
     */
    if (request.getParameter("gestUsuarios") != null) {
        ConexionEstatica.nueva();
        ListaUsuarios lisUsuarios = ConexionEstatica.obtenerPersonas();
        session.setAttribute("listaUsuarios", lisUsuarios);
        ConexionEstatica.cerrarBD();
        response.sendRedirect("../Vistas/crudUsuarios.jsp");
    }
    
    //************************************************************************//
    //***************************** Ver bitácora *****************************//
    //************************************************************************//
    /**
     * Este botón nos lleva al archivo bitácora en el que se guardan todas las
     * acciones de los usuarios.
     */
    if (request.getParameter("verBitacora") != null) {

    }
    
    //************************************************************************//
    //**************************** Añadir usuario ****************************//
    //************************************************************************//
    /**
     * Este botón nos lleva a la página de registro desde el CRUD de usuarios
     * para poder añadir nuevos usuarios sin necesidad de ir al inicio de
     * sesión.
     */
    if (request.getParameter("aniadirUser") != null) {
        response.sendRedirect("../Vistas/registro2.jsp");
    }
    
    //************************************************************************//
    //************************** Aceptar el registro *************************//
    //************************************************************************//
    /**
     * Este botón recoge los datos que hayamos introducido en el formulario de
     * registro, comprobando:
     * 1. Que se corresponden con los patrones establecidos.
     * 2. Que el correo no está registrado en la base de datos.
     * 3. Que las contraseñas coinciden.
     * Una vez hecha la comprobación, se introducen los datos en la base de
     * datos y nos envía de nuevo al CRUD de usuarios.
     */
    if (request.getParameter("aceptarRegistro2") != null) {
        String email = request.getParameter("email");
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String passw = request.getParameter("password1");
        if (passw.equals(request.getParameter("password2"))) {
            String codClave = Codificar.codifica(passw);
            ConexionEstatica.nueva();
            ConexionEstatica.Insertar_Usuario(nombre, apellidos, email, codClave);
            ListaUsuarios lisUsuarios = ConexionEstatica.obtenerPersonas();
            session.setAttribute("listaUsuarios", lisUsuarios);
            ConexionEstatica.cerrarBD();
        }
        response.sendRedirect("../Vistas/crudUsuarios.jsp");
    }
    
    //************************************************************************//
    //********************** Modificar o eliminar usuario ********************//
    //************************************************************************//
    /**
     * Estos botones nos permiten modificar datos del usuario o eliminarlo desde
     * el CRUD de usuarios.
     */
    if (request.getParameter("botonCRUDusers") != null) {
        if (request.getParameter("botonCRUDusers").equals("Eliminar")) {
            ConexionEstatica.nueva();
            String email = request.getParameter("email");
            ConexionEstatica.Borrar_Usuario(email);
            ListaUsuarios lisUsuarios = ConexionEstatica.obtenerPersonas();
            session.setAttribute("listaUsuarios", lisUsuarios);
            ConexionEstatica.cerrarBD();
            response.sendRedirect("../Vistas/crudUsuarios.jsp");
        }
        if (request.getParameter("botonCRUDusers").equals("Modificar")) {
            ConexionEstatica.nueva();
            String email = request.getParameter("email");
            String nombre = request.getParameter("nombre");
            String apellidos = request.getParameter("apellidos");
            ConexionEstatica.Update_Usuario(nombre, apellidos, email);
            ListaUsuarios lisUsuarios = ConexionEstatica.obtenerPersonas();
            session.setAttribute("listaUsuarios", lisUsuarios);
            ConexionEstatica.cerrarBD();
            response.sendRedirect("../Vistas/crudUsuarios.jsp");
        }
    }
    
    //************************************************************************//
    //************************************************************************//
    //************************************************************************//
    //***************** Controlador de administrador general *****************//
    //************************************************************************//
    //************************************************************************//
    //************************************************************************//
%>
