<%-- 
    Document   : rol2
    Created on : 23-oct-2019, 20:45:35
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
        <link rel="stylesheet" type="text/css" href="../../css/css-rol2.css">
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
            <form id="formulario" name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <h3 id="entrarComo">Entrar como:</h3>
                <input type="submit" id="prof" name="prof1" value="Profesor">
                <input type="submit" id="adminAula" name="adminAula1" value="Administrador de aula">
            </form>
        </main>
        <footer>
            <address>Nathaniel Lucas Olmo</address>
        </footer>
    </body>
</html>
