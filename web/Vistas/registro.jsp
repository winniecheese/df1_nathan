<%-- 
    Document   : registro
    Created on : 18-oct-2019, 12:07:01
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
        <h3>Registro</h3>
        <form name="formulario" action="../Controladores/controlador.jsp" method="POST">
            <label for="email">e-mail: </label>
            <input type="text" id="email" name="email">
            <br>
            <br>
            <label for="nombre">Nombre: </label>
            <input type="text" id="nombre" name="nombre">
            <br>
            <br>
            <label for="apellidos">Apellidos </label>
            <input type="text" id="apellidos" name="apellidos">
            <br>
            <br>
            <label for="password1">Contraseña: </label>
            <input type="password" id="password1" name="password1">
            <br>
            <br>
            <label for="password2">Repite la contraseña: </label>
            <input type="password" id="password2" name="password2">
            <br>
            <br>
            <input type="submit" name="aceptarRegistro" value="Aceptar">
            <input type="submit" name="volver" value="Volver">
        </form>
    </body>
</html>
