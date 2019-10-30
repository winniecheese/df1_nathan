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
        <link rel="stylesheet" type="text/css" href="../../css/css-registro.css">
        <script>
            function goBack() {
                window.history.back();
            }
        </script>
    </head>
    <body>
        <header>
            <h3>Registro</h3>
        </header>
        <main>
            <form id="formulario" name="formulario" action="../../Controladores/controladorPrincipal.jsp" method="POST">
                <input type="email" id="email" class="registro" name="email" placeholder="e-mail">
                <input type="text" id="nombre" class="registro" name="nombre" placeholder="Nombre" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{1,50}">
                <input type="text" id="apellidos" class="registro" name="apellidos" placeholder="Apellidos" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{1,50}">
                <input type="password" id="password1" class="registro" name="password1" placeholder="Contraseña">
                <input type="password" id="password2" class="registro" name="password2" placeholder="Repita la contraseña">
                <input type="submit" id="aceptar" name="aceptarRegistro" value="Crear usuario">
                <input type="button" id="volver" name="volver" value="🡸" onclick="goBack()">
            </form>
        </main>
        <footer>
            <address>Nathaniel Lucas Olmo</address>
        </footer>
    </body>
</html>
