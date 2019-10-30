<%-- 
    Document   : menuAdminAula
    Created on : 23-oct-2019, 23:50:53
    Author     : Nathan
--%>

<%@page import="Modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="60;url=../../index.jsp">
        <title>Desafío nº1</title>
        <script>
            function goBack() {
                window.history.back();
            }
        </script>
    </head>
    <body>
        <header>
            <nav id="menuV">
                <ul>
                    <li><a href="#">Forma de trabajo</a>
                        <ul>
                            <li><a href="panelReservasAdminGeneral.jsp">Profesor</a></li>
                            <li><a href="menuAdminAula2.jsp">Administrador de aula</a></li>
                            <li><a href="menuAdminGeneral.jsp">Administrador general</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <h3 id="titulo">
                <%
                    Usuario u = (Usuario) session.getAttribute("userLogin");
                    out.println(u.getNombre() + " " + u.getApellidos() + ":");
                %>administrador general
            </h3>
            <form id="formularioHeader" name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <input type="submit" id="editarPerfil" name="editarPerfil" value="웃" title="Editar perfil">
                <input type="submit" id="cerrarS" name="cerrarS" value="☠" title="Cerrar sesión">
            </form>
        </header>
        <main>
            <form name="formulario" action="../../Controladores/controladorAdminGeneral.jsp" method="POST">
                <input type="submit" id="verCuadrante" name="verCuadrante" value="Ver cuadrante">
                <br>
                <br>
                <input type="submit" id="gestAulas2" name="gestAulas2" value="Gestionar aulas">
                <br>
                <br>
                <input type="submit" id="gestFranjas2" name="gestFranjas2" value="Gestionar franjas horarias">
                <br>
                <br>
                <input type="button" name="volver" value="Volver" onclick="goBack()">
            </form>
        </main>
        <footer>
            <address>Nathaniel Lucas Olmo</address>
        </footer>
    </body>
</html>
