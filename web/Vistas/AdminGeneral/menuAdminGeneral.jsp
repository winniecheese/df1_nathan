<%-- 
    Document   : menuAdminGeneral
    Created on : 23-oct-2019, 23:50:37
    Author     : Nathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Desafío nº1</title>
        <script>
            function goBack() {
                window.history.back();
            }
        </script>
    </head>
    <body>
        <form name="formulario" action="../Controladores/controlador.jsp" method="POST">
            <input type="submit" id="gestUsuarios" name="gestUsuarios" value="Gestionar usuarios">
            <br>
            <br>
            <input type="submit" id="verBitacora" name="verBitacora" value="Ver bitácora">
            <br>
            <br>
            <input type="button" name="volver" value="Volver" onclick="goBack()">
            <input type="submit" id="cerrarS" name="cerrarS" value="Cerrar sesión">
        </form>
    </body>
</html>
