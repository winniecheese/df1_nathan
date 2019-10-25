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
    //************************* Aceptar el registro **************************//
    //************************************************************************//
    /**
     * Este botón recoge los datos que hayamos introducido en el formulario de
     * registro, comprobando:
     * 1. Que se corresponden con los patrones establecidos.
     * 2. Que el correo no está registrado en la base de datos.
     * 3. Que las contraseñas coinciden.
     * Una vez hecha la comprobación, se introducen los datos en la base de
     * datos.
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
        response.sendRedirect("../Vistas/registro.jsp");
    }

    //************************************************************************//
    //************************* Volver del registro **************************//
    //************************************************************************//
    /**
     * Este botón, una vez dentro de la página de registro, nos hace volver a la
     * página de inicio de sesión cuando lo deseemos.
     */
    if (request.getParameter("volverRegistro") != null) {
        session.invalidate();
        response.sendRedirect("../index.jsp");
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
    if (request.getParameter("aceptarRol") != null) {
        if (request.getParameter("seleRol").equals("prof")) {
            ConexionEstatica.nueva();
            ListaAulas lisAulas = ConexionEstatica.obtenerAulas();
            ListaFranjas lisFranjas = ConexionEstatica.obtenerFranjas();
            ConexionEstatica.cerrarBD();
            session.setAttribute("listaAulas", lisAulas);
            session.setAttribute("listaFranjas", lisFranjas);
            response.sendRedirect("../Vistas/panelReservas.jsp");
        }
        if (request.getParameter("seleRol").equals("adminAula")) {
            response.sendRedirect("../Vistas/menuAdminAula.jsp");
        }
        if (request.getParameter("seleRol").equals("adminGen")) {
            response.sendRedirect("../Vistas/menuAdminGeneral.jsp");
        }
    }
    
    //************************************************************************//
    //************************************************************************//
    //************************************************************************//
    //************************ Controlador principal *************************//
    //************************************************************************//
    //************************************************************************//
    //************************************************************************//
    
    //************************************************************************//
    if (request.getParameter("volverAula") != null) {
        response.sendRedirect("../Vistas/rol2.jsp");
    }

    //************************************************************************//
    if (request.getParameter("volverGen") != null) {
        response.sendRedirect("../Vistas/rol3.jsp");
    }

    //************************************************************************//
    if (request.getParameter("verCuadrante") != null) {

    }

    //************************************************************************//
    if (request.getParameter("gestAulas") != null) {
        ConexionEstatica.nueva();
        ListaAulas lisAulas = ConexionEstatica.obtenerAulas();
        session.setAttribute("listaAulas", lisAulas);
        ConexionEstatica.cerrarBD();
        response.sendRedirect("../Vistas/crudAulas.jsp");
    }

    //************************************************************************//
    if (request.getParameter("gestFranjas") != null) {
        ConexionEstatica.nueva();
        ListaFranjas lisFranjas = ConexionEstatica.obtenerFranjas();
        session.setAttribute("listaFranjas", lisFranjas);
        ConexionEstatica.cerrarBD();
        response.sendRedirect("../Vistas/crudFranjas.jsp");
    }

    //************************************************************************//
    if (request.getParameter("gestUsuarios") != null) {
        ConexionEstatica.nueva();
        ListaUsuarios lisUsuarios = ConexionEstatica.obtenerPersonas();
        session.setAttribute("listaUsuarios", lisUsuarios);
        ConexionEstatica.cerrarBD();
        response.sendRedirect("../Vistas/crudUsuarios.jsp");
    }

    //************************************************************************//
    if (request.getParameter("verBitacora") != null) {

    }

    //************************************************************************//
    if (request.getParameter("aniadirUser") != null) {
        response.sendRedirect("../Vistas/registro2.jsp");
    }

    //************************************************************************//
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
    if (request.getParameter("volverRegistro2") != null) {
        response.sendRedirect("../Vistas/crudUsuarios.jsp");
    }

    //************************************************************************//
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
%>
