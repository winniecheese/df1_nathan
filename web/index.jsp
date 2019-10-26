<%-- 
    Document   : index
    Created on : 17-oct-2019, 8:46:28
    Author     : Nathan
--%>

<%@page import="Modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Desafío nº1</title>
        <script src="jquery-3.4.1.min.js"></script>
        <!--<script>
            $(document).ready(function () {
                $("#aceptarLogin").click(function () {
                    var mail = $("#email").val();
                    var passw = $("#password").val();
                    if (mail === null || passw === null) {
                        alert("Tienes por ahí algún campo vacío");
                    }
                });
            });
            </script>-->
    </head>
    <body>
        <h3>Iniciar sesión</h3>
        <form name="formulario" action="Controladores/controladorPrincipal.jsp" method="POST">
            <label for="usuario">e-mail: </label>
            <input type="text" id="email" name="email" placeholder="Escriba su e-mail...">
            <br>
            <br>
            <label for="password">Contraseña: </label>
            <input type="password" id="password" name="password" placeholder="Escriba su contraseña...">
            <br>
            <br>
            <input type="submit" name="aceptarLogin" value="Iniciar sesión">
            <br>
            <br>
            <a href="Vistas/registro.jsp" name="enlace" value="registrar">¡Regístrate!</a>
        </form>
    </body>
</html>
