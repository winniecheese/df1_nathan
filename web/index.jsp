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
        <link rel="stylesheet" type="text/css" href="css/css.css">
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
        <header>
            <h3>Iniciar sesión</h3>
        </header>
        <main>
            <form id="formularioLogin" name="formulario" action="Controladores/controladorPrincipal.jsp" method="POST">
                <input type="text" id="email" name="email" placeholder="Escriba su e-mail...">
                <input type="password" id="password" name="password" placeholder="Escriba su contraseña...">
                <input type="submit" id="iniciarS" name="aceptarLogin" value="Iniciar sesión">
                <br>
                <a href="#" class="enlace" name="enlace" value="olvPassw">He olvidado mi contraseña</a>
                <br>
                <a href="Vistas/Principal/registro.jsp" class="enlace" name="enlace" value="registrar">¡Regístrate!</a>
            </form>
        </main>
        <footer>
            <address>Nathaniel Lucas Olmo</address>
        </footer>
    </body>
</html>
