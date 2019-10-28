<%-- 
    Document   : rol3
    Created on : 18-oct-2019, 12:12:52
    Author     : Nathan
--%>

<%@page import="Modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Desafío nº1</title>
    </head>
    <body>
        <header>
            <h3>
                <%
                    Usuario u = (Usuario) session.getAttribute("userLogin");
                    out.println("¡Bienvenidx, " + u.getApellidos() + " " + u.getNombre() + "!");
                %>
            </h3>
        </header>
        <main>
            <form name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <h3>Entrar como:</h3>
                <input type="submit" id="prof" name="prof" value="Profesor">
                <input type="submit" id="adminAula" name="adminAula" value="Administrador de aula">
                 <input type="submit" id="adminAula" name="adminGen" value="Administrador general">
            </form>
        </main>
        <footer>
            <address>Nathaniel Lucas Olmo</address>
        </footer>
    </body>
</html>