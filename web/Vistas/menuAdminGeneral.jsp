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
    </head>
    <body>
        <form name="formulario" action="../Controladores/controlador.jsp" method="POST">
            <input type="submit" id="verCuadrante" name="verCuadrante" value="Ver cuadrante">
            <br>
            <br>
            <input type="submit" id="gestAulas" name="gestAulas" value="Gestionar aulas">
            <br>
            <br>
            <input type="submit" id="gestFranjas" name="gestFranjas" value="Gestionar franjas horarias">
            <br>
            <br>
            <input type="submit" id="volverGen" name="volverGen" value="Volver">
            <input type="submit" id="cerrarS" name="cerrarS" value="Cerrar sesión">
        </form>
    </body>
</html>
