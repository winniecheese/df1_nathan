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
        <meta http-equiv="refresh" content="60;url=../../index.jsp">
        <title>Desafío nº1</title>
        <script>
            function goBack() {
                window.history.back();
            }
        </script>
    </head>
    <body>
        <h3>Registro</h3>
        <form name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
            <label for="email">e-mail: </label>
            <input type="email" id="email" name="email">
            <br>
            <br>
            <label for="nombre">Nombre: </label>
            <input type="text" id="nombre" name="nombre" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{1,50}">
            <br>
            <br>
            <label for="apellidos">Apellidos </label>
            <input type="text" id="apellidos" name="apellidos" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{1,50}">
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
            <input type="button" name="volver" value="Volver" onclick="goBack()">
        </form>
    </body>
</html>
