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
        <h1>Elige un rol</h1>
        <form name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
            <select name="seleRol">
                <option value="sel" selected disabled>Selecciona un rol</option>
                <option value="prof">Profesor</option>
                <option value="adminAula">Administrador de aula</option>
            </select>
            <br>
            <br>
            <input type="submit" id="aceptarRol" name="aceptarRol" value="Entrar">
            <input type="submit" id="cerrarS" name="cerrarS" value="Cerrar sesión">
        </form>
    </body>
</html>
