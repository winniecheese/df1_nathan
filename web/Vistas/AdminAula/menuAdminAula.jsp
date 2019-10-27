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
        <title>Desafío nº1</title>
        <script>
            function goBack() {
                window.history.back();
            }
        </script>
    </head>
    <body>
        <header>
            <nav>
                <ul>
                    <li><a href="#">Forma de trabajo</a>
                        <ul>
                            <li><a href="../Profesor/panelReservas.jsp">Profesor</a></li>
                            <li><a href="../AdminAula/menuAdminAula.jsp">Administrador de aula</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <h3>Usuario: 
                <%
                    Usuario u = (Usuario) session.getAttribute("userLogin");
                    out.println(u.getApellidos() + " " + u.getNombre());
                %>
            </h3>
            <input type="submit" id="cerrarS" name="cerrarS" value="Cerrar sesión">
        </header>
        <main>
            <form name="formulario" action="../Controladores/controlador.jsp" method="POST">
                <input type="submit" id="verCuadrante" name="verCuadrante" value="Ver cuadrante">
                <br>
                <br>
                <input type="submit" id="gestAulas" name="gestAulas" value="Gestionar aulas">
                <br>
                <br>
                <input type="submit" id="gestFranjas" name="gestFranjas" value="Gestionar franjas horarias">
                <br>
                <br>
                <input type="button" name="volver" value="Volver" onclick="goBack()">
                <input type="submit" id="cerrarS" name="cerrarS" value="Cerrar sesión">
            </form>
        </main>
            <footer>
                <address>Nathaniel Lucas Olmo</address>
            </footer>
    </body>
</html>
