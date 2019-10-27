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
        <title>Desafío nº1</title>
    </head>
    <body>
        
        <main>
            <form name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <select name="seleRol">
                    <option value="sel" selected disabled>Selecciona un rol</option>
                    <option value="prof">Profesor</option>
                    <option value="adminAula">Administrador de aula</option>
                </select>
                <input type="submit" id="aceptarRol" name="aceptarRol" value="Entrar">
            </form>
        </main>
        <footer>
            <address>Nathaniel Lucas Olmo</address>
        </footer>
    </body>
</html>
