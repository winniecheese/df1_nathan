<%-- 
    Document   : controladorPrincipal
    Created on : 18-oct-2019, 11:10:14
    Author     : Nathan
--%>

<%@page import="Modelo.*"%>
<%@page import="Auxiliar.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    //************************************************************************//
    //************************** Aceptar el login ****************************//
    //************************************************************************//
    /**
     * Al pulsar el botón de iniciar sesión, comprobamos si el usuario existe o
     * no. Si existe, introducimos los datos en la sesión userLogin y
     * comprobamos el rol que tiene dicho usuario. Dependiendo de ese rol, nos
     * lleva a una página o a otra.
     */
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
                response.sendRedirect("../Vistas/Profesor/panelReservasProfesor.jsp");
            }
            if (n == 2) {
                response.sendRedirect("../Vistas/Principal/rol2.jsp");
            }
            if (n == 3) {
                response.sendRedirect("../Vistas/Principal/rol3.jsp");
            }
        } else {
            response.sendRedirect("../index.jsp");
        }
    }

    //************************************************************************//
    //************************* Aceptar el registro **************************//
    //************************************************************************//
    /**
     * Este botón recoge los datos que hayamos introducido en el formulario de
     * registro, comprobando: 1. Que se corresponden con los patrones
     * establecidos. 2. Que el correo no está registrado en la base de datos. 3.
     * Que las contraseñas coinciden. Una vez hecha la comprobación, se
     * introducen los datos en la base de datos.
     */
    if (request.getParameter("aceptarRegistro") != null) {
        String email = request.getParameter("email");
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String passw = request.getParameter("password1");
        if (passw.equals(request.getParameter("password2"))) {
            String codClave = Codificar.codifica(passw);
            ConexionEstatica.nueva();
            ConexionEstatica.Insertar_Usuario(nombre, apellidos, email, codClave);
            ConexionEstatica.cerrarBD();
        }
        response.sendRedirect("../Vistas/Principal/registro.jsp");
    }

    //************************************************************************//
    //**************************** Cerrar sesión *****************************//
    //************************************************************************//
    /**
     * Este botón está en todas las páginas y sirve para cerrar sesión.
     */
    if (request.getParameter("cerrarS") != null) {
        session.invalidate();
        response.sendRedirect("../index.jsp");
    }

    //************************************************************************//
    //*************************** Seleccionar rol ****************************//
    //************************************************************************//
    /**
     * Una vez hayamos iniciado sesión, se iniciará una página en la que
     * seleccionaremos el rol con el que queremos trabajar. Dependiendo del que
     * elijamos, nos llevará a una paǵina o a otra pulsando el botón Entrar.
     */
    if (request.getParameter("prof1") != null) {
        ConexionEstatica.nueva();
        ListaAulas lisAulas = ConexionEstatica.obtenerAulas();
        ListaFranjas lisFranjas = ConexionEstatica.obtenerFranjas();
        ConexionEstatica.cerrarBD();
        session.setAttribute("listaAulas", lisAulas);
        session.setAttribute("listaFranjas", lisFranjas);
        response.sendRedirect("../Vistas/AdminAula/panelReservasAdminAula.jsp");
    }
    if (request.getParameter("adminAula1") != null) {
        response.sendRedirect("../Vistas/AdminAula/menuAdminAula.jsp");
    }
    if (request.getParameter("adminGen") != null) {
        response.sendRedirect("../Vistas/AdminGeneral/menuAdminGeneral.jsp");
    }

    //************************************************************************//
    //************************************************************************//
    //************************************************************************//
    //************************ Controlador principal *************************//
    //************************************************************************//
    //************************************************************************//
    //************************************************************************//
%>
