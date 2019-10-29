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
        <meta http-equiv="refresh" content="60;url=../../index.jsp">
        <title>Desafío nº1</title>
    </head>
    <body>
        <header>
            <h3>
                <%
                    Usuario u = (Usuario) session.getAttribute("userLogin");
                    out.println("¡Bienvenidx, " + u.getNombre() + " " + u.getApellidos() + "!");
                %>
            </h3>
        </header>
        <main>
            <form name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <h3>Entrar como:</h3>
                <input type="submit" id="prof2" name="prof2" value="Profesor">
                <input type="submit" id="adminAula2" name="adminAula2" value="Administrador de aula">
                <input type="submit" id="adminGen" name="adminGen" value="Administrador general">
            </form>
        </main>
        <footer>
            <address>Nathaniel Lucas Olmo</address>
        </footer>
    </body>
</html>
